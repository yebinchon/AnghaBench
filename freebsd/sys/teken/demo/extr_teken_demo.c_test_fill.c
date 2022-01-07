
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_8__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_9__ {TYPE_1__ tr_end; TYPE_2__ tr_begin; } ;
typedef TYPE_3__ teken_rect_t ;
struct TYPE_10__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
typedef TYPE_4__ teken_pos_t ;
typedef int teken_char_t ;
typedef int teken_attr_t ;


 int test_putchar (void*,TYPE_4__*,int ,int const*) ;

__attribute__((used)) static void
test_fill(void *s, const teken_rect_t *r, teken_char_t c,
    const teken_attr_t *a)
{
 teken_pos_t p;


 for (p.tp_row = r->tr_begin.tp_row; p.tp_row < r->tr_end.tp_row; p.tp_row++)
  for (p.tp_col = r->tr_begin.tp_col; p.tp_col < r->tr_end.tp_col; p.tp_col++)
   test_putchar(s, &p, c, a);
}
