
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
print_sysctl_oid(FILE *fp, int *oid, int len)
{
 int i;

 for (i = 0; i < len; i++)
  fprintf(fp, ".%d", oid[i]);
}
