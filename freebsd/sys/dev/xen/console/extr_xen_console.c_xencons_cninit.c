
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int xencons_early_init () ;

__attribute__((used)) static void
xencons_cninit(struct consdev *cp)
{

 xencons_early_init();
}
