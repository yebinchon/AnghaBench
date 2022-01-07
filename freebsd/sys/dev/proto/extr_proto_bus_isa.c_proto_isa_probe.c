
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int ENODEV ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int,int*,int ) ;
 int bus_release_resource (int ,int,int,struct resource*) ;
 int device_set_desc_copy (int ,int ) ;
 int proto_isa_devnames ;
 int proto_isa_prefix ;
 int proto_probe (int ,int ,int *) ;
 int rman_get_start (struct resource*) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_printf (struct sbuf*,char*,int ,int ) ;

__attribute__((used)) static int
proto_isa_probe(device_t dev)
{
 struct sbuf *sb;
 struct resource *res;
 int rid, type;

 rid = 0;
 type = SYS_RES_IOPORT;
 res = bus_alloc_resource_any(dev, type, &rid, RF_ACTIVE);
 if (res == ((void*)0)) {
  type = SYS_RES_MEMORY;
  res = bus_alloc_resource_any(dev, type, &rid, RF_ACTIVE);
 }
 if (res == ((void*)0))
  return (ENODEV);

 sb = sbuf_new_auto();
 sbuf_printf(sb, "%s:%#jx", proto_isa_prefix, rman_get_start(res));
 sbuf_finish(sb);
 device_set_desc_copy(dev, sbuf_data(sb));
 sbuf_delete(sb);
 bus_release_resource(dev, type, rid, res);
 return (proto_probe(dev, proto_isa_prefix, &proto_isa_devnames));
}
