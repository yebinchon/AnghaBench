
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash {int hnew; scalar_t__ hpt; struct hash* hnext; int hstr; } ;
typedef scalar_t__ off_t ;


 struct hash* bucket ;
 scalar_t__ calloc (int,int) ;
 int err (int,int *) ;
 int errx (int,char*) ;
 int istail (char*,int ) ;
 int lastchr (char*) ;
 scalar_t__ mesgpt ;
 int strdup (char*) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static off_t
hashit(char *str, int new)
{
 int i;
 struct hash *hp, *hp0;

 hp = hp0 = &bucket[lastchr(str) & 0177];
 while (hp->hnext) {
  hp = hp->hnext;
  i = istail(str, hp->hstr);
  if (i >= 0)
   return (hp->hpt + i);
 }
 if ((hp = (struct hash *) calloc(1, sizeof (*hp))) == ((void*)0))
  errx(8, "calloc");
 hp->hpt = mesgpt;
 if (!(hp->hstr = strdup(str)))
  err(1, ((void*)0));
 mesgpt += strlen(hp->hstr) + 1;
 hp->hnext = hp0->hnext;
 hp->hnew = new;
 hp0->hnext = hp;
 return (hp->hpt);
}
