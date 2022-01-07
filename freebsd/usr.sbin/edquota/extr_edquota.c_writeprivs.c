
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dqb_ihardlimit; int dqb_isoftlimit; int dqb_curinodes; int dqb_bhardlimit; int dqb_bsoftlimit; int dqb_curblocks; } ;
struct quotause {char* fsname; TYPE_1__ dqblk; struct quotause* next; } ;
typedef int FILE ;


 int L_SET ;
 int dup (int) ;
 int err (int,char*,int ) ;
 int fclose (int *) ;
 int * fdopen (int ,char*) ;
 char* fmthumanvalblks (int ) ;
 char* fmthumanvalinos (int ) ;
 int fprintf (int *,char*,char*,...) ;
 int ftruncate (int,int ) ;
 int lseek (int,int ,int ) ;
 char** qfextension ;
 int tmpfil ;

int
writeprivs(struct quotause *quplist, int outfd, char *name, int quotatype)
{
 struct quotause *qup;
 FILE *fd;

 ftruncate(outfd, 0);
 lseek(outfd, 0, L_SET);
 if ((fd = fdopen(dup(outfd), "w")) == ((void*)0))
  err(1, "%s", tmpfil);
 fprintf(fd, "Quotas for %s %s:\n", qfextension[quotatype], name);
 for (qup = quplist; qup; qup = qup->next) {
  fprintf(fd, "%s: in use: %s, ", qup->fsname,
      fmthumanvalblks(qup->dqblk.dqb_curblocks));
  fprintf(fd, "limits (soft = %s, ",
      fmthumanvalblks(qup->dqblk.dqb_bsoftlimit));
  fprintf(fd, "hard = %s)\n",
      fmthumanvalblks(qup->dqblk.dqb_bhardlimit));
  fprintf(fd, "\tinodes in use: %s, ",
      fmthumanvalinos(qup->dqblk.dqb_curinodes));
  fprintf(fd, "limits (soft = %s, ",
      fmthumanvalinos(qup->dqblk.dqb_isoftlimit));
  fprintf(fd, "hard = %s)\n",
      fmthumanvalinos(qup->dqblk.dqb_ihardlimit));
 }
 fclose(fd);
 return (1);
}
