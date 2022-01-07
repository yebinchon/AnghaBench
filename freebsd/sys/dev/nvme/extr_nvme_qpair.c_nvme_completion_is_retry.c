
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nvme_completion {int status; } ;
typedef int boolean_t ;
 int NVME_STATUS_GET_DNR (int ) ;
 int NVME_STATUS_GET_SC (int ) ;
 int NVME_STATUS_GET_SCT (int ) ;

__attribute__((used)) static boolean_t
nvme_completion_is_retry(const struct nvme_completion *cpl)
{
 uint8_t sct, sc, dnr;

 sct = NVME_STATUS_GET_SCT(cpl->status);
 sc = NVME_STATUS_GET_SC(cpl->status);
 dnr = NVME_STATUS_GET_DNR(cpl->status);
 switch (sct) {
 case 147:
  switch (sc) {
  case 143:
  case 128:
   if (dnr)
    return (0);
   else
    return (1);
  case 130:
  case 132:
  case 137:
  case 135:
  case 140:
  case 134:
  case 139:
  case 142:
  case 141:
  case 131:
  case 136:
  case 129:
  case 138:
  default:
   return (0);
  }
 case 148:
 case 146:
  return (0);
 case 145:
  switch (sc) {
  case 133:
   if (dnr)
    return (0);
   else
    return (1);
  default:
   return (0);
  }
 case 144:
 default:
  return (0);
 }
}
