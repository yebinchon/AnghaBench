
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viawd_device {int desc; } ;
typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int KASSERT (int ,char*) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,int ) ;
 struct viawd_device* viawd_find (int ) ;

__attribute__((used)) static int
viawd_probe(device_t dev)
{
 struct viawd_device *id;

 id = viawd_find(device_get_parent(dev));
 KASSERT(id != ((void*)0), ("parent should be a valid VIA SB"));
 device_set_desc(dev, id->desc);
 return (BUS_PROBE_GENERIC);
}
