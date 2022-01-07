
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int dummy; } ;


 struct prompt* promptlist ;

struct prompt *
log_PromptList()
{
  return promptlist;
}
