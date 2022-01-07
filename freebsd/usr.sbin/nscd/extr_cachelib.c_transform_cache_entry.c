
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry_ {int dummy; } ;
typedef enum cache_transformation_t { ____Placeholder_cache_transformation_t } cache_transformation_t ;




 int TRACE_IN (int (*) (struct cache_entry_*,int)) ;
 int TRACE_OUT (int (*) (struct cache_entry_*,int)) ;
 int clear_cache_entry (struct cache_entry_*) ;
 int flush_cache_entry (struct cache_entry_*) ;

int
transform_cache_entry(struct cache_entry_ *entry,
 enum cache_transformation_t transformation)
{

 TRACE_IN(transform_cache_entry);
 switch (transformation) {
 case 129:
  clear_cache_entry(entry);
  TRACE_OUT(transform_cache_entry);
  return (0);
 case 128:
  flush_cache_entry(entry);
  TRACE_OUT(transform_cache_entry);
  return (0);
 default:
  TRACE_OUT(transform_cache_entry);
  return (-1);
 }
}
