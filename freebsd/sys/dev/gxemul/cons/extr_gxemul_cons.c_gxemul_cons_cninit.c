
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int GC_LOCK_INIT () ;

__attribute__((used)) static void
gxemul_cons_cninit(struct consdev *cp)
{

 GC_LOCK_INIT();
}
