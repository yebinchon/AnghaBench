
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_daddr_t ;



__attribute__((used)) static inline u_daddr_t
flip_hibits(u_daddr_t mask)
{

 return (-mask & ~mask);
}
