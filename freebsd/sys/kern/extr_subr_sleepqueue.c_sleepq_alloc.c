
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue {int dummy; } ;


 int M_WAITOK ;
 int sleepq_zone ;
 struct sleepqueue* uma_zalloc (int ,int ) ;

struct sleepqueue *
sleepq_alloc(void)
{

 return (uma_zalloc(sleepq_zone, M_WAITOK));
}
