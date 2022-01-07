
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int OSAL_STRCPY (char*,char const*) ;
 scalar_t__ OSAL_STRLEN (char const*) ;

__attribute__((used)) static u32 ecore_dump_str(char *dump_buf,
        bool dump,
        const char *str)
{
 if (dump)
  OSAL_STRCPY(dump_buf, str);

 return (u32)OSAL_STRLEN(str) + 1;
}
