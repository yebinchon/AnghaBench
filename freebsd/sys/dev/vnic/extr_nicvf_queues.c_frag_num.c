
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static __inline u_int
frag_num(u_int i)
{

 return ((i & ~3) + 3 - (i & 3));



}
