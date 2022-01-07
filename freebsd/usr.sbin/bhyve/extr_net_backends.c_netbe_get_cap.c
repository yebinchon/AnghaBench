
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct net_backend {int (* get_cap ) (struct net_backend*) ;} ;


 int assert (int ) ;
 int stub1 (struct net_backend*) ;

uint64_t
netbe_get_cap(struct net_backend *be)
{

 assert(be != ((void*)0));
 return (be->get_cap(be));
}
