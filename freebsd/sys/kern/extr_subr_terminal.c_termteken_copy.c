
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int teken_rect_t ;
typedef int teken_pos_t ;
struct terminal {TYPE_1__* tm_class; } ;
struct TYPE_2__ {int (* tc_copy ) (struct terminal*,int const*,int const*) ;} ;


 int stub1 (struct terminal*,int const*,int const*) ;

__attribute__((used)) static void
termteken_copy(void *softc, const teken_rect_t *r, const teken_pos_t *p)
{
 struct terminal *tm = softc;

 tm->tm_class->tc_copy(tm, r, p);
}
