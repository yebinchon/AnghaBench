
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setlist {int dummy; } ;


 int LIST_INIT (struct setlist*) ;
 int cpuset_freelist_add (struct setlist*,int) ;

__attribute__((used)) static void
cpuset_freelist_init(struct setlist *list, int count)
{

 LIST_INIT(list);
 cpuset_freelist_add(list, count);
}
