
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_name {int exists; int path; } ;


 int fetchname (char*,int *,int ) ;
 scalar_t__ isspace (unsigned char) ;
 int strippath ;

__attribute__((used)) static void
p4_fetchname(struct file_name *name, char *str)
{
 char *t, *h;


 while (isspace((unsigned char)*str))
  str++;


 for (t = str, h = ((void*)0); *t != '\0' && !isspace((unsigned char)*t); t++)
  if (*t == '#')
   h = t;
 if (h != ((void*)0))
  *h = '\0';

 name->path = fetchname(str, &name->exists, strippath);
}
