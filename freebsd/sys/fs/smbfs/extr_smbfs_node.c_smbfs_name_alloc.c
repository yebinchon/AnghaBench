
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;


 int M_SMBNODENAME ;
 int M_WAITOK ;
 int bcopy (char const*,char*,int) ;
 char* malloc (int,int ,int ) ;

__attribute__((used)) static char *
smbfs_name_alloc(const u_char *name, int nmlen)
{
 u_char *cp;

 nmlen++;
 cp = malloc(nmlen, M_SMBNODENAME, M_WAITOK);
 bcopy(name, cp, nmlen - 1);
 cp[nmlen - 1] = 0;
 return cp;
}
