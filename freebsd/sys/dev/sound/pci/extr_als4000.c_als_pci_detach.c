
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int als_resource_free (int ,struct sc_info*) ;
 int als_uninit (struct sc_info*) ;
 int free (struct sc_info*,int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
als_pci_detach(device_t dev)
{
 struct sc_info *sc;
 int r;

 r = pcm_unregister(dev);
 if (r)
  return r;

 sc = pcm_getdevinfo(dev);
 als_uninit(sc);
 als_resource_free(dev, sc);
 free(sc, M_DEVBUF);
 return 0;
}
