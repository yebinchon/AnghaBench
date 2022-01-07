
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_filter {int dummy; } ;
struct cascade_filter {int two; int one; } ;


 int free (struct stream_filter*) ;
 int free_stream_filter (int ) ;

__attribute__((used)) static void cascade_free_fn(struct stream_filter *filter)
{
 struct cascade_filter *cas = (struct cascade_filter *)filter;
 free_stream_filter(cas->one);
 free_stream_filter(cas->two);
 free(filter);
}
