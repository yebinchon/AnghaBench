
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chat {int dummy; } ;


 int chat_Finish (struct chat*) ;

void
chat_Destroy(struct chat *c)
{
  chat_Finish(c);
}
