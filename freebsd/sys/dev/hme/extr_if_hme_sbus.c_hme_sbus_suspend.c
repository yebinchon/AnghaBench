
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hme_sbus_softc {int hsc_hme; } ;
typedef int device_t ;


 struct hme_sbus_softc* device_get_softc (int ) ;
 int hme_suspend (int *) ;

__attribute__((used)) static int
hme_sbus_suspend(device_t dev)
{
 struct hme_sbus_softc *hsc;

 hsc = device_get_softc(dev);
 hme_suspend(&hsc->hsc_hme);
 return (0);
}
