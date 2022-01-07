
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hent {int h_name; struct hent* h_link; } ;


 int hash (char const*) ;
 struct hent** hashtab ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct hent *
lookup(const char name[])
{
 register int h;
 register struct hent *hp;

 h = hash(name);
 for (hp = hashtab[h]; hp != ((void*)0); hp = hp->h_link)
  if (strcmp(hp->h_name, name) == 0)
   return(hp);
 return(((void*)0));
}
