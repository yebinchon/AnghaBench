
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long long available_free_memory ;
 scalar_t__ errno ;
 int getstr (int) ;
 int optarg ;
 unsigned long long strtoll (char const*,char**,int) ;
 int warn (char*,int ) ;
 int warnc (int ,char*,int ) ;

__attribute__((used)) static unsigned long long
parse_memory_buffer_value(const char *value)
{

 if (value == ((void*)0))
  return (available_free_memory);
 else {
  char *endptr;
  unsigned long long membuf;

  endptr = ((void*)0);
  errno = 0;
  membuf = strtoll(value, &endptr, 10);

  if (errno != 0) {
   warn("%s",getstr(4));
   membuf = available_free_memory;
  } else {
   switch (*endptr){
   case 'Y':
    membuf *= 1024;

   case 'Z':
    membuf *= 1024;

   case 'E':
    membuf *= 1024;

   case 'P':
    membuf *= 1024;

   case 'T':
    membuf *= 1024;

   case 'G':
    membuf *= 1024;

   case 'M':
    membuf *= 1024;

   case '\0':
   case 'K':
    membuf *= 1024;

   case 'b':
    break;
   case '%':
    membuf = (available_free_memory * membuf) /
        100;
    break;
   default:
    warnc(EINVAL, "%s", optarg);
    membuf = available_free_memory;
   }
  }
  return (membuf);
 }
}
