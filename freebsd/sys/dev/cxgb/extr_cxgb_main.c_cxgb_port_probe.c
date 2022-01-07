
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* desc; } ;
struct port_info {int port_id; TYPE_1__ phy; } ;
typedef int device_t ;
typedef int buf ;


 struct port_info* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int snprintf (char*,int,char*,int,char const*) ;

__attribute__((used)) static int
cxgb_port_probe(device_t dev)
{
 struct port_info *p;
 char buf[80];
 const char *desc;

 p = device_get_softc(dev);
 desc = p->phy.desc;
 snprintf(buf, sizeof(buf), "Port %d %s", p->port_id, desc);
 device_set_desc_copy(dev, buf);
 return (0);
}
