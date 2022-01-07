
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int u_long ;
typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ dqb_ihardlimit; scalar_t__ dqb_curinodes; scalar_t__ dqb_isoftlimit; scalar_t__ dqb_itime; scalar_t__ dqb_bhardlimit; scalar_t__ dqb_curblocks; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_btime; } ;
struct quotause {char* fsname; TYPE_1__ dqblk; struct quotause* next; } ;


 scalar_t__ dbtob (scalar_t__) ;
 int free (char*) ;
 struct quotause* getprivs (int ,int) ;
 int heading (int,int ,char const*,char*) ;
 scalar_t__ hflag ;
 int printf (char*,...) ;
 int prthumanval (int,scalar_t__) ;
 scalar_t__ qflag ;
 scalar_t__ rflag ;
 int showrawquotas (int,int ,struct quotause*) ;
 int strlen (char*) ;
 int time (scalar_t__*) ;
 char* timeprt (scalar_t__) ;
 int vflag ;

__attribute__((used)) static int
showquotas(int type, u_long id, const char *name)
{
 struct quotause *qup;
 struct quotause *quplist;
 const char *msgi, *msgb;
 const char *nam;
 char *bgrace = ((void*)0), *igrace = ((void*)0);
 int lines = 0, overquota = 0;
 static time_t now;

 if (now == 0)
  time(&now);
 quplist = getprivs(id, type);
 for (qup = quplist; qup; qup = qup->next) {
  msgi = ((void*)0);
  if (qup->dqblk.dqb_ihardlimit &&
      qup->dqblk.dqb_curinodes >= qup->dqblk.dqb_ihardlimit) {
   overquota++;
   msgi = "File limit reached on";
  }
  else if (qup->dqblk.dqb_isoftlimit &&
      qup->dqblk.dqb_curinodes >= qup->dqblk.dqb_isoftlimit) {
   overquota++;
   if (qup->dqblk.dqb_itime > now)
    msgi = "In file grace period on";
   else
    msgi = "Over file quota on";
  }
  msgb = ((void*)0);
  if (qup->dqblk.dqb_bhardlimit &&
      qup->dqblk.dqb_curblocks >= qup->dqblk.dqb_bhardlimit) {
   overquota++;
   msgb = "Block limit reached on";
  }
  else if (qup->dqblk.dqb_bsoftlimit &&
      qup->dqblk.dqb_curblocks >= qup->dqblk.dqb_bsoftlimit) {
   overquota++;
   if (qup->dqblk.dqb_btime > now)
    msgb = "In block grace period on";
   else
    msgb = "Over block quota on";
  }
  if (rflag) {
   showrawquotas(type, id, qup);
   continue;
  }
  if (!vflag &&
      qup->dqblk.dqb_isoftlimit == 0 &&
      qup->dqblk.dqb_ihardlimit == 0 &&
      qup->dqblk.dqb_bsoftlimit == 0 &&
      qup->dqblk.dqb_bhardlimit == 0)
   continue;
  if (qflag) {
   if ((msgi != ((void*)0) || msgb != ((void*)0)) &&
       lines++ == 0)
    heading(type, id, name, "");
   if (msgi != ((void*)0))
    printf("\t%s %s\n", msgi, qup->fsname);
   if (msgb != ((void*)0))
    printf("\t%s %s\n", msgb, qup->fsname);
   continue;
  }
  if (!vflag &&
      qup->dqblk.dqb_curblocks == 0 &&
      qup->dqblk.dqb_curinodes == 0)
   continue;
  if (lines++ == 0)
   heading(type, id, name, "");
  nam = qup->fsname;
  if (strlen(qup->fsname) > 15) {
   printf("%s\n", qup->fsname);
   nam = "";
  }
  printf("%-15s", nam);
  if (hflag) {
   prthumanval(7, dbtob(qup->dqblk.dqb_curblocks));
   printf("%c", (msgb == ((void*)0)) ? ' ' : '*');
   prthumanval(7, dbtob(qup->dqblk.dqb_bsoftlimit));
   prthumanval(7, dbtob(qup->dqblk.dqb_bhardlimit));
  } else {
   printf(" %7ju%c %7ju %7ju",
       (uintmax_t)dbtob(qup->dqblk.dqb_curblocks)
    / 1024,
       (msgb == ((void*)0)) ? ' ' : '*',
       (uintmax_t)dbtob(qup->dqblk.dqb_bsoftlimit)
    / 1024,
       (uintmax_t)dbtob(qup->dqblk.dqb_bhardlimit)
    / 1024);
  }
  if (msgb != ((void*)0))
   bgrace = timeprt(qup->dqblk.dqb_btime);
  if (msgi != ((void*)0))
   igrace = timeprt(qup->dqblk.dqb_itime);
  printf("%8s %6ju%c %6ju %6ju%8s\n"
   , (msgb == ((void*)0)) ? "" : bgrace
   , (uintmax_t)qup->dqblk.dqb_curinodes
   , (msgi == ((void*)0)) ? ' ' : '*'
   , (uintmax_t)qup->dqblk.dqb_isoftlimit
   , (uintmax_t)qup->dqblk.dqb_ihardlimit
   , (msgi == ((void*)0)) ? "" : igrace
  );
  if (msgb != ((void*)0))
   free(bgrace);
  if (msgi != ((void*)0))
   free(igrace);
 }
 if (!qflag && !rflag && lines == 0)
  heading(type, id, name, "none");
 return (overquota);
}
