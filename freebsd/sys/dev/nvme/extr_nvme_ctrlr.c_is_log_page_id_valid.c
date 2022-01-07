
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int boolean_t ;


 int FALSE ;







 int TRUE ;

__attribute__((used)) static boolean_t
is_log_page_id_valid(uint8_t page_id)
{

 switch (page_id) {
 case 132:
 case 130:
 case 131:
 case 134:
 case 133:
 case 129:
 case 128:
  return (TRUE);
 }

 return (FALSE);
}
