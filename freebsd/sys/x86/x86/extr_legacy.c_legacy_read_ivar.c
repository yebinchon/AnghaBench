
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct legacy_device {uintptr_t lg_pcibus; uintptr_t lg_pcislot; uintptr_t lg_pcifunc; } ;
typedef int device_t ;


 struct legacy_device* DEVTOAT (int ) ;
 int ENOENT ;





__attribute__((used)) static int
legacy_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct legacy_device *atdev = DEVTOAT(child);

 switch (which) {
 case 130:
  *result = 0;
  break;
 case 131:
  *result = atdev->lg_pcibus;
  break;
 case 128:
  *result = atdev->lg_pcislot;
  break;
 case 129:
  *result = atdev->lg_pcifunc;
  break;
 default:
  return ENOENT;
 }
 return 0;
}
