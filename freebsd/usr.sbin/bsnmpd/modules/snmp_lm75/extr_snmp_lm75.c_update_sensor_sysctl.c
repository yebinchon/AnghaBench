
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mib ;
typedef int buf ;


 int LM75BUF ;
 int snprintf (char*,int,char*,int,char const*) ;
 int sysctl (int*,size_t,void*,size_t*,int *,int ) ;
 int sysctlnametomib (char*,int*,size_t*) ;

__attribute__((used)) static int
update_sensor_sysctl(void *obuf, size_t *obuflen, int idx, const char *name)
{
 char buf[LM75BUF];
 int mib[5];
 size_t len;


 snprintf(buf, sizeof(buf) - 1, "dev.lm75.%d.%s", idx, name);
 len = sizeof(mib) / sizeof(int);
 if (sysctlnametomib(buf, mib, &len) == -1)
  return (-1);

 if (len != 4)
  return (-1);


 if (sysctl(mib, len, obuf, obuflen, ((void*)0), 0) == -1)
  return (-1);

 return (0);
}
