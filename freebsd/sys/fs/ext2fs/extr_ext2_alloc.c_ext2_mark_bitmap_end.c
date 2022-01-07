
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,int,int) ;
 int setbit (char*,int) ;

__attribute__((used)) static void
ext2_mark_bitmap_end(int start_bit, int end_bit, char *bitmap)
{
 int i;

 if (start_bit >= end_bit)
  return;

 for (i = start_bit; i < ((start_bit + 7) & ~7UL); i++)
  setbit(bitmap, i);
 if (i < end_bit)
  memset(bitmap + (i >> 3), 0xff, (end_bit - i) >> 3);
}
