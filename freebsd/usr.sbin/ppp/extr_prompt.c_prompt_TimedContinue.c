
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int dummy; } ;


 int prompt_Continue (struct prompt*) ;

__attribute__((used)) static void
prompt_TimedContinue(void *v)
{
  prompt_Continue((struct prompt *)v);
}
