
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int poll_shutting_down ;

__attribute__((used)) static void
poll_shutdown(void *arg, int howto)
{

 poll_shutting_down = 1;
}
