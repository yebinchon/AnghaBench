
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cset {int dummy; } ;
struct TYPE_4__ {char* str; int lastch; } ;
typedef TYPE_1__ STR ;


 int cset_add (struct cset*,int ) ;
 int cset_addclass (struct cset*,int ,int) ;
 struct cset* cset_alloc () ;
 int cset_cache (struct cset*) ;
 int cset_invert (struct cset*) ;
 int err (int,int *) ;
 scalar_t__ next (TYPE_1__*) ;
 int wctype (char*) ;

__attribute__((used)) static struct cset *
setup(char *arg, STR *str, int cflag, int Cflag)
{
 struct cset *cs;

 cs = cset_alloc();
 if (cs == ((void*)0))
  err(1, ((void*)0));
 str->str = arg;
 while (next(str))
  cset_add(cs, str->lastch);
 if (Cflag)
  cset_addclass(cs, wctype("rune"), 1);
 if (cflag || Cflag)
  cset_invert(cs);
 cset_cache(cs);
 return (cs);
}
