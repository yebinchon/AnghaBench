
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct terminal {TYPE_1__* tm_class; } ;
struct TYPE_2__ {int (* tc_pre_input ) (struct terminal*) ;} ;


 int stub1 (struct terminal*) ;

__attribute__((used)) static void
termteken_pre_input(void *softc)
{
 struct terminal *tm = softc;

 tm->tm_class->tc_pre_input(tm);
}
