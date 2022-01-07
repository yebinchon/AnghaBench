
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_backend {int (* cleanup ) (struct net_backend*) ;} ;


 int free (struct net_backend*) ;
 int stub1 (struct net_backend*) ;

void
netbe_cleanup(struct net_backend *be)
{

 if (be != ((void*)0)) {
  be->cleanup(be);
  free(be);
 }
}
