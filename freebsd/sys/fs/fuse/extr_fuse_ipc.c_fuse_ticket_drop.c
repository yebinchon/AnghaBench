
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {int tk_refcount; } ;


 int fticket_destroy (struct fuse_ticket*) ;
 int refcount_release (int *) ;

int
fuse_ticket_drop(struct fuse_ticket *ftick)
{
 int die;

 die = refcount_release(&ftick->tk_refcount);
 if (die)
  fticket_destroy(ftick);

 return die;
}
