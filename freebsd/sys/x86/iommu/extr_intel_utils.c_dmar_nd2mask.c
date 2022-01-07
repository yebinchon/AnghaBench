
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int KASSERT (int,char*) ;

u_int
dmar_nd2mask(u_int nd)
{
 static const u_int masks[] = {
  0x000f,
  0x002f,
  0x00ff,
  0x02ff,
  0x0fff,
  0x2fff,
  0xffff,
  0x0000,
 };

 KASSERT(nd <= 6, ("number of domains %d", nd));
 return (masks[nd]);
}
