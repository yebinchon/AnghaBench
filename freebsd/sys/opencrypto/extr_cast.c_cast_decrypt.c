
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
struct TYPE_3__ {int rounds; } ;
typedef TYPE_1__ cast_key ;


 int F1 (int,int,int) ;
 int F2 (int,int,int) ;
 int F3 (int,int,int) ;
 scalar_t__ U_INT8_Ta (int) ;
 scalar_t__ U_INT8_Tb (int) ;
 scalar_t__ U_INT8_Tc (int) ;
 scalar_t__ U_INT8_Td (int) ;

void cast_decrypt(cast_key* key, u_int8_t* inblock, u_int8_t* outblock)
{
u_int32_t t, l, r;


 r = ((u_int32_t)inblock[0] << 24) | ((u_int32_t)inblock[1] << 16) |
  ((u_int32_t)inblock[2] << 8) | (u_int32_t)inblock[3];
 l = ((u_int32_t)inblock[4] << 24) | ((u_int32_t)inblock[5] << 16) |
  ((u_int32_t)inblock[6] << 8) | (u_int32_t)inblock[7];


 if (key->rounds > 12) {
  F1(r, l, 15);
  F3(l, r, 14);
  F2(r, l, 13);
  F1(l, r, 12);
 }
 F3(r, l, 11);
 F2(l, r, 10);
 F1(r, l, 9);
 F3(l, r, 8);
 F2(r, l, 7);
 F1(l, r, 6);
 F3(r, l, 5);
 F2(l, r, 4);
 F1(r, l, 3);
 F3(l, r, 2);
 F2(r, l, 1);
 F1(l, r, 0);

 outblock[0] = U_INT8_Ta(l);
 outblock[1] = U_INT8_Tb(l);
 outblock[2] = U_INT8_Tc(l);
 outblock[3] = U_INT8_Td(l);
 outblock[4] = U_INT8_Ta(r);
 outblock[5] = U_INT8_Tb(r);
 outblock[6] = U_INT8_Tc(r);
 outblock[7] = U_INT8_Td(r);

 t = l = r = 0;
}
