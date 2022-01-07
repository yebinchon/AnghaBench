
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitset {int dummy; } ;
typedef int cpuset_t ;


 int CPUSETBUFSIZ ;
 int CPU_SETSIZE ;
 size_t bitset_strscan (struct bitset*,int ,char const*) ;
 int strlen (char const*) ;

int
cpusetobj_strscan(cpuset_t *set, const char *buf)
{
 char p;

 if (strlen(buf) > CPUSETBUFSIZ - 1)
  return (-1);

 p = buf[bitset_strscan((struct bitset *)set, CPU_SETSIZE, buf)];
 if (p != '\0')
  return (-1);

 return (0);
}
