
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exhaust_unnamed_child (void*) ;
 int fdlimit_set (void*) ;

__attribute__((used)) static int
fdlimit_unnamed_child(void *arg)
{
 int stat;

 stat = fdlimit_set(arg);
 if (stat == 0)
  stat = exhaust_unnamed_child(arg);
 return (stat);
}
