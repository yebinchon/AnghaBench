
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration {int entries_capacity; int rwlock; int * entries; } ;


 int INITIAL_ENTRIES_CAPACITY ;
 int TRACE_IN (struct configuration* (*) ()) ;
 int TRACE_OUT (struct configuration* (*) ()) ;
 int assert (int ) ;
 void* calloc (int,int) ;
 int pthread_rwlock_init (int *,int *) ;

struct configuration *
init_configuration(void)
{
 struct configuration *retval;

 TRACE_IN(init_configuration);
 retval = calloc(1, sizeof(*retval));
 assert(retval != ((void*)0));

 retval->entries_capacity = INITIAL_ENTRIES_CAPACITY;
 retval->entries = calloc(retval->entries_capacity,
  sizeof(*retval->entries));
 assert(retval->entries != ((void*)0));

 pthread_rwlock_init(&retval->rwlock, ((void*)0));

 TRACE_OUT(init_configuration);
 return (retval);
}
