
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_handler {scalar_t__ dir; } ;


 scalar_t__ NODIR ;
 int attach_handler (struct proto_handler*) ;

int
LibAliasAttachHandlers(struct proto_handler *p)
{
 int error;

 while (p->dir != NODIR) {
  error = attach_handler(p);
  if (error)
   return (error);
  p++;
 }

 return (0);
}
