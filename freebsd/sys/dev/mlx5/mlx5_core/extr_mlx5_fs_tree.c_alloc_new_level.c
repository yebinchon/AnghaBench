
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_prio {int dummy; } ;


 unsigned int _alloc_new_level (struct fs_prio*,int *) ;

__attribute__((used)) static unsigned int alloc_new_level(struct fs_prio *prio)
{
 return _alloc_new_level(prio, ((void*)0));
}
