
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_NOWAIT ;
 int devctl_queue_data_f (char*,int ) ;

void
devctl_queue_data(char *data)
{

 devctl_queue_data_f(data, M_NOWAIT);
}
