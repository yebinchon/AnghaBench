
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fs_knlist ;
 int knlist_init_mtx (int *,int *) ;

__attribute__((used)) static void
vfs_event_init(void *arg)
{
 knlist_init_mtx(&fs_knlist, ((void*)0));
}
