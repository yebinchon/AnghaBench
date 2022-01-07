
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct nm_bridge {int dummy; } ;


 int BDG_RWDESTROY (struct nm_bridge*) ;
 int nm_os_free (struct nm_bridge*) ;

void
netmap_uninit_bridges2(struct nm_bridge *b, u_int n)
{
 int i;

 if (b == ((void*)0))
  return;

 for (i = 0; i < n; i++)
  BDG_RWDESTROY(&b[i]);
 nm_os_free(b);
}
