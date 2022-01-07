
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;
typedef int device_t ;


 int CALL ;
 int M3_DEBUG (int ,char*) ;
 int M3_LOCK (struct sc_info*) ;
 int M3_UNLOCK (struct sc_info*) ;
 int m3_power (struct sc_info*,int) ;
 struct sc_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
m3_pci_shutdown(device_t dev)
{
 struct sc_info *sc = pcm_getdevinfo(dev);

 M3_DEBUG(CALL, ("m3_pci_shutdown\n"));

 M3_LOCK(sc);
 m3_power(sc, 3);
 M3_UNLOCK(sc);

 return 0;
}
