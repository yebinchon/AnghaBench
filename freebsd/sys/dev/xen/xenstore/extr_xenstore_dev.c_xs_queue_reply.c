
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_dev_data {char* read_buffer; int ev_rsel; int read_cons; int read_prod; } ;


 int KASSERT (int,char*) ;
 size_t MASK_READ_IDX (int ) ;
 int selwakeup (int *) ;
 int wakeup (struct xs_dev_data*) ;

__attribute__((used)) static void
xs_queue_reply(struct xs_dev_data *u, const char *data, unsigned int len)
{
 unsigned int i;

 for (i = 0; i < len; i++, u->read_prod++)
  u->read_buffer[MASK_READ_IDX(u->read_prod)] = data[i];

 KASSERT((u->read_prod - u->read_cons) <= sizeof(u->read_buffer),
     ("xenstore reply too big"));

 wakeup(u);
 selwakeup(&u->ev_rsel);
}
