
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ifnet {int dummy; } ;
typedef int caddr_t ;


 int IFNET_WLOCK () ;
 int IFNET_WLOCK_ASSERT () ;
 int IFNET_WUNLOCK () ;
 int M_IFNET ;
 int M_WAITOK ;
 int M_ZERO ;
 int V_if_indexlim ;
 struct ifnet** V_ifindex_table ;
 int free (struct ifnet**,int ) ;
 struct ifnet** malloc (int,int ,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void *
if_grow(void)
{
 int oldlim;
 u_int n;
 struct ifnet **e;
 void *old;

 old = ((void*)0);
 IFNET_WLOCK_ASSERT();
 oldlim = V_if_indexlim;
 IFNET_WUNLOCK();
 n = (oldlim << 1) * sizeof(*e);
 e = malloc(n, M_IFNET, M_WAITOK | M_ZERO);
 IFNET_WLOCK();
 if (V_if_indexlim != oldlim) {
  free(e, M_IFNET);
  return (((void*)0));
 }
 if (V_ifindex_table != ((void*)0)) {
  memcpy((caddr_t)e, (caddr_t)V_ifindex_table, n/2);
  old = V_ifindex_table;
 }
 V_if_indexlim <<= 1;
 V_ifindex_table = e;
 return (old);
}
