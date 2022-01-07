
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ value; } ;
typedef enum thread_level { ____Placeholder_thread_level } thread_level ;


 int THREAD_DEEP ;
 int THREAD_SHALLOW ;
 int THREAD_UNSET ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int thread_callback(const struct option *opt, const char *arg, int unset)
{
 enum thread_level *thread = (enum thread_level *)opt->value;
 if (unset)
  *thread = THREAD_UNSET;
 else if (!arg || !strcmp(arg, "shallow"))
  *thread = THREAD_SHALLOW;
 else if (!strcmp(arg, "deep"))
  *thread = THREAD_DEEP;




 else
  return 1;
 return 0;
}
