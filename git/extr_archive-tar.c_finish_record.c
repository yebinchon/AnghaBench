
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RECORDSIZE ;
 scalar_t__ block ;
 int memset (scalar_t__,int ,unsigned long) ;
 unsigned long offset ;
 int write_if_needed () ;

__attribute__((used)) static void finish_record(void)
{
 unsigned long tail;
 tail = offset % RECORDSIZE;
 if (tail) {
  memset(block + offset, 0, RECORDSIZE - tail);
  offset += RECORDSIZE - tail;
 }
 write_if_needed();
}
