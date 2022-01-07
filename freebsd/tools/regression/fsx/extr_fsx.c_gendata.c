
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int testcalls ;

void
gendata(char *original_buf, char *good_buf, unsigned offset, unsigned size)
{
 while (size--) {
  good_buf[offset] = testcalls % 256;
  if (offset % 2)
   good_buf[offset] += original_buf[offset];
  offset++;
 }
}
