
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ffs (int ) ;

__attribute__((used)) static int
nat64lsn_find_pg_place(uint32_t *data)
{
 int i;

 for (i = 0; i < 32; i++) {
  if (~data[i] == 0)
   continue;
  return (i * 32 + ffs(~data[i]) - 1);
 }
 return (-1);
}
