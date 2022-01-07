
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_probedesc_t ;


 int au_evnamemap_foreach (int ) ;
 int dtaudit_au_evnamemap_callback ;

__attribute__((used)) static void
dtaudit_provide(void *arg, dtrace_probedesc_t *desc)
{





 au_evnamemap_foreach(dtaudit_au_evnamemap_callback);
}
