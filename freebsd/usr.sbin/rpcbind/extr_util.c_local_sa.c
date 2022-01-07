
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;




 scalar_t__ local_in4 ;
 scalar_t__ local_in6 ;

struct sockaddr *
local_sa(int af)
{
 switch (af) {
 case 129:
  return (struct sockaddr *)local_in4;




 default:
  return ((void*)0);
 }
}
