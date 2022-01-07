
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp16_t ;


 int flsl (int) ;
 int fp16_div (int,int) ;
 int fp16_mul (int,int) ;
 int fp16_sub (int,int) ;

fp16_t
fp16_sqrt(fp16_t x)
{
 fp16_t y, delta;
 signed int log2x;


 if (x == 0)
  return (0);


 log2x = flsl(x) - 1;
 if (log2x >= 16) {
  y = x >> (log2x - 16) / 2;
 } else {




  return (0);

 }
 while (y > 0) {

  delta = fp16_div(fp16_sub(fp16_mul(y, y), x), y * 2);
  if (delta == 0)
   break;
  y = fp16_sub(y, delta);
 }
 return (y);
}
