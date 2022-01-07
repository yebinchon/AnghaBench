
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipw_init (void*) ;

__attribute__((used)) static void
ipw_init_task(void *context, int pending)
{
 ipw_init(context);
}
