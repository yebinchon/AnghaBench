
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vi_info {TYPE_1__* pi; } ;
typedef int device_t ;
typedef int buf ;
struct TYPE_2__ {int port_id; struct vi_info* vi; } ;


 int BUS_PROBE_DEFAULT ;
 struct vi_info* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static int
vcxgbe_probe(device_t dev)
{
 char buf[128];
 struct vi_info *vi = device_get_softc(dev);

 snprintf(buf, sizeof(buf), "port %d vi %td", vi->pi->port_id,
     vi - vi->pi->vi);
 device_set_desc_copy(dev, buf);

 return (BUS_PROBE_DEFAULT);
}
