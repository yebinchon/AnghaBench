
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
typedef int device_t ;


 struct adapter* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int notify_siblings (int ,int) ;
 int t4_detach_common (int ) ;

__attribute__((used)) static int
t4_detach(device_t dev)
{
 struct adapter *sc;
 int rc;

 sc = device_get_softc(dev);

 rc = notify_siblings(dev, 1);
 if (rc) {
  device_printf(dev,
      "failed to detach sibling devices: %d\n", rc);
  return (rc);
 }

 return (t4_detach_common(dev));
}
