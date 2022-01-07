
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_filter {int dummy; } ;


 int free (struct stream_filter*) ;

__attribute__((used)) static void lf_to_crlf_free_fn(struct stream_filter *filter)
{
 free(filter);
}
