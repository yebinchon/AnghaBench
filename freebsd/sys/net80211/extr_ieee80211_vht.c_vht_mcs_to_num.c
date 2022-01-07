
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
vht_mcs_to_num(int m)
{

 switch (m) {
 case 130:
  return (7);
 case 129:
  return (8);
 case 128:
  return (9);
 default:
  return (0);
 }
}
