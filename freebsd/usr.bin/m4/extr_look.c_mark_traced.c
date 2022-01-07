
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ndptr ;
struct TYPE_5__ {int trace_flags; } ;


 int FLAG_NO_TRACE ;
 int TRACE_ALL ;
 TYPE_1__* create_entry (char const*) ;
 int macros ;
 TYPE_1__* ohash_first (int *,unsigned int*) ;
 TYPE_1__* ohash_next (int *,unsigned int*) ;
 int trace_flags ;

void
mark_traced(const char *name, int on)
{
 ndptr p;
 unsigned int i;

 if (name == ((void*)0)) {
  if (on)
   trace_flags |= TRACE_ALL;
  else
   trace_flags &= ~TRACE_ALL;
  for (p = ohash_first(&macros, &i); p != ((void*)0);
      p = ohash_next(&macros, &i))
   p->trace_flags = FLAG_NO_TRACE;
 } else {
  p = create_entry(name);
  p->trace_flags = on;
 }
}
