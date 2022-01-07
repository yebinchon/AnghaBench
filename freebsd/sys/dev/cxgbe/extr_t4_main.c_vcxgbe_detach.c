
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vi_info {int viid; TYPE_1__* pi; } ;
struct adapter {int pf; int mbox; } ;
typedef int device_t ;
struct TYPE_2__ {struct adapter* adapter; } ;


 int cxgbe_vi_detach (struct vi_info*) ;
 struct vi_info* device_get_softc (int ) ;
 int doom_vi (struct adapter*,struct vi_info*) ;
 int end_synchronized_op (struct adapter*,int ) ;
 int t4_free_vi (struct adapter*,int ,int ,int ,int ) ;

__attribute__((used)) static int
vcxgbe_detach(device_t dev)
{
 struct vi_info *vi;
 struct adapter *sc;

 vi = device_get_softc(dev);
 sc = vi->pi->adapter;

 doom_vi(sc, vi);

 cxgbe_vi_detach(vi);
 t4_free_vi(sc, sc->mbox, sc->pf, 0, vi->viid);

 end_synchronized_op(sc, 0);

 return (0);
}
