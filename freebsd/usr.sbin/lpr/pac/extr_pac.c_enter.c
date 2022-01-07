
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hent {char* h_name; double h_feetpages; struct hent* h_link; scalar_t__ h_count; } ;


 scalar_t__ calloc (int,int) ;
 int hash (char const*) ;
 struct hent** hashtab ;
 int hcount ;
 struct hent* lookup (char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static struct hent *
enter(const char name[])
{
 register struct hent *hp;
 register int h;

 if ((hp = lookup(name)) != ((void*)0))
  return(hp);
 h = hash(name);
 hcount++;
 hp = (struct hent *) calloc(sizeof *hp, (size_t)1);
 hp->h_name = (char *) calloc(sizeof(char), strlen(name)+1);
 strcpy(hp->h_name, name);
 hp->h_feetpages = 0.0;
 hp->h_count = 0;
 hp->h_link = hashtab[h];
 hashtab[h] = hp;
 return(hp);
}
