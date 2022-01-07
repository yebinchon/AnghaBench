
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int M_WAITOK ;
 int M_XENSTORE ;
 int extract_strings (char*,char const**,int) ;
 int free (char*,int ) ;
 char** malloc (int,int ,int ) ;
 int memcpy (char const**,char*,int) ;

__attribute__((used)) static const char **
split(char *strings, u_int len, u_int *num)
{
 const char **ret;


 if (len > 0)
  strings[len - 1] = '\0';


 *num = extract_strings(strings, ((void*)0), len);


 ret = malloc(*num * sizeof(char *) + len, M_XENSTORE, M_WAITOK);
 memcpy(&ret[*num], strings, len);
 free(strings, M_XENSTORE);


 strings = (char *)&ret[*num];
 (void)extract_strings(strings, ret, len);

 return (ret);
}
