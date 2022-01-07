
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash {long hval; unsigned int hpt; struct hash* hnext; } ;


 long NBUCKETS ;
 struct hash** bucket ;
 scalar_t__ calloc (int,int) ;
 int err (int,int *) ;
 int fflush (int ) ;
 int fgetNUL (char*,int,int ) ;
 int fseek (int ,long,int ) ;
 unsigned int ftell (int ) ;
 int fwrite (char*,int,int,int ) ;
 int mesgread ;
 int mesgwrite ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

unsigned
hashit(char *str, int really, unsigned fakept)
{
 int i;
 struct hash *hp;
 char buf[512];
 long hashval = 0;
 char *cp;

 if (really)
  fflush(mesgwrite);
 for (cp = str; *cp;)
  hashval = (hashval << 1) + *cp++;
 i = hashval % NBUCKETS;
 if (i < 0)
  i += NBUCKETS;
 if (really != 0)
  for (hp = bucket[i]; hp != 0; hp = hp->hnext)
  if (hp->hval == hashval) {
   fseek(mesgread, (long) hp->hpt, 0);
   fgetNUL(buf, sizeof buf, mesgread);



   if (strcmp(buf, str) == 0)
    break;
  }
 if (!really || hp == 0) {
  hp = (struct hash *) calloc(1, sizeof *hp);
  if (hp == ((void*)0))
   err(1, ((void*)0));
  hp->hnext = bucket[i];
  hp->hval = hashval;
  hp->hpt = really ? ftell(mesgwrite) : fakept;
  if (really) {
   fwrite(str, sizeof (char), strlen(str) + 1, mesgwrite);
   fwrite("\n", sizeof (char), 1, mesgwrite);
  }
  bucket[i] = hp;
 }



 return (hp->hpt);
}
