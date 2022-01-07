
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_base {int users_refcount; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void fs_get(struct fs_base *node)
{
 atomic_inc(&node->users_refcount);
}
