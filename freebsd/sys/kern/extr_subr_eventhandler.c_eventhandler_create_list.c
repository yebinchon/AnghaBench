
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventhandler_list {int dummy; } ;


 int KASSERT (int ,char*) ;
 struct eventhandler_list* eventhandler_find_or_create_list (char const*) ;
 int eventhandler_lists_initted ;
 int eventhandler_mutex ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

struct eventhandler_list *
eventhandler_create_list(const char *name)
{
 struct eventhandler_list *list;

 KASSERT(eventhandler_lists_initted,
     ("eventhandler list created too early"));

 mtx_lock(&eventhandler_mutex);
 list = eventhandler_find_or_create_list(name);
 mtx_unlock(&eventhandler_mutex);

 return (list);
}
