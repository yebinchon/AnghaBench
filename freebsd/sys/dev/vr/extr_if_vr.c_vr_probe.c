
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_type {int vr_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct vr_type* vr_match (int ) ;

__attribute__((used)) static int
vr_probe(device_t dev)
{
 const struct vr_type *t;

 t = vr_match(dev);
 if (t != ((void*)0)) {
  device_set_desc(dev, t->vr_name);
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
