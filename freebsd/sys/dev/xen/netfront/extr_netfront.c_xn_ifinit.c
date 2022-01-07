
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {int dummy; } ;


 int XN_LOCK (struct netfront_info*) ;
 int XN_UNLOCK (struct netfront_info*) ;
 int xn_ifinit_locked (struct netfront_info*) ;

__attribute__((used)) static void
xn_ifinit(void *xsc)
{
 struct netfront_info *sc = xsc;

 XN_LOCK(sc);
 xn_ifinit_locked(sc);
 XN_UNLOCK(sc);
}
