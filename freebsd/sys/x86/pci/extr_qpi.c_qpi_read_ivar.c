
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qpi_device {uintptr_t qd_pcibus; } ;
typedef int device_t ;


 int ENOENT ;

 struct qpi_device* device_get_ivars (int ) ;

__attribute__((used)) static int
qpi_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct qpi_device *qdev;

 qdev = device_get_ivars(child);
 switch (which) {
 case 128:
  *result = qdev->qd_pcibus;
  break;
 default:
  return (ENOENT);
 }
 return (0);
}
