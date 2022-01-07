
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int counter_u64_free (int ) ;
 int fuse_ticket_count ;
 int ticket_zone ;
 int uma_zdestroy (int ) ;

void
fuse_ipc_destroy(void)
{
 counter_u64_free(fuse_ticket_count);
 uma_zdestroy(ticket_zone);
}
