
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdacc_fg {uintptr_t nid; uintptr_t type; uintptr_t subsystem_id; } ;
typedef int device_t ;


 int BUS_READ_IVAR (int ,int ,int,uintptr_t*) ;



 struct hdacc_fg* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
hdacc_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct hdacc_fg *fg = device_get_ivars(child);

 switch (which) {
 case 130:
  *result = fg->nid;
  break;
 case 129:
  *result = fg->type;
  break;
 case 128:
  *result = fg->subsystem_id;
  break;
 default:
  return(BUS_READ_IVAR(device_get_parent(dev), dev,
      which, result));
 }
 return (0);
}
