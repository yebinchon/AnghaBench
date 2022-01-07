
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccc ;
 int * fildes ;
 int longjmp (int ,int) ;
 int read (int ,int *,int) ;
 int * repdes ;
 int sigbuf ;
 int write (int ,int *,int) ;

__attribute__((used)) static void
intIOT(int signo)
{
 write(repdes[1],&ccc,1);
 read(fildes[0], &ccc,1);
 longjmp(sigbuf, 1);
}
