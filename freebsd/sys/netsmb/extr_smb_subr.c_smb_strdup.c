
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_SMBSTR ;
 int M_WAITOK ;
 int bcopy (char const*,char*,size_t) ;
 char* malloc (size_t,int ,int ) ;
 int strlen (char const*) ;

char *
smb_strdup(const char *s)
{
 char *p;
 size_t len;

 len = s ? strlen(s) + 1 : 1;
 p = malloc(len, M_SMBSTR, M_WAITOK);
 if (s)
  bcopy(s, p, len);
 else
  *p = 0;
 return p;
}
