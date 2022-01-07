
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {int dummy; } ;
struct fuse_data {int dummy; } ;


 int M_WAITOK ;
 int ticket_zone ;
 struct fuse_ticket* uma_zalloc_arg (int ,struct fuse_data*,int ) ;

__attribute__((used)) static inline struct fuse_ticket *
fticket_alloc(struct fuse_data *data)
{
 return uma_zalloc_arg(ticket_zone, data, M_WAITOK);
}
