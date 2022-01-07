
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int signaled ;

__attribute__((used)) static int
got_signal(void)
{

 return (signaled);
}
