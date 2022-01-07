
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {scalar_t__ sin6_scope_id; int sin6_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rdma_dev_addr {scalar_t__ bound_dev_if; int net; } ;


 scalar_t__ AF_INET6 ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int EINVAL ;
 scalar_t__ IN6_IS_ADDR_MC_INTFACELOCAL (int *) ;
 scalar_t__ IN6_IS_SCOPE_LINKLOCAL (int *) ;
 scalar_t__ sa6_recoverscope (struct sockaddr_in6*) ;

__attribute__((used)) static int cma_check_linklocal(struct rdma_dev_addr *dev_addr,
          struct sockaddr *addr)
{
 return 0;
}
