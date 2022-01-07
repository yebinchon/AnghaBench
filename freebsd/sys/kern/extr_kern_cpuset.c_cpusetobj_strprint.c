
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitset {int dummy; } ;
typedef int cpuset_t ;


 int CPUSETBUFSIZ ;
 int CPU_SETSIZE ;
 int bitset_strprint (char*,int ,struct bitset const*,int ) ;

char *
cpusetobj_strprint(char *buf, const cpuset_t *set)
{

 bitset_strprint(buf, CPUSETBUFSIZ, (const struct bitset *)set,
     CPU_SETSIZE);
 return (buf);
}
