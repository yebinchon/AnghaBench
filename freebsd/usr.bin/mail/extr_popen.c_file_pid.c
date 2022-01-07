
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp {int pid; int * fp; struct fp* link; } ;
typedef int pid_t ;
typedef int FILE ;


 int errx (int,char*) ;
 struct fp* fp_head ;

pid_t
file_pid(FILE *fp)
{
 struct fp *p;

 for (p = fp_head; p != ((void*)0); p = p->link)
  if (p->fp == fp)
   return (p->pid);
 errx(1, "Invalid file pointer");

}
