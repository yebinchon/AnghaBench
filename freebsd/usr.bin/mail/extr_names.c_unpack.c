
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {int n_type; int n_name; struct name* n_flink; } ;


 int GDEL ;
 int count (struct name*) ;
 int errx (int,char*) ;
 scalar_t__ salloc (int) ;
 int * value (char*) ;

char **
unpack(struct name *np)
{
 char **ap, **top;
 struct name *n;
 int t, extra, metoo, verbose;

 n = np;
 if ((t = count(n)) == 0)
  errx(1, "No names to unpack");






 extra = 2;
 extra++;
 metoo = value("metoo") != ((void*)0);
 if (metoo)
  extra++;
 verbose = value("verbose") != ((void*)0);
 if (verbose)
  extra++;
 top = (char **)salloc((t + extra) * sizeof(*top));
 ap = top;
 *ap++ = "sendmail";
 *ap++ = "-i";
 if (metoo)
  *ap++ = "-m";
 if (verbose)
  *ap++ = "-v";
 for (; n != ((void*)0); n = n->n_flink)
  if ((n->n_type & GDEL) == 0)
   *ap++ = n->n_name;
 *ap = ((void*)0);
 return (top);
}
