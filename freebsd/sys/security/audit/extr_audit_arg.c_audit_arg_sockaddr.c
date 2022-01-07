
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct sockaddr_un {int sun_path; } ;
struct sockaddr {int sa_family; int sa_len; } ;
struct TYPE_2__ {int ar_arg_sockaddr; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;





 int ARG_SADDRINET ;
 int ARG_SADDRINET6 ;
 int ARG_SADDRUNIX ;
 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int AT_FDCWD ;
 int KASSERT (int ,char*) ;
 int audit_arg_atfd1 (int) ;
 int audit_arg_upath1 (struct thread*,int,int ) ;
 int bcopy (struct sockaddr*,int *,int ) ;
 struct kaudit_record* currecord () ;

void
audit_arg_sockaddr(struct thread *td, int dirfd, struct sockaddr *sa)
{
 struct kaudit_record *ar;

 KASSERT(td != ((void*)0), ("audit_arg_sockaddr: td == NULL"));
 KASSERT(sa != ((void*)0), ("audit_arg_sockaddr: sa == NULL"));

 ar = currecord();
 if (ar == ((void*)0))
  return;

 bcopy(sa, &ar->k_ar.ar_arg_sockaddr, sa->sa_len);
 switch (sa->sa_family) {
 case 130:
  ARG_SET_VALID(ar, ARG_SADDRINET);
  break;

 case 129:
  ARG_SET_VALID(ar, ARG_SADDRINET6);
  break;

 case 128:
  if (dirfd != AT_FDCWD)
   audit_arg_atfd1(dirfd);
  audit_arg_upath1(td, dirfd,
      ((struct sockaddr_un *)sa)->sun_path);
  ARG_SET_VALID(ar, ARG_SADDRUNIX);
  break;

 }
}
