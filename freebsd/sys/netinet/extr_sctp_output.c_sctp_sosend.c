
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sctp_sndrcvinfo {int dummy; } ;
struct mbuf {int dummy; } ;
typedef int sndrcvninfo ;


 scalar_t__ AF_INET6 ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (int *) ;
 int SCTP_SNDRCV ;
 int in6_sin6_2_sin (struct sockaddr_in*,struct sockaddr_in6*) ;
 scalar_t__ sctp_find_cmsg (int ,void*,struct mbuf*,int) ;
 int sctp_lower_sosend (struct socket*,struct sockaddr*,struct uio*,struct mbuf*,struct mbuf*,int,struct sctp_sndrcvinfo*,struct thread*) ;

int
sctp_sosend(struct socket *so,
    struct sockaddr *addr,
    struct uio *uio,
    struct mbuf *top,
    struct mbuf *control,
    int flags,
    struct thread *p
)
{
 int error, use_sndinfo = 0;
 struct sctp_sndrcvinfo sndrcvninfo;
 struct sockaddr *addr_to_use;




 if (control) {

  if (sctp_find_cmsg(SCTP_SNDRCV, (void *)&sndrcvninfo, control,
      sizeof(sndrcvninfo))) {

   use_sndinfo = 1;
  }
 }
 addr_to_use = addr;
 error = sctp_lower_sosend(so, addr_to_use, uio, top,
     control,
     flags,
     use_sndinfo ? &sndrcvninfo : ((void*)0)
     ,p
     );
 return (error);
}
