
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* node_p ;
struct TYPE_4__ {int q_flags; } ;
struct TYPE_5__ {TYPE_1__ nd_input_queue; } ;


 int READER_INCREMENT ;
 int atomic_subtract_rel_int (int *,int ) ;

__attribute__((used)) static __inline void
ng_leave_read(node_p node)
{
 atomic_subtract_rel_int(&node->nd_input_queue.q_flags, READER_INCREMENT);
}
