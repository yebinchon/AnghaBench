
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct proc {int dummy; } ;
struct TYPE_4__ {int ksi_signo; int ksi_code; } ;
typedef TYPE_1__ ksiginfo_t ;


 int SI_KERNEL ;
 int ksiginfo_init (TYPE_1__*) ;
 int tdsendsignal (struct proc*,int *,int,TYPE_1__*) ;

void
kern_psignal(struct proc *p, int sig)
{
 ksiginfo_t ksi;

 ksiginfo_init(&ksi);
 ksi.ksi_signo = sig;
 ksi.ksi_code = SI_KERNEL;
 (void) tdsendsignal(p, ((void*)0), sig, &ksi);
}
