
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_2__ {scalar_t__ dqb_curblocks; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_curinodes; scalar_t__ dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_bhardlimit; scalar_t__ dqb_itime; scalar_t__ dqb_btime; } ;
struct quotause {int flags; TYPE_1__ dqblk; struct quotause* next; int fsname; } ;
struct dqblk {scalar_t__ dqb_curblocks; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_curinodes; scalar_t__ dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_bhardlimit; } ;
typedef int line2 ;
typedef int line1 ;
typedef int FILE ;


 int BUFSIZ ;
 int FOUND ;
 void* cvtblkval (int ,char,char*) ;
 void* cvtinoval (int ,char,char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ hflag ;
 int sscanf (char*,char*,int *,char*,int *,char*,int *,char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;
 int warnx (char*,...) ;

int
readprivs(struct quotause *quplist, char *inname)
{
 struct quotause *qup;
 FILE *fd;
 uintmax_t hardlimit, softlimit, curitems;
 char hardunits, softunits, curitemunits;
 int cnt;
 char *cp;
 struct dqblk dqblk;
 char *fsp, line1[BUFSIZ], line2[BUFSIZ];

 fd = fopen(inname, "r");
 if (fd == ((void*)0)) {
  warnx("can't re-read temp file!!");
  return (0);
 }



 (void) fgets(line1, sizeof (line1), fd);
 while (fgets(line1, sizeof (line1), fd) != ((void*)0) &&
        fgets(line2, sizeof (line2), fd) != ((void*)0)) {
  if ((fsp = strtok(line1, " \t:")) == ((void*)0)) {
   warnx("%s: bad format", line1);
   return (0);
  }
  if ((cp = strtok((char *)0, "\n")) == ((void*)0)) {
   warnx("%s: %s: bad format", fsp, &fsp[strlen(fsp) + 1]);
   return (0);
  }
  cnt = sscanf(cp,
      " in use: %ju%c, limits (soft = %ju%c, hard = %ju%c)",
      &curitems, &curitemunits, &softlimit, &softunits,
      &hardlimit, &hardunits);



  if (cnt != 6)
   cnt = sscanf(cp,
    " in use: %ju%c, limits (soft = %ju%c hard = %ju%c",
       &curitems, &curitemunits, &softlimit,
       &softunits, &hardlimit, &hardunits);
  if (cnt != 6)
   cnt = sscanf(cp,
   " in use: %ju%c, limits (soft = %ju%c hard = %ju%c)",
       &curitems, &curitemunits, &softlimit,
       &softunits, &hardlimit, &hardunits);
  if (cnt != 6)
   cnt = sscanf(cp,
   " in use: %ju%c, limits (soft = %ju%c, hard = %ju%c",
       &curitems, &curitemunits, &softlimit,
       &softunits, &hardlimit, &hardunits);
  if (cnt != 6) {
   warnx("%s:%s: bad format", fsp, cp);
   return (0);
  }
  dqblk.dqb_curblocks = cvtblkval(curitems, curitemunits,
      "current block count");
  dqblk.dqb_bsoftlimit = cvtblkval(softlimit, softunits,
      "block soft limit");
  dqblk.dqb_bhardlimit = cvtblkval(hardlimit, hardunits,
      "block hard limit");
  if ((cp = strtok(line2, "\n")) == ((void*)0)) {
   warnx("%s: %s: bad format", fsp, line2);
   return (0);
  }
  cnt = sscanf(&cp[7],
      " in use: %ju%c limits (soft = %ju%c, hard = %ju%c)",
      &curitems, &curitemunits, &softlimit,
      &softunits, &hardlimit, &hardunits);



  if (cnt != 6)
   cnt = sscanf(&cp[7],
    " in use: %ju%c limits (soft = %ju%c hard = %ju%c",
       &curitems, &curitemunits, &softlimit,
       &softunits, &hardlimit, &hardunits);
  if (cnt != 6)
   cnt = sscanf(&cp[7],
   " in use: %ju%c limits (soft = %ju%c hard = %ju%c)",
       &curitems, &curitemunits, &softlimit,
       &softunits, &hardlimit, &hardunits);
  if (cnt != 6)
   cnt = sscanf(&cp[7],
   " in use: %ju%c limits (soft = %ju%c, hard = %ju%c",
       &curitems, &curitemunits, &softlimit,
       &softunits, &hardlimit, &hardunits);
  if (cnt != 6) {
   warnx("%s: %s: bad format cnt %d", fsp, &cp[7], cnt);
   return (0);
  }
  dqblk.dqb_curinodes = cvtinoval(curitems, curitemunits,
      "current inode count");
  dqblk.dqb_isoftlimit = cvtinoval(softlimit, softunits,
      "inode soft limit");
  dqblk.dqb_ihardlimit = cvtinoval(hardlimit, hardunits,
      "inode hard limit");
  for (qup = quplist; qup; qup = qup->next) {
   if (strcmp(fsp, qup->fsname))
    continue;






   if (dqblk.dqb_bsoftlimit &&
       qup->dqblk.dqb_curblocks >= dqblk.dqb_bsoftlimit &&
       (qup->dqblk.dqb_bsoftlimit == 0 ||
        qup->dqblk.dqb_curblocks <
        qup->dqblk.dqb_bsoftlimit))
    qup->dqblk.dqb_btime = 0;
   if (dqblk.dqb_isoftlimit &&
       qup->dqblk.dqb_curinodes >= dqblk.dqb_isoftlimit &&
       (qup->dqblk.dqb_isoftlimit == 0 ||
        qup->dqblk.dqb_curinodes <
        qup->dqblk.dqb_isoftlimit))
    qup->dqblk.dqb_itime = 0;
   qup->dqblk.dqb_bsoftlimit = dqblk.dqb_bsoftlimit;
   qup->dqblk.dqb_bhardlimit = dqblk.dqb_bhardlimit;
   qup->dqblk.dqb_isoftlimit = dqblk.dqb_isoftlimit;
   qup->dqblk.dqb_ihardlimit = dqblk.dqb_ihardlimit;
   qup->flags |= FOUND;

   if (hflag ||
       (dqblk.dqb_curblocks == qup->dqblk.dqb_curblocks &&
        dqblk.dqb_curinodes == qup->dqblk.dqb_curinodes))
    break;
   warnx("%s: cannot change current allocation", fsp);
   break;
  }
 }
 fclose(fd);



 for (qup = quplist; qup; qup = qup->next) {
  if (qup->flags & FOUND) {
   qup->flags &= ~FOUND;
   continue;
  }
  qup->dqblk.dqb_bsoftlimit = 0;
  qup->dqblk.dqb_bhardlimit = 0;
  qup->dqblk.dqb_isoftlimit = 0;
  qup->dqblk.dqb_ihardlimit = 0;
 }
 return (1);
}
