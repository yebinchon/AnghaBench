
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_SMBSTR ;
 int M_WAITOK ;
 int copyinstr (char*,char*,size_t,int *) ;
 int free (char*,int ) ;
 char* malloc (size_t,int ,int ) ;

char *
smb_strdupin(char *s, size_t maxlen)
{
 char *p;
 int error;

 p = malloc(maxlen + 1, M_SMBSTR, M_WAITOK);
 error = copyinstr(s, p, maxlen + 1, ((void*)0));
 if (error) {
  free(p, M_SMBSTR);
  return (((void*)0));
 }
 return p;
}
