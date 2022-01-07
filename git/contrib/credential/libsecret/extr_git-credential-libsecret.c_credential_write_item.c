
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*,char const*) ;

__attribute__((used)) static void credential_write_item(FILE *fp, const char *key, const char *value)
{
 if (!value)
  return;
 fprintf(fp, "%s=%s\n", key, value);
}
