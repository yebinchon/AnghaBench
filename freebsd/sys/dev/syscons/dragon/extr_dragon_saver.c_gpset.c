
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCRH ;
 int SCRW ;
 int* vid ;

__attribute__((used)) static __inline int
gpset(int x, int y, int val)
{
 if (x < 0 || y < 0 || SCRW <= x || SCRH <= y) {
  return 0;
 }
 vid[x + y * SCRW] = val;
 return 1;
}
