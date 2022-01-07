
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {int dummy; } ;


 int ticket_zone ;
 void uma_zfree (int ,struct fuse_ticket*) ;

__attribute__((used)) static inline void
fticket_destroy(struct fuse_ticket *ftick)
{
 return uma_zfree(ticket_zone, ftick);
}
