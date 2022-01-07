
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventhandler_list {int dummy; } ;
typedef int eventhandler_tag ;


 int _eventhandler_deregister (struct eventhandler_list*,int ,int) ;

void
eventhandler_deregister_nowait(struct eventhandler_list *list,
    eventhandler_tag tag)
{

 _eventhandler_deregister(list, tag, 0);
}
