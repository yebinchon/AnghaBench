
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {void* cn_arg; } ;


 size_t DCONS_CON ;
 int dcons_drv_init (int ) ;
 int * sc ;

__attribute__((used)) static void
dcons_cninit(struct consdev *cp)
{
 dcons_drv_init(0);
 cp->cn_arg = (void *)&sc[DCONS_CON];
}
