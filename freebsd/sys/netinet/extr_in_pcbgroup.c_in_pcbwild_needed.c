
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct inpcb {int inp_flags2; int inp_vflag; TYPE_1__ inp_faddr; int in6p_faddr; } ;


 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INADDR_ANY ;
 int INP_IPV6 ;
 int INP_RSS_BUCKET_SET ;
 scalar_t__ htonl (int ) ;

__attribute__((used)) static __inline int
in_pcbwild_needed(struct inpcb *inp)
{
  return (inp->inp_faddr.s_addr == htonl(INADDR_ANY));
}
