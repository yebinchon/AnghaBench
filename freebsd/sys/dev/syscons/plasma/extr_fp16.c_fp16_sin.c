
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp16_t ;


 int FP16_2PI ;
 int* fp16_sin_table ;

fp16_t
fp16_sin(fp16_t theta)
{
 unsigned int i;

 i = 1024 * (theta % FP16_2PI) / FP16_2PI;
 switch (i / 256) {
 case 0:
  return (fp16_sin_table[i % 256]);
 case 1:
  return (fp16_sin_table[255 - i % 256]);
 case 2:
  return (-fp16_sin_table[i % 256]);
 case 3:
  return (-fp16_sin_table[255 - i % 256]);
 default:

  return (0);
 }
}
