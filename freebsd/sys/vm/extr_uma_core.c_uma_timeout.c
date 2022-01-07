
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UMA_TIMEOUT ;
 int bucket_enable () ;
 int callout_reset (int *,int,void (*) (void*),int *) ;
 int hz ;
 int uma_callout ;
 int zone_foreach (int ) ;
 int zone_timeout ;

__attribute__((used)) static void
uma_timeout(void *unused)
{
 bucket_enable();
 zone_foreach(zone_timeout);


 callout_reset(&uma_callout, UMA_TIMEOUT * hz, uma_timeout, ((void*)0));
}
