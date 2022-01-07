
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_EMPTY (int *) ;
 int LIST_FIRST (int *) ;
 int LibAliasUninit (int ) ;
 int instancehead ;

__attribute__((used)) static void
finishoff(void)
{

 while (!LIST_EMPTY(&instancehead))
  LibAliasUninit(LIST_FIRST(&instancehead));
}
