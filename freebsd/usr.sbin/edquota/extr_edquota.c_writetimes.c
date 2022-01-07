
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dqb_itime; int dqb_btime; } ;
struct quotause {char* fsname; TYPE_1__ dqblk; struct quotause* next; } ;
typedef int FILE ;


 int L_SET ;
 char* cvtstoa (int ) ;
 int dup (int) ;
 int err (int,char*,int ) ;
 int fclose (int *) ;
 int * fdopen (int ,char*) ;
 int fprintf (int *,char*,...) ;
 int ftruncate (int,int ) ;
 int lseek (int,int ,int ) ;
 char** qfextension ;
 int tmpfil ;

int
writetimes(struct quotause *quplist, int outfd, int quotatype)
{
 struct quotause *qup;
 FILE *fd;

 ftruncate(outfd, 0);
 lseek(outfd, 0, L_SET);
 if ((fd = fdopen(dup(outfd), "w")) == ((void*)0))
  err(1, "%s", tmpfil);
 fprintf(fd, "Time units may be: days, hours, minutes, or seconds\n");
 fprintf(fd, "Grace period before enforcing soft limits for %ss:\n",
     qfextension[quotatype]);
 for (qup = quplist; qup; qup = qup->next) {
  fprintf(fd, "%s: block grace period: %s, ",
      qup->fsname, cvtstoa(qup->dqblk.dqb_btime));
  fprintf(fd, "file grace period: %s\n",
      cvtstoa(qup->dqblk.dqb_itime));
 }
 fclose(fd);
 return (1);
}
