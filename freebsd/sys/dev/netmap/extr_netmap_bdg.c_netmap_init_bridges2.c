
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct nm_bridge {int dummy; } ;


 int BDG_RWINIT (struct nm_bridge*) ;
 struct nm_bridge* nm_os_malloc (int) ;

struct nm_bridge *
netmap_init_bridges2(u_int n)
{
 int i;
 struct nm_bridge *b;

 b = nm_os_malloc(sizeof(struct nm_bridge) * n);
 if (b == ((void*)0))
  return ((void*)0);
 for (i = 0; i < n; i++)
  BDG_RWINIT(&b[i]);
 return b;
}
