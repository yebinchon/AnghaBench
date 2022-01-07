
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eval_string (char*) ;
 char* pop_string () ;

__attribute__((used)) static void
eval_tos(void)
{
 char *p;

 p = pop_string();
 if (p != ((void*)0))
  eval_string(p);
}
