
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_ftable_hash_key; int * vxl_ftable; } ;
struct vxlan_ftable_head {int dummy; } ;


 int LIST_INIT (int *) ;
 int M_VXLAN ;
 int M_WAITOK ;
 int M_ZERO ;
 int VXLAN_SC_FTABLE_SIZE ;
 int arc4random () ;
 int * malloc (int,int ,int) ;

__attribute__((used)) static void
vxlan_ftable_init(struct vxlan_softc *sc)
{
 int i;

 sc->vxl_ftable = malloc(sizeof(struct vxlan_ftable_head) *
     VXLAN_SC_FTABLE_SIZE, M_VXLAN, M_ZERO | M_WAITOK);

 for (i = 0; i < VXLAN_SC_FTABLE_SIZE; i++)
  LIST_INIT(&sc->vxl_ftable[i]);
 sc->vxl_ftable_hash_key = arc4random();
}
