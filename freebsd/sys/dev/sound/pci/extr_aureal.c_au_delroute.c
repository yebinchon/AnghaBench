
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_info {int* z; int* y; int* x; int routes; } ;


 scalar_t__ AU_REG_RTBASE ;
 int au_rd (struct au_info*,int ,scalar_t__,int) ;
 int au_setbit (int ,int,int ) ;
 int au_wr (struct au_info*,int ,scalar_t__,int,int) ;

__attribute__((used)) static void
au_delroute(struct au_info *au, int route)
{
 int i;
 int j=au->z[route];

 au_setbit(au->routes, route, 0);
 au->z[route]=0x1f;
 i=au_rd(au, 0, AU_REG_RTBASE+(route<<2), 4);
 au_wr(au, 0, AU_REG_RTBASE+(au->y[route]<<2), i, 4);
 au->y[i & 0x7f]=au->y[route];
 au_wr(au, 0, AU_REG_RTBASE+(route<<2), 0xfffffffe, 4);
 if (au->x[j] == route) au->x[j]=au->y[route];
 au->y[route]=0x7f;
}
