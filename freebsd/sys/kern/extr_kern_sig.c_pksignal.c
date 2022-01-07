
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int ksiginfo_t ;


 int tdsendsignal (struct proc*,int *,int,int *) ;

int
pksignal(struct proc *p, int sig, ksiginfo_t *ksi)
{

 return (tdsendsignal(p, ((void*)0), sig, ksi));
}
