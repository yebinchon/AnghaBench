
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_filter {int dummy; } ;
struct ident_filter {int left; } ;


 int free (struct stream_filter*) ;
 int strbuf_release (int *) ;

__attribute__((used)) static void ident_free_fn(struct stream_filter *filter)
{
 struct ident_filter *ident = (struct ident_filter *)filter;
 strbuf_release(&ident->left);
 free(filter);
}
