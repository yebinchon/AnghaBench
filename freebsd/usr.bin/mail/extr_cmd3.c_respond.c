
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int doRespond (int*) ;
 int dorespond (int*) ;
 int * value (char*) ;

int
respond(void *v)
{
 int *msgvec = v;

 if (value("Replyall") == ((void*)0) && value("flipr") == ((void*)0))
  return (dorespond(msgvec));
 else
  return (doRespond(msgvec));
}
