
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ffs (int) ;

__attribute__((used)) static inline int
e82545_size_stat_index(uint32_t size)
{
 if (size <= 64) {
  return 0;
 } else if (size >= 1024) {
  return 5;
 } else {

  return (ffs(size) - 6);
 }
}
