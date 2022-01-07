
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

int
nat64_check_prefixlen(int length)
{

 switch (length) {
 case 32:
 case 40:
 case 48:
 case 56:
 case 64:
 case 96:
  return (0);
 }
 return (EINVAL);
}
