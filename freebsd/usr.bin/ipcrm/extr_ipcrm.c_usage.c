
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr,
     "usage: ipcrm [-W] [-v[v]]\n"
     "             [-q msqid] [-m shmid] [-s semid]\n"
     "             [-Q msgkey] [-M shmkey] [-S semkey] ...\n");
 exit(1);
}
