
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uma_zone_t ;


 int M_WAITOK ;
 void* uma_zalloc_arg (int ,int *,int ) ;
 int uma_zfree (int ,void*) ;

void
uma_zwait(uma_zone_t zone)
{
 void *item;

 item = uma_zalloc_arg(zone, ((void*)0), M_WAITOK);
 uma_zfree(zone, item);
}
