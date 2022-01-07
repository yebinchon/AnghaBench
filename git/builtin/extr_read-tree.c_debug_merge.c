
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int merge_size; } ;
struct cache_entry {int dummy; } ;
typedef int buf ;


 int debug_stage (char*,struct cache_entry const* const,struct unpack_trees_options*) ;
 int printf (char*,int) ;
 int xsnprintf (char*,int,char*,int) ;

__attribute__((used)) static int debug_merge(const struct cache_entry * const *stages,
         struct unpack_trees_options *o)
{
 int i;

 printf("* %d-way merge\n", o->merge_size);
 debug_stage("index", stages[0], o);
 for (i = 1; i <= o->merge_size; i++) {
  char buf[24];
  xsnprintf(buf, sizeof(buf), "ent#%d", i);
  debug_stage(buf, stages[i], o);
 }
 return 0;
}
