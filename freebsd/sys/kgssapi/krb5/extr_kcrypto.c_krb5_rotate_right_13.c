
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void
krb5_rotate_right_13(uint8_t *out, uint8_t *in, size_t numlen)
{
 uint32_t carry;
 size_t i;





 if (numlen == 1) {
  carry = in[0] >> 5;
  out[0] = (in[0] << 3) | carry;
  return;
 }

 carry = ((in[numlen - 2] & 31) << 8) | in[numlen - 1];
 for (i = 2; i < numlen; i++) {
  out[i] = ((in[i - 2] & 31) << 3) | (in[i - 1] >> 5);
 }
 out[1] = ((carry & 31) << 3) | (in[0] >> 5);
 out[0] = carry >> 5;
}
