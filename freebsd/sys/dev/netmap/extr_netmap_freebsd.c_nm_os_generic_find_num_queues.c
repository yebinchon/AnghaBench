
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int ;
struct ifnet {int dummy; } ;


 int netmap_generic_rings ;

void
nm_os_generic_find_num_queues(struct ifnet *ifp, u_int *txq, u_int *rxq)
{
 unsigned num_rings = netmap_generic_rings ? netmap_generic_rings : 1;

 *txq = num_rings;
 *rxq = num_rings;
}
