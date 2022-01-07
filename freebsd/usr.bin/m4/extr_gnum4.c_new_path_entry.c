
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_entry {scalar_t__ next; int name; } ;


 int errx (int,char*) ;
 struct path_entry* malloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static struct path_entry *
new_path_entry(const char *dirname)
{
 struct path_entry *n;

 n = malloc(sizeof(struct path_entry));
 if (!n)
  errx(1, "out of memory");
 n->name = xstrdup(dirname);
 n->next = 0;
 return n;
}
