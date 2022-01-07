
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash {int hstr; int hpt; scalar_t__ hnew; struct hash* hnext; } ;
struct TYPE_2__ {struct hash* hnext; } ;
typedef int FILE ;


 int BUCKETS ;
 scalar_t__ EOF ;
 TYPE_1__* bucket ;
 int err (int,char*,int ) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (int ,char*) ;
 int found (scalar_t__,int ,int ) ;
 int fseek (int *,int ,int ) ;
 int fwrite (int ,scalar_t__,int,int *) ;
 int ignore (int ) ;
 int strings ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void
flushsh(void)
{
 int i;
 struct hash *hp;
 FILE *mesgwrit;
 int old = 0, new = 0;

 for (i = 0; i < BUCKETS; i++)
  for (hp = bucket[i].hnext; hp != ((void*)0); hp = hp->hnext)
   if (hp->hnew)
    new++;
   else
    old++;
 if (new == 0 && old != 0)
  return;
 mesgwrit = fopen(strings, old ? "r+" : "w");
 if (mesgwrit == ((void*)0))
  err(4, "%s", strings);
 for (i = 0; i < BUCKETS; i++)
  for (hp = bucket[i].hnext; hp != ((void*)0); hp = hp->hnext) {
   found(hp->hnew, hp->hpt, hp->hstr);
   if (hp->hnew) {
    fseek(mesgwrit, hp->hpt, 0);
    ignore(fwrite(hp->hstr, strlen(hp->hstr) + 1, 1, mesgwrit));
    if (ferror(mesgwrit))
     err(4, "%s", strings);
   }
  }
 if (fclose(mesgwrit) == EOF)
  err(4, "%s", strings);
}
