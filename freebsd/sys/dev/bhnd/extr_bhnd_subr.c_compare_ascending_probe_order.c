
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BHND_BUS_GET_PROBE_ORDER (int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
compare_ascending_probe_order(const void *lhs, const void *rhs)
{
 device_t ldev, rdev;
 int lorder, rorder;

 ldev = (*(const device_t *) lhs);
 rdev = (*(const device_t *) rhs);

 lorder = BHND_BUS_GET_PROBE_ORDER(device_get_parent(ldev), ldev);
 rorder = BHND_BUS_GET_PROBE_ORDER(device_get_parent(rdev), rdev);

 if (lorder < rorder) {
  return (-1);
 } else if (lorder > rorder) {
  return (1);
 } else {
  return (0);
 }
}
