
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct terminal {TYPE_1__* tm_class; } ;
struct TYPE_2__ {int (* tc_param ) (struct terminal*,int,unsigned int) ;} ;


 int stub1 (struct terminal*,int,unsigned int) ;

__attribute__((used)) static void
termteken_param(void *softc, int cmd, unsigned int arg)
{
 struct terminal *tm = softc;

 tm->tm_class->tc_param(tm, cmd, arg);
}
