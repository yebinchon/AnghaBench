
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iconvlist (int ,void*) ;
 int iconvlist_cb ;

__attribute__((used)) static int
gnu_iconvlist(void)
{
 int i;

 iconvlist(iconvlist_cb, (void *)&i);
 return (i);
}
