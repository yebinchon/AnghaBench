
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ uid_t ;
struct userconf {int min_uid; int max_uid; scalar_t__ reuse_uids; } ;
struct passwd {scalar_t__ pw_uid; } ;
struct bitmap {int dummy; } ;
typedef scalar_t__ intmax_t ;
struct TYPE_2__ {scalar_t__ checkduplicate; } ;


 int ENDPWENT () ;
 int EX_DATAERR ;
 int EX_SOFTWARE ;
 struct passwd* GETPWENT () ;
 struct passwd* GETPWUID (scalar_t__) ;
 int SETPWENT () ;
 struct bitmap bm_alloc (int) ;
 int bm_dealloc (struct bitmap*) ;
 scalar_t__ bm_firstunset (struct bitmap*) ;
 scalar_t__ bm_lastset (struct bitmap*) ;
 int bm_setbit (struct bitmap*,scalar_t__) ;
 TYPE_1__ conf ;
 int errx (int ,char*,...) ;

__attribute__((used)) static uid_t
pw_uidpolicy(struct userconf * cnf, intmax_t id)
{
 struct passwd *pwd;
 struct bitmap bm;
 uid_t uid = (uid_t) - 1;




 if (id >= 0) {
  uid = (uid_t) id;

  if ((pwd = GETPWUID(uid)) != ((void*)0) && conf.checkduplicate)
   errx(EX_DATAERR, "uid `%ju' has already been allocated",
       (uintmax_t)pwd->pw_uid);
  return (uid);
 }





 if (cnf->min_uid >= cnf->max_uid) {

  cnf->min_uid = 1000;
  cnf->max_uid = 32000;
 }
 bm = bm_alloc(cnf->max_uid - cnf->min_uid + 1);




 SETPWENT();
 while ((pwd = GETPWENT()) != ((void*)0))
  if (pwd->pw_uid >= (uid_t) cnf->min_uid && pwd->pw_uid <= (uid_t) cnf->max_uid)
   bm_setbit(&bm, pwd->pw_uid - cnf->min_uid);
 ENDPWENT();




 if (cnf->reuse_uids || (uid = (uid_t) (bm_lastset(&bm) + cnf->min_uid + 1)) > cnf->max_uid)
  uid = (uid_t) (bm_firstunset(&bm) + cnf->min_uid);




 if (uid < cnf->min_uid || uid > cnf->max_uid)
  errx(EX_SOFTWARE, "unable to allocate a new uid - range fully used");
 bm_dealloc(&bm);
 return (uid);
}
