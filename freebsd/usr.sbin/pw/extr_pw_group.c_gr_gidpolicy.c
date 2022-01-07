
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct userconf {int min_gid; int max_gid; scalar_t__ reuse_gids; } ;
struct group {int gr_gid; } ;
struct bitmap {int dummy; } ;
typedef scalar_t__ intmax_t ;
typedef scalar_t__ gid_t ;
struct TYPE_2__ {scalar_t__ checkduplicate; } ;


 int ENDGRENT () ;
 int EX_DATAERR ;
 int EX_SOFTWARE ;
 struct group* GETGRENT () ;
 struct group* GETGRGID (scalar_t__) ;
 int SETGRENT () ;
 struct bitmap bm_alloc (int) ;
 int bm_dealloc (struct bitmap*) ;
 int bm_firstunset (struct bitmap*) ;
 int bm_isset (struct bitmap*,scalar_t__) ;
 scalar_t__ bm_lastset (struct bitmap*) ;
 int bm_setbit (struct bitmap*,int) ;
 TYPE_1__ conf ;
 int errx (int ,char*,...) ;

__attribute__((used)) static gid_t
gr_gidpolicy(struct userconf * cnf, intmax_t id)
{
 struct group *grp;
 struct bitmap bm;
 gid_t gid = (gid_t) - 1;




 if (id > 0) {
  gid = (gid_t) id;

  if ((grp = GETGRGID(gid)) != ((void*)0) && conf.checkduplicate)
   errx(EX_DATAERR, "gid `%ju' has already been allocated",
       (uintmax_t)grp->gr_gid);
  return (gid);
 }






 if (cnf->min_gid >= cnf->max_gid) {
  cnf->min_gid = 1000;
  cnf->max_gid = 32000;
 }
 bm = bm_alloc(cnf->max_gid - cnf->min_gid + 1);




 SETGRENT();
 while ((grp = GETGRENT()) != ((void*)0))
  if ((gid_t)grp->gr_gid >= (gid_t)cnf->min_gid &&
      (gid_t)grp->gr_gid <= (gid_t)cnf->max_gid)
   bm_setbit(&bm, grp->gr_gid - cnf->min_gid);
 ENDGRENT();




 if (cnf->reuse_gids)
  gid = (gid_t) (bm_firstunset(&bm) + cnf->min_gid);
 else {
  gid = (gid_t) (bm_lastset(&bm) + 1);
  if (!bm_isset(&bm, gid))
   gid += cnf->min_gid;
  else
   gid = (gid_t) (bm_firstunset(&bm) + cnf->min_gid);
 }




 if (gid < cnf->min_gid || gid > cnf->max_gid)
  errx(EX_SOFTWARE, "unable to allocate a new gid - range fully "
      "used");
 bm_dealloc(&bm);
 return (gid);
}
