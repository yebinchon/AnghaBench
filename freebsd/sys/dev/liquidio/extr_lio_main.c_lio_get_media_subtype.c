
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int subdevice_id; } ;


 int IFM_10G_SR ;
 int IFM_25G_SR ;






__attribute__((used)) static int
lio_get_media_subtype(struct octeon_device *oct)
{

 switch(oct->subdevice_id) {
 case 132:
 case 131:
 case 129:
  return (IFM_10G_SR);

 case 130:
 case 128:
  return (IFM_25G_SR);
 }

 return (IFM_10G_SR);
}
