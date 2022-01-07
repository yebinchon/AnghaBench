
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int EACCES ;
 int EDOOFUS ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENOSYS ;
__attribute__((used)) static int
bnxt_hwrm_err_map(uint16_t err)
{
 int rc;

 switch (err) {
 case 129:
  return 0;
 case 132:
 case 133:
 case 134:
  return EINVAL;
 case 131:
  return EACCES;
 case 130:
  return ENOMEM;
 case 137:
  return ENOSYS;
 case 136:
  return EIO;
 case 135:
 case 128:
 default:
  return EDOOFUS;
 }

 return rc;
}
