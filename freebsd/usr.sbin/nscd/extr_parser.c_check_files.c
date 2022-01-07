
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration {int dummy; } ;


 int TRACE_IN (void (*) (struct configuration*,char const*,int)) ;
 int TRACE_OUT (void (*) (struct configuration*,char const*,int)) ;
 int assert (int ) ;

__attribute__((used)) static void
check_files(struct configuration *config, const char *entry_name, int flag)
{

 TRACE_IN(check_files);
 assert(entry_name != ((void*)0));
 TRACE_OUT(check_files);
}
