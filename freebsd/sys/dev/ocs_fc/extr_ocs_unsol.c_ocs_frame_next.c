
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_lock_t ;
typedef int ocs_list_t ;
typedef int ocs_hw_sequence_t ;


 int * ocs_list_remove_head (int *) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static ocs_hw_sequence_t *
ocs_frame_next(ocs_list_t *pend_list, ocs_lock_t *list_lock)
{
 ocs_hw_sequence_t *frame = ((void*)0);

 ocs_lock(list_lock);
  frame = ocs_list_remove_head(pend_list);
 ocs_unlock(list_lock);
 return frame;
}
