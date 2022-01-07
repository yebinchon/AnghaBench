
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int device_printf (int ,char*) ;
 int ds_init (struct sc_info*) ;
 int mixer_reinit (int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
ds_pci_resume(device_t dev)
{
       struct sc_info *sc;

       sc = pcm_getdevinfo(dev);

       if (ds_init(sc) == -1) {
           device_printf(dev, "unable to reinitialize the card\n");
           return ENXIO;
       }
       if (mixer_reinit(dev) == -1) {
               device_printf(dev, "unable to reinitialize the mixer\n");
               return ENXIO;
       }
       return 0;
}
