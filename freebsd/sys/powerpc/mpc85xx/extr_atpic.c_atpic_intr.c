
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atpic_dispatch (void*,int *) ;

__attribute__((used)) static void
atpic_intr(void *arg)
{

 atpic_dispatch(arg, ((void*)0));
}
