
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockbuf {int * sb_tls_info; } ;


 int ktls_free (int *) ;
 int sbrelease_internal (struct sockbuf*,struct socket*) ;

void
sbdestroy(struct sockbuf *sb, struct socket *so)
{

 sbrelease_internal(sb, so);





}
