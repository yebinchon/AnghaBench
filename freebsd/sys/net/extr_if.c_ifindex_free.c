
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int IFNET_WLOCK () ;
 int IFNET_WUNLOCK () ;
 int ifindex_free_locked (int ) ;

__attribute__((used)) static void
ifindex_free(u_short idx)
{

 IFNET_WLOCK();
 ifindex_free_locked(idx);
 IFNET_WUNLOCK();
}
