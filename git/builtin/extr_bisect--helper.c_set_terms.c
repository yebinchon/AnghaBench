
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bisect_terms {void* term_bad; void* term_good; } ;


 int free (void*) ;
 void* xstrdup (char const*) ;

__attribute__((used)) static void set_terms(struct bisect_terms *terms, const char *bad,
        const char *good)
{
 free((void *)terms->term_good);
 terms->term_good = xstrdup(good);
 free((void *)terms->term_bad);
 terms->term_bad = xstrdup(bad);
}
