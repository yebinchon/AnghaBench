
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int printf (char*,...) ;
 int* quant ;
 char** sep ;

__attribute__((used)) static void
prtime(char *s, time_t a)
{
 int i;
 int nums[3];

 for (i = 0; i < 3; i++) {
  nums[i] = (int)(a % quant[i]);
  a /= quant[i];
 }
 printf("%s", s);
 while (--i >= 0)
  if (nums[i] || (i == 0 && nums[1] == 0 && nums[2] == 0))
   printf("%d %s%c ", nums[i], sep[i],
    nums[i] == 1 ? '\0' : 's');
 printf("\r\n!\r\n");
}
