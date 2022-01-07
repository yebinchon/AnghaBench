
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tcp_hpts_thread (void*) ;

__attribute__((used)) static void
hpts_timeout_dir(void *arg)
{
 tcp_hpts_thread(arg);
}
