
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {int dummy; } ;


 int M_WAITOK ;
 int UMA_ALIGN_PTR ;
 int counter_u64_alloc (int ) ;
 int fticket_ctor ;
 int fticket_dtor ;
 int fticket_fini ;
 int fticket_init ;
 int fuse_ticket_count ;
 int ticket_zone ;
 int uma_zcreate (char*,int,int ,int ,int ,int ,int ,int ) ;

void
fuse_ipc_init(void)
{
 ticket_zone = uma_zcreate("fuse_ticket", sizeof(struct fuse_ticket),
     fticket_ctor, fticket_dtor, fticket_init, fticket_fini,
     UMA_ALIGN_PTR, 0);
 fuse_ticket_count = counter_u64_alloc(M_WAITOK);
}
