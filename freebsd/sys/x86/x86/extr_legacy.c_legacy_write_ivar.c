
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct legacy_device {uintptr_t lg_pcibus; uintptr_t lg_pcislot; uintptr_t lg_pcifunc; } ;
typedef int device_t ;


 struct legacy_device* DEVTOAT (int ) ;
 int EINVAL ;
 int ENOENT ;





__attribute__((used)) static int
legacy_write_ivar(device_t dev, device_t child, int which, uintptr_t value)
{
 struct legacy_device *atdev = DEVTOAT(child);

 switch (which) {
 case 130:
  return EINVAL;
 case 131:
  atdev->lg_pcibus = value;
  break;
 case 128:
  atdev->lg_pcislot = value;
  break;
 case 129:
  atdev->lg_pcifunc = value;
  break;
 default:
  return ENOENT;
 }
 return 0;
}
