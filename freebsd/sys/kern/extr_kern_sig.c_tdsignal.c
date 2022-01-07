
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int td_proc; } ;
struct TYPE_4__ {int ksi_signo; int ksi_code; } ;
typedef TYPE_1__ ksiginfo_t ;


 int SI_KERNEL ;
 int ksiginfo_init (TYPE_1__*) ;
 int tdsendsignal (int ,struct thread*,int,TYPE_1__*) ;

void
tdsignal(struct thread *td, int sig)
{
 ksiginfo_t ksi;

 ksiginfo_init(&ksi);
 ksi.ksi_signo = sig;
 ksi.ksi_code = SI_KERNEL;
 (void) tdsendsignal(td->td_proc, td, sig, &ksi);
}
