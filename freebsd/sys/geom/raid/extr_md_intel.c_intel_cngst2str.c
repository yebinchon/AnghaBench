
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
intel_cngst2str(int cng_state)
{

 switch (cng_state) {
 case 128:
  return ("UPDATED");
 case 129:
  return ("NEEDS_UPDATE");
 case 130:
  return ("MASTER_MISSING");
 default:
  return ("UNKNOWN");
 }
}
