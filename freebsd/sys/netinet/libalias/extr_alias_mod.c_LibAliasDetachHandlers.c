
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_handler {scalar_t__ dir; } ;


 scalar_t__ NODIR ;
 int TAILQ_REMOVE (int *,struct proto_handler*,int ) ;
 int handler_chain ;
 int link ;

int
LibAliasDetachHandlers(struct proto_handler *p)
{

 while (p->dir != NODIR) {
  TAILQ_REMOVE(&handler_chain, p, link);
  p++;
 }

 return (0);
}
