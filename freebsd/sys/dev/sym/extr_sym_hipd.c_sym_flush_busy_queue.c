
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hcb_p ;
struct TYPE_4__ {int busy_ccbq; int comp_ccbq; } ;


 int sym_flush_comp_queue (TYPE_1__*,int) ;
 int sym_que_init (int *) ;
 int sym_que_splice (int *,int *) ;

__attribute__((used)) static void sym_flush_busy_queue (hcb_p np, int cam_status)
{




 sym_que_splice(&np->busy_ccbq, &np->comp_ccbq);
 sym_que_init(&np->busy_ccbq);
 sym_flush_comp_queue(np, cam_status);
}
