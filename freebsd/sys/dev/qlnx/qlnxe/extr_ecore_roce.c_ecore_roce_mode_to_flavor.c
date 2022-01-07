
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum roce_mode { ____Placeholder_roce_mode } roce_mode ;
typedef enum roce_flavor { ____Placeholder_roce_flavor } roce_flavor ;


 int MAX_ROCE_MODE ;
 int PLAIN_ROCE ;



 int RROCE_IPV4 ;

__attribute__((used)) static enum roce_flavor ecore_roce_mode_to_flavor(enum roce_mode roce_mode)
{
 enum roce_flavor flavor;

 switch (roce_mode) {
 case 130:
  flavor = PLAIN_ROCE;
  break;
 case 129:
  flavor = RROCE_IPV4;
  break;
 case 128:
  flavor = (enum roce_flavor)128;
  break;
 default:
  flavor = (enum roce_flavor)MAX_ROCE_MODE;
  break;
 }
 return flavor;
}
