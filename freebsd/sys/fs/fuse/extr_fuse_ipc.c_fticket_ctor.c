
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {scalar_t__ tk_unique; int tk_refcount; scalar_t__ irq_unique; struct fuse_data* tk_data; } ;
struct fuse_data {int ticketer; } ;


 int FUSE_ASSERT_AW_DONE (struct fuse_ticket*) ;
 int FUSE_ASSERT_MS_DONE (struct fuse_ticket*) ;
 void* atomic_fetchadd_long (int *,int) ;
 int counter_u64_add (int ,int) ;
 int fticket_refresh (struct fuse_ticket*) ;
 int fuse_ticket_count ;
 int refcount_init (int *,int) ;

__attribute__((used)) static int
fticket_ctor(void *mem, int size, void *arg, int flags)
{
 struct fuse_ticket *ftick = mem;
 struct fuse_data *data = arg;

 FUSE_ASSERT_MS_DONE(ftick);
 FUSE_ASSERT_AW_DONE(ftick);

 ftick->tk_data = data;

 if (ftick->tk_unique != 0)
  fticket_refresh(ftick);


 ftick->tk_unique = atomic_fetchadd_long(&data->ticketer, 1);
 if (ftick->tk_unique == 0)
  ftick->tk_unique = atomic_fetchadd_long(&data->ticketer, 1);

 ftick->irq_unique = 0;

 refcount_init(&ftick->tk_refcount, 1);
 counter_u64_add(fuse_ticket_count, 1);

 return 0;
}
