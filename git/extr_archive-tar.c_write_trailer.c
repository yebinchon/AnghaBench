
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLOCKSIZE ;
 int RECORDSIZE ;
 scalar_t__ block ;
 int memset (scalar_t__,int ,int) ;
 int offset ;
 int write_or_die (int,scalar_t__,int) ;

__attribute__((used)) static void write_trailer(void)
{
 int tail = BLOCKSIZE - offset;
 memset(block + offset, 0, tail);
 write_or_die(1, block, BLOCKSIZE);
 if (tail < 2 * RECORDSIZE) {
  memset(block, 0, offset);
  write_or_die(1, block, BLOCKSIZE);
 }
}
