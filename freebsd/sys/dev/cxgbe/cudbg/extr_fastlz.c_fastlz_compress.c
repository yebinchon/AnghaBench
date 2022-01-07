
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fastlz1_compress (void const*,int,void*) ;
 int fastlz2_compress (void const*,int,void*) ;

int fastlz_compress(const void *input, int length, void *output)
{

 if (length < 65536)
  return fastlz1_compress(input, length, output);


 return fastlz2_compress(input, length, output);
}
