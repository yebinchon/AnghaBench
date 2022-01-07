
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * translate; int * fastmap; scalar_t__ allocated; int * buffer; } ;
typedef TYPE_1__ regex_t ;
typedef int re_dfa_t ;


 scalar_t__ BE (int ,int) ;
 int free_dfa_content (int *) ;
 int re_free (int *) ;

void
regfree (regex_t *preg)
{
  re_dfa_t *dfa = (re_dfa_t *) preg->buffer;
  if (BE (dfa != ((void*)0), 1))
    free_dfa_content (dfa);
  preg->buffer = ((void*)0);
  preg->allocated = 0;

  re_free (preg->fastmap);
  preg->fastmap = ((void*)0);

  re_free (preg->translate);
  preg->translate = ((void*)0);
}
