
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sli4_t ;
typedef int int32_t ;







 int sli_get_asic_type (int *) ;

int32_t sli_link_is_configurable(sli4_t *sli)
{
 int32_t rc = 0;





 switch (sli_get_asic_type(sli)) {
 case 128:
 case 130:
 case 131:
  rc = 1;
  break;
 case 129:
 case 132:
 default:
  rc = 0;
  break;
 }

 return rc;

}
