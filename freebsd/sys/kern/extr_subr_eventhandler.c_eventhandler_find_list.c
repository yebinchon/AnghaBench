
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventhandler_list {int dummy; } ;


 int EHL_LOCK (struct eventhandler_list*) ;
 struct eventhandler_list* _eventhandler_find_list (char const*) ;
 int eventhandler_lists_initted ;
 int eventhandler_mutex ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

struct eventhandler_list *
eventhandler_find_list(const char *name)
{
    struct eventhandler_list *list;

    if (!eventhandler_lists_initted)
 return(((void*)0));


    mtx_lock(&eventhandler_mutex);
    list = _eventhandler_find_list(name);
    if (list != ((void*)0))
 EHL_LOCK(list);
    mtx_unlock(&eventhandler_mutex);

    return(list);
}
