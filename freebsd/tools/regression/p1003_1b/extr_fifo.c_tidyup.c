
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGHUP ;
 scalar_t__ child ;
 int kill (scalar_t__,int ) ;

__attribute__((used)) static void tidyup(void)
{
 if (child)
  kill(child, SIGHUP);
}
