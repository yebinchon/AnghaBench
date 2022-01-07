
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixl_pf {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int I40E_SUCCESS ;
 int ixl_clock_in_i2c_bit (struct ixl_pf*,int*) ;

__attribute__((used)) static s32
ixl_clock_in_i2c_byte(struct ixl_pf *pf, u8 *data)
{
 s32 i;
 bool bit = 0;

 DEBUGFUNC("ixl_clock_in_i2c_byte");

 for (i = 7; i >= 0; i--) {
  ixl_clock_in_i2c_bit(pf, &bit);
  *data |= bit << i;
 }

 return I40E_SUCCESS;
}
