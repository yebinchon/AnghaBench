
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int doRespond (int*) ;
 int dorespond (int*) ;
 int * value (char*) ;

int
Respond(int *msgvec)
{
 if (value("Replyall") == ((void*)0) && value("flipr") == ((void*)0))
  return (doRespond(msgvec));
 else
  return (dorespond(msgvec));
}
