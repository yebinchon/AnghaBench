
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue {int dummy; } ;


 int sleepq_zone ;
 int uma_zfree (int ,struct sleepqueue*) ;

void
sleepq_free(struct sleepqueue *sq)
{

 uma_zfree(sleepq_zone, sq);
}
