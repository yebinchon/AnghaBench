
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vi_info {int viid; struct port_info* pi; } ;
struct port_info {struct adapter* adapter; } ;
struct adapter {int pf; int mbox; } ;
typedef int device_t ;


 int INTR_OK ;
 int SLEEP_OK ;
 int alloc_extra_vi (struct adapter*,struct port_info*,struct vi_info*) ;
 int begin_synchronized_op (struct adapter*,struct vi_info*,int,char*) ;
 int cxgbe_vi_attach (int ,struct vi_info*) ;
 struct vi_info* device_get_softc (int ) ;
 int end_synchronized_op (struct adapter*,int ) ;
 int t4_free_vi (struct adapter*,int ,int ,int ,int ) ;

__attribute__((used)) static int
vcxgbe_attach(device_t dev)
{
 struct vi_info *vi;
 struct port_info *pi;
 struct adapter *sc;
 int rc;

 vi = device_get_softc(dev);
 pi = vi->pi;
 sc = pi->adapter;

 rc = begin_synchronized_op(sc, vi, SLEEP_OK | INTR_OK, "t4via");
 if (rc)
  return (rc);
 rc = alloc_extra_vi(sc, pi, vi);
 end_synchronized_op(sc, 0);
 if (rc)
  return (rc);

 rc = cxgbe_vi_attach(dev, vi);
 if (rc) {
  t4_free_vi(sc, sc->mbox, sc->pf, 0, vi->viid);
  return (rc);
 }
 return (0);
}
