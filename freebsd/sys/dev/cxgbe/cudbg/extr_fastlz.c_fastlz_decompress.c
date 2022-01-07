
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fastlz1_decompress (void const*,int,void*,int) ;
 int fastlz2_decompress (void const*,int,void*,int) ;

int fastlz_decompress(const void *input, int length, void *output, int maxout)
{

 int level = ((*(const unsigned char *)input) >> 5) + 1;

 if (level == 1)
  return fastlz1_decompress(input, length, output, maxout);
 if (level == 2)
  return fastlz2_decompress(input, length, output, maxout);


 return 0;
}
