
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stream_filter {int dummy; } ;
struct TYPE_2__ {int * vtbl; } ;
struct lf_to_crlf_filter {TYPE_1__ filter; } ;


 int lf_to_crlf_vtbl ;
 struct lf_to_crlf_filter* xcalloc (int,int) ;

__attribute__((used)) static struct stream_filter *lf_to_crlf_filter(void)
{
 struct lf_to_crlf_filter *lf_to_crlf = xcalloc(1, sizeof(*lf_to_crlf));

 lf_to_crlf->filter.vtbl = &lf_to_crlf_vtbl;
 return (struct stream_filter *)lf_to_crlf;
}
