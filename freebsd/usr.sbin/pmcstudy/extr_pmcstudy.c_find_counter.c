
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {char const* counter_name; struct counters* next_cpu; } ;


 int exit (int) ;
 int printf (char*,...) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static struct counters *
find_counter(struct counters *base, const char *name)
{
 struct counters *at;
 int len;

 at = base;
 len = strlen(name);
 while(at) {
  if (strncmp(at->counter_name, name, len) == 0) {
   return(at);
  }
  at = at->next_cpu;
 }
 printf("Can't find counter %s\n", name);
 printf("We have:\n");
 at = base;
 while(at) {
  printf("- %s\n", at->counter_name);
  at = at->next_cpu;
 }
 exit(-1);
}
