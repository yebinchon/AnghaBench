
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ichwd_device {int desc; } ;
typedef int device_t ;


 int ENXIO ;
 int device_get_parent (int ) ;
 int device_set_desc_copy (int ,int ) ;
 int * ichwd_find_ich_lpc_bridge (int ,struct ichwd_device**) ;
 int * ichwd_find_smb_dev (int ,struct ichwd_device**) ;
 scalar_t__ isa_get_logicalid (int ) ;

__attribute__((used)) static int
ichwd_probe(device_t dev)
{
 struct ichwd_device *id_p;


 if (isa_get_logicalid(dev) != 0)
  return (ENXIO);

 if (ichwd_find_ich_lpc_bridge(device_get_parent(dev), &id_p) == ((void*)0) &&
     ichwd_find_smb_dev(device_get_parent(dev), &id_p) == ((void*)0))
  return (ENXIO);

 device_set_desc_copy(dev, id_p->desc);
 return (0);
}
