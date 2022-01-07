
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtaskqueue {int dummy; } ;
struct gtask {int dummy; } ;


 int TQ_LOCK (struct gtaskqueue*) ;
 int TQ_UNLOCK (struct gtaskqueue*) ;
 int gtaskqueue_cancel_locked (struct gtaskqueue*,struct gtask*) ;

int
gtaskqueue_cancel(struct gtaskqueue *queue, struct gtask *gtask)
{
 int error;

 TQ_LOCK(queue);
 error = gtaskqueue_cancel_locked(queue, gtask);
 TQ_UNLOCK(queue);

 return (error);
}
