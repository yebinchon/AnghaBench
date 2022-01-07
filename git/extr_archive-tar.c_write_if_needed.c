
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BLOCKSIZE ;
 int block ;
 scalar_t__ offset ;
 int write_or_die (int,int ,scalar_t__) ;

__attribute__((used)) static void write_if_needed(void)
{
 if (offset == BLOCKSIZE) {
  write_or_die(1, block, BLOCKSIZE);
  offset = 0;
 }
}
