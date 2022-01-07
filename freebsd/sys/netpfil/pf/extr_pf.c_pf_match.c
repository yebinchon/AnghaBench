
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
__attribute__((used)) static int
pf_match(u_int8_t op, u_int32_t a1, u_int32_t a2, u_int32_t p)
{
 switch (op) {
 case 133:
  return ((p > a1) && (p < a2));
 case 128:
  return ((p < a1) || (p > a2));
 case 129:
  return ((p >= a1) && (p <= a2));
 case 136:
  return (p == a1);
 case 130:
  return (p != a1);
 case 131:
  return (p < a1);
 case 132:
  return (p <= a1);
 case 134:
  return (p > a1);
 case 135:
  return (p >= a1);
 }
 return (0);
}
