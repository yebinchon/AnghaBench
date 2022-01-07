
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ignoretab {int i_count; struct ignore** i_head; } ;
struct ignore {struct ignore* i_link; void* i_field; } ;
typedef int field ;


 int LINESIZE ;
 void* calloc (unsigned int,int) ;
 int hash (char*) ;
 int igshow (struct ignoretab*,char const*) ;
 int istrncpy (char*,char*,int) ;
 scalar_t__ member (char*,struct ignoretab*) ;
 int strcpy (void*,char*) ;
 scalar_t__ strlen (char*) ;

int
ignore1(char **list, struct ignoretab *tab, const char *which)
{
 char field[LINESIZE];
 char **ap;
 struct ignore *igp;
 int h;

 if (*list == ((void*)0))
  return (igshow(tab, which));
 for (ap = list; *ap != 0; ap++) {
  istrncpy(field, *ap, sizeof(field));
  if (member(field, tab))
   continue;
  h = hash(field);
  igp = calloc(1, sizeof(struct ignore));
  igp->i_field = calloc((unsigned)strlen(field) + 1,
      sizeof(char));
  strcpy(igp->i_field, field);
  igp->i_link = tab->i_head[h];
  tab->i_head[h] = igp;
  tab->i_count++;
 }
 return (0);
}
