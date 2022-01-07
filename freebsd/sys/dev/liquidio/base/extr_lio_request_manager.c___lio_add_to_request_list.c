
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lio_instr_queue {TYPE_1__* request_list; } ;
struct TYPE_2__ {int reqtype; void* buf; } ;



__attribute__((used)) static inline void
__lio_add_to_request_list(struct lio_instr_queue *iq, int idx, void *buf,
     int reqtype)
{

 iq->request_list[idx].buf = buf;
 iq->request_list[idx].reqtype = reqtype;
}
