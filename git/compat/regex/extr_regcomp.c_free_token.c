
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sbcset; int mbcset; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ duplicated; TYPE_1__ opr; } ;
typedef TYPE_2__ re_token_t ;


 scalar_t__ COMPLEX_BRACKET ;
 scalar_t__ SIMPLE_BRACKET ;
 int free_charset (int ) ;
 int re_free (int ) ;

__attribute__((used)) static void
free_token (re_token_t *node)
{





    if (node->type == SIMPLE_BRACKET && node->duplicated == 0)
      re_free (node->opr.sbcset);
}
