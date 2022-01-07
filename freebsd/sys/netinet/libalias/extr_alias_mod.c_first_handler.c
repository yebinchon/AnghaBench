
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_handler {int dummy; } ;


 struct proto_handler* TAILQ_FIRST (int *) ;
 int handler_chain ;

struct proto_handler *
first_handler(void)
{

 return (TAILQ_FIRST(&handler_chain));
}
