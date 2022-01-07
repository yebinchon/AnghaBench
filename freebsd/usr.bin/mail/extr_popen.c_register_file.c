
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp {int pipe; struct fp* link; int pid; int * fp; } ;
typedef int pid_t ;
typedef int FILE ;


 int err (int,char*) ;
 struct fp* fp_head ;
 struct fp* malloc (int) ;

void
register_file(FILE *fp, int pipe, pid_t pid)
{
 struct fp *fpp;

 if ((fpp = malloc(sizeof(*fpp))) == ((void*)0))
  err(1, "Out of memory");
 fpp->fp = fp;
 fpp->pipe = pipe;
 fpp->pid = pid;
 fpp->link = fp_head;
 fp_head = fpp;
}
