
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct nfssvc_args {int dummy; } ;


 int NFSEXITCODE (int) ;
 int nfssvc_call (struct thread*,struct nfssvc_args*,int ) ;

__attribute__((used)) static int
nfssvc_nfscommon(struct thread *td, struct nfssvc_args *uap)
{
 int error;

 error = nfssvc_call(td, uap, td->td_ucred);
 NFSEXITCODE(error);
 return (error);
}
