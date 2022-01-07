
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter_info {int nports0; int nports1; char* desc; } ;
typedef int device_t ;
typedef int buf ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct adapter_info* cxgb_get_adapter_info (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int snprintf (char*,int,char*,char*,int,char*) ;

__attribute__((used)) static int
cxgb_controller_probe(device_t dev)
{
 const struct adapter_info *ai;
 char *ports, buf[80];
 int nports;

 ai = cxgb_get_adapter_info(dev);
 if (ai == ((void*)0))
  return (ENXIO);

 nports = ai->nports0 + ai->nports1;
 if (nports == 1)
  ports = "port";
 else
  ports = "ports";

 snprintf(buf, sizeof(buf), "%s, %d %s", ai->desc, nports, ports);
 device_set_desc_copy(dev, buf);
 return (BUS_PROBE_DEFAULT);
}
