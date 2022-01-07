
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ndptr ;
struct TYPE_6__ {int * d; int builtin_type; int trace_flags; } ;


 int FLAG_NO_TRACE ;
 int MACRTYPE ;
 int macro_info ;
 int macros ;
 TYPE_1__* ohash_create_entry (int *,char const*,char const**) ;
 TYPE_1__* ohash_find (int *,unsigned int) ;
 int ohash_insert (int *,unsigned int,TYPE_1__*) ;
 unsigned int ohash_qlookupi (int *,char const*,char const**) ;

__attribute__((used)) static ndptr
create_entry(const char *name)
{
 const char *end = ((void*)0);
 unsigned int i;
 ndptr n;

 i = ohash_qlookupi(&macros, name, &end);
 n = ohash_find(&macros, i);
 if (n == ((void*)0)) {
  n = ohash_create_entry(&macro_info, name, &end);
  ohash_insert(&macros, i, n);
  n->trace_flags = FLAG_NO_TRACE;
  n->builtin_type = MACRTYPE;
  n->d = ((void*)0);
 }
 return n;
}
