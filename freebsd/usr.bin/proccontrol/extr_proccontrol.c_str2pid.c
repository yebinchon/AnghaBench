
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int strtol (char const*,char**,int ) ;
 int warnx (char*) ;

__attribute__((used)) static pid_t
str2pid(const char *str)
{
 pid_t res;
 char *tail;

 res = strtol(str, &tail, 0);
 if (*tail != '\0') {
  warnx("non-numeric pid");
  return (-1);
 }
 return (res);
}
