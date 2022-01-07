
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int teken_rect_t ;
typedef int teken_char_t ;
typedef int teken_attr_t ;
struct terminal {TYPE_1__* tm_class; } ;
struct TYPE_2__ {int (* tc_fill ) (struct terminal*,int const*,int ) ;} ;


 int TCHAR_CREATE (int ,int const*) ;
 int stub1 (struct terminal*,int const*,int ) ;

__attribute__((used)) static void
termteken_fill(void *softc, const teken_rect_t *r, teken_char_t c,
    const teken_attr_t *a)
{
 struct terminal *tm = softc;

 tm->tm_class->tc_fill(tm, r, TCHAR_CREATE(c, a));
}
