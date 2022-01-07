
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int warning (int *,char const*) ;

__attribute__((used)) static void
error(const char *msg)
{
 warning(((void*)0), msg);
 exit(1);
}
