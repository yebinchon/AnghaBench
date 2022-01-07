
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdinfo {int ci_calls; char* ci_comm; int ci_utime; int ci_stime; int ci_uid; int ci_io; int ci_mem; int ci_etime; int ci_flags; } ;
struct acctv3 {char* ac_comm; int ac_flagx; int ac_utime; int ac_stime; int ac_uid; int ac_io; int ac_mem; int ac_etime; } ;
typedef int ssize_t ;
typedef int FILE ;


 int AFORK ;
 int CI_UNPRINTABLE ;
 int EOF ;
 int * fopen (char const*,char*) ;
 int isascii (char) ;
 scalar_t__ iscntrl (char) ;
 scalar_t__ mflag ;
 int pacct_add (struct cmdinfo*) ;
 int printf (char*,int,int,int ,int ,char*) ;
 int qflag ;
 int readrec_forward (int *,struct acctv3*) ;
 scalar_t__ sflag ;
 int uflag ;
 int usracct_add (struct cmdinfo*) ;
 int warn (char*,char const*,...) ;

__attribute__((used)) static FILE *
acct_load(const char *pn, int wr)
{
 struct acctv3 ac;
 struct cmdinfo ci;
 ssize_t rv;
 FILE *f;
 int i;




 f = fopen(pn, wr ? "r+" : "r");
 if (f == ((void*)0)) {
  warn("open %s %s", pn, wr ? "for read/write" : "read-only");
  return (((void*)0));
 }





 while (1) {

  rv = readrec_forward(f, &ac);
  if (rv != 1) {
   if (rv == EOF)
    warn("error reading %s", pn);
   break;
  }


  ci.ci_calls = 1;
  for (i = 0; i < (int)sizeof ac.ac_comm && ac.ac_comm[i] != '\0';
      i++) {
   char c = ac.ac_comm[i];

   if (!isascii(c) || iscntrl(c)) {
    ci.ci_comm[i] = '?';
    ci.ci_flags |= CI_UNPRINTABLE;
   } else
    ci.ci_comm[i] = c;
  }
  if (ac.ac_flagx & AFORK)
   ci.ci_comm[i++] = '*';
  ci.ci_comm[i++] = '\0';
  ci.ci_etime = ac.ac_etime;
  ci.ci_utime = ac.ac_utime;
  ci.ci_stime = ac.ac_stime;
  ci.ci_uid = ac.ac_uid;
  ci.ci_mem = ac.ac_mem;
  ci.ci_io = ac.ac_io;

  if (!uflag) {

   if (sflag || (!mflag && !qflag))
    pacct_add(&ci);
   if (sflag || (mflag && !qflag))
    usracct_add(&ci);
  } else if (!qflag)
   printf("%6u %12.3lf cpu %12.0lfk mem %12.0lf io %s\n",
       ci.ci_uid,
       (ci.ci_utime + ci.ci_stime) / 1000000,
       ci.ci_mem, ci.ci_io,
       ci.ci_comm);
 }


 return (f);
}
