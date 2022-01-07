
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stream_filter {int dummy; } ;
struct TYPE_2__ {int * vtbl; } ;
struct cascade_filter {TYPE_1__ filter; scalar_t__ ptr; scalar_t__ end; struct stream_filter* two; struct stream_filter* one; } ;


 int cascade_vtbl ;
 scalar_t__ is_null_stream_filter (struct stream_filter*) ;
 struct cascade_filter* xmalloc (int) ;

__attribute__((used)) static struct stream_filter *cascade_filter(struct stream_filter *one,
         struct stream_filter *two)
{
 struct cascade_filter *cascade;

 if (!one || is_null_stream_filter(one))
  return two;
 if (!two || is_null_stream_filter(two))
  return one;

 cascade = xmalloc(sizeof(*cascade));
 cascade->one = one;
 cascade->two = two;
 cascade->end = cascade->ptr = 0;
 cascade->filter.vtbl = &cascade_vtbl;
 return (struct stream_filter *)cascade;
}
