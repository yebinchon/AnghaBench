
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getsysctl (char*) ;

__attribute__((used)) static int
getdeferred(void)
{

 return (getsysctl("net.local.deferred"));
}
