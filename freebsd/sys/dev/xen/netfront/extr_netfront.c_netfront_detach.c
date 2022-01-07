
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {int dummy; } ;
typedef int device_t ;


 int DPRINTK (char*,int ) ;
 struct netfront_info* device_get_softc (int ) ;
 int netif_free (struct netfront_info*) ;
 int xenbus_get_node (int ) ;

__attribute__((used)) static int
netfront_detach(device_t dev)
{
 struct netfront_info *info = device_get_softc(dev);

 DPRINTK("%s\n", xenbus_get_node(dev));

 netif_free(info);

 return 0;
}
