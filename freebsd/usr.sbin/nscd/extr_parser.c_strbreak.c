
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_IN (int (*) (char*,char**,int)) ;
 int TRACE_OUT (int (*) (char*,char**,int)) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
strbreak(char *str, char **fields, int fields_size)
{
 char *c = str;
 int i, num;

 TRACE_IN(strbreak);
 num = 0;
 for (i = 0;
      ((*fields =
       strsep(i < fields_size ? &c : ((void*)0), "\n\t ")) != ((void*)0));
      ++i)
  if ((*(*fields)) != '\0') {
   ++fields;
   ++num;
  }

 TRACE_OUT(strbreak);
 return (num);
}
