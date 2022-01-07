
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_filter {int dummy; } ;


 struct stream_filter null_filter_singleton ;

int is_null_stream_filter(struct stream_filter *filter)
{
 return filter == &null_filter_singleton;
}
