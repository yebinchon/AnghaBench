
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
intel_type2str(int type)
{

 switch (type) {
 case 130:
  return ("RAID0");
 case 129:
  return ("RAID1");
 case 128:
  return ("RAID5");
 default:
  return ("UNKNOWN");
 }
}
