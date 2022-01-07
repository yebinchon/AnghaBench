
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HAST_REPLICATION_ASYNC ;
 int HAST_REPLICATION_FULLSYNC ;
 int HAST_REPLICATION_MEMSYNC ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
str2replication(const char *str)
{

 if (strcmp(str, "fullsync") == 0)
  return (HAST_REPLICATION_FULLSYNC);
 if (strcmp(str, "memsync") == 0)
  return (HAST_REPLICATION_MEMSYNC);
 if (strcmp(str, "async") == 0)
  return (HAST_REPLICATION_ASYNC);
 return (-1);
}
