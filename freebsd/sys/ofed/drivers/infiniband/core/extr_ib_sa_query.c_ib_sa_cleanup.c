
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ib_unregister_client (int *) ;
 int idr_destroy (int *) ;
 int mcast_cleanup () ;
 int query_idr ;
 int sa_client ;

void ib_sa_cleanup(void)
{
 mcast_cleanup();
 ib_unregister_client(&sa_client);
 idr_destroy(&query_idr);
}
