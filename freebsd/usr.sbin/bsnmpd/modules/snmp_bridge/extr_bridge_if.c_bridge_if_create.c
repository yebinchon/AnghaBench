
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;


 scalar_t__ bridge_create (char const*) ;
 scalar_t__ bridge_set_if_up (char const*,int) ;

__attribute__((used)) static int
bridge_if_create(const char* b_name, int8_t up)
{
 if (bridge_create(b_name) < 0)
  return (-1);

 if (up == 1 && (bridge_set_if_up(b_name, 1) < 0))
  return (-1);





 return (0);
}
