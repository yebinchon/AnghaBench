
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dev_rel (void*) ;

__attribute__((used)) static void
old_dev_pager_dtor(void *handle)
{

 dev_rel(handle);
}
