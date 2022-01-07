
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct in_addr {int s_addr; } ;
struct nhop4_extended {struct in_addr nh_src; } ;
struct TYPE_7__ {int nr_cred; } ;
struct nfsmount {TYPE_3__ nm_sockreq; TYPE_2__* nm_nam; } ;
struct in6_addr {int dummy; } ;
struct TYPE_8__ {TYPE_1__* td_proc; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;
struct TYPE_5__ {int p_fibnum; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int CRED_TO_VNET (int ) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 scalar_t__ IN6_IS_ADDR_LOOPBACK (struct in6_addr*) ;
 scalar_t__ IN_LOOPBACK (int ) ;
 TYPE_4__* curthread ;
 int fib4_lookup_nh_ext (int,int ,int ,int ,struct nhop4_extended*) ;
 int in6_selectsrc_addr (int,int *,int ,int *,struct in6_addr*,int *) ;
 int ntohl (int ) ;

u_int8_t *
nfscl_getmyip(struct nfsmount *nmp, struct in6_addr *paddr, int *isinet6p)
{
 return (((void*)0));
}
