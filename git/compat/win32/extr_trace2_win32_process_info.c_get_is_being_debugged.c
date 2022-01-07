
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsDebuggerPresent () ;
 int the_repository ;
 int trace2_data_intmax (char*,int ,char*,int) ;

__attribute__((used)) static void get_is_being_debugged(void)
{
 if (IsDebuggerPresent())
  trace2_data_intmax("process", the_repository,
       "windows/debugger_present", 1);
}
