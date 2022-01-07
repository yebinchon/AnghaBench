
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel {int * ch_dev; TYPE_1__* ch_vmbus; } ;
struct TYPE_2__ {int vmbus_dev; } ;


 int Giant ;
 int device_delete_child (int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
vmbus_delete_child(struct vmbus_channel *chan)
{
 int error = 0;

 mtx_lock(&Giant);
 if (chan->ch_dev != ((void*)0)) {
  error = device_delete_child(chan->ch_vmbus->vmbus_dev,
      chan->ch_dev);
  chan->ch_dev = ((void*)0);
 }
 mtx_unlock(&Giant);
 return (error);
}
