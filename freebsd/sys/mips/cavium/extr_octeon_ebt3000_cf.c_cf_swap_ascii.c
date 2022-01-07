
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODEL_STR_SIZE ;

__attribute__((used)) static void cf_swap_ascii (unsigned char str1[], char str2[])
{
 int i;

 for(i = 0; i < MODEL_STR_SIZE; i++)
  str2[i] = str1[i ^ 1];
}
