
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ignentry {int * mask; } ;


 int SLIST_INSERT_HEAD (int *,struct ignentry*,int ) ;
 struct ignentry* calloc (int,int) ;
 int errx (int,char*) ;
 int ignores ;
 int next ;
 int * strdup (char const*) ;

__attribute__((used)) static void
ignoreadd(const char *mask)
{
 struct ignentry *ign;

 ign = calloc(1, sizeof(*ign));
 if (ign == ((void*)0))
  errx(1, "cannot allocate memory");
 ign->mask = strdup(mask);
 if (ign->mask == ((void*)0))
  errx(1, "cannot allocate memory");
 SLIST_INSERT_HEAD(&ignores, ign, next);
}
