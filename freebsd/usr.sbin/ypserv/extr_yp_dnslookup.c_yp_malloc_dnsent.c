
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circleq_dnsentry {int dummy; } ;


 struct circleq_dnsentry* malloc (int) ;
 int yp_error (char*) ;

__attribute__((used)) static struct
circleq_dnsentry *yp_malloc_dnsent(void)
{
 register struct circleq_dnsentry *q;

 q = malloc(sizeof(struct circleq_dnsentry));

 if (q == ((void*)0)) {
  yp_error("failed to malloc() circleq dns entry");
  return(((void*)0));
 }

 return(q);
}
