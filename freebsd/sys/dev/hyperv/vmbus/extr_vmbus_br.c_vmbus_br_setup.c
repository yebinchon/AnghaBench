
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_bufring {int dummy; } ;
struct vmbus_br {int vbr_dsize; void* vbr; } ;



__attribute__((used)) static void
vmbus_br_setup(struct vmbus_br *br, void *buf, int blen)
{
 br->vbr = buf;
 br->vbr_dsize = blen - sizeof(struct vmbus_bufring);
}
