
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mib ;


 int memcpy (int*,int*,int) ;
 int sysctl (int*,int,char*,size_t*,int ,int ) ;

__attribute__((used)) static int
sysctlname(int *oid, int nlen, char *name, size_t len)
{
 int mib[12];

 if (nlen > (int)(sizeof(mib) / sizeof(int) - 2))
  return (-1);

 mib[0] = 0;
 mib[1] = 1;
 memcpy(mib + 2, oid, nlen * sizeof(int));

 if (sysctl(mib, nlen + 2, name, &len, 0, 0) == -1)
  return (-1);

 return (0);
}
