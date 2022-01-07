
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_exe_queue_obj {int pending_comp; int exe_queue; } ;


 int ECORE_LIST_IS_EMPTY (int *) ;
 int mb () ;

__attribute__((used)) static inline bool ecore_exe_queue_empty(struct ecore_exe_queue_obj *o)
{
 bool empty = ECORE_LIST_IS_EMPTY(&o->exe_queue);


 mb();

 return empty && ECORE_LIST_IS_EMPTY(&o->pending_comp);
}
