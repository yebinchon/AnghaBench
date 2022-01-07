
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int OCS_M_NOWAIT ;
 char* ocs_malloc (int *,scalar_t__,int ) ;
 int ocs_strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *
ocs_strdup(const char *s)
{
 uint32_t l = strlen(s);
 char *d;

 d = ocs_malloc(((void*)0), l+1, OCS_M_NOWAIT);
 if (d != ((void*)0)) {
  ocs_strcpy(d, s);
 }
 return d;
}
