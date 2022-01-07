
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_consumer {int dummy; } ;


 int g_access (struct g_consumer*,int,int,int ) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_detach (struct g_consumer*) ;

__attribute__((used)) static void
swapgeom_close_ev(void *arg, int flags)
{
 struct g_consumer *cp;

 cp = arg;
 g_access(cp, -1, -1, 0);
 g_detach(cp);
 g_destroy_consumer(cp);
}
