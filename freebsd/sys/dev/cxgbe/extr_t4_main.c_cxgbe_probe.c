
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int port_id; } ;
typedef int device_t ;
typedef int buf ;


 int BUS_PROBE_DEFAULT ;
 struct port_info* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
cxgbe_probe(device_t dev)
{
 char buf[128];
 struct port_info *pi = device_get_softc(dev);

 snprintf(buf, sizeof(buf), "port %d", pi->port_id);
 device_set_desc_copy(dev, buf);

 return (BUS_PROBE_DEFAULT);
}
