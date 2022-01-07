
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int client_data_lock; int client_data_list; int name; } ;
struct ib_client_data {int going_down; int list; int * data; struct ib_client* client; } ;
struct ib_client {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int down_write (int *) ;
 struct ib_client_data* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int lists_rwsem ;
 int pr_warn (char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up_write (int *) ;

__attribute__((used)) static int add_client_context(struct ib_device *device, struct ib_client *client)
{
 struct ib_client_data *context;
 unsigned long flags;

 context = kmalloc(sizeof *context, GFP_KERNEL);
 if (!context) {
  pr_warn("Couldn't allocate client context for %s/%s\n",
   device->name, client->name);
  return -ENOMEM;
 }

 context->client = client;
 context->data = ((void*)0);
 context->going_down = 0;

 down_write(&lists_rwsem);
 spin_lock_irqsave(&device->client_data_lock, flags);
 list_add(&context->list, &device->client_data_list);
 spin_unlock_irqrestore(&device->client_data_lock, flags);
 up_write(&lists_rwsem);

 return 0;
}
