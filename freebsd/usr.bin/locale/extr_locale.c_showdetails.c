
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 scalar_t__ kwval_lookup (char const*,char**,int*,int*,int*) ;
 char* lookup_localecat (int) ;
 int printf (char*,...) ;
 scalar_t__ prt_categories ;
 scalar_t__ prt_keywords ;
 int stderr ;

void
showdetails(const char *kw)
{
 int type, cat, tmpval, alloc;
 char *kwval;

 if (kwval_lookup(kw, &kwval, &cat, &type, &alloc) == 0) {




  fprintf(stderr, "Unknown keyword: `%s'\n", kw);
  return;
 }

 if (prt_categories) {
  if (prt_keywords)
   printf("%-20s ", lookup_localecat(cat));
  else
   printf("%-20s\t%s\n", kw, lookup_localecat(cat));
 }

 if (prt_keywords) {
  switch (type) {
  case 130:
   tmpval = (char)*kwval;
   printf("%s=%d\n", kw, tmpval);
   break;
  case 129:
   printf("%s=\"%s\"\n", kw, kwval);
   break;
  case 128:
   printf("%s=%s\n", kw, kwval);
   break;
  }
 }

 if (!prt_categories && !prt_keywords) {
  switch (type) {
  case 130:
   tmpval = (char)*kwval;
   printf("%d\n", tmpval);
   break;
  case 129:
  case 128:
   printf("%s\n", kwval);
   break;
  }
 }

 if (alloc)
  free(kwval);
}
