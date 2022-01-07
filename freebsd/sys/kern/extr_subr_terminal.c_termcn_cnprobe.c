
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct terminal {TYPE_1__* tm_class; struct consdev* consdev; } ;
struct consdev {int cn_pri; struct terminal* cn_arg; } ;
struct TYPE_2__ {int (* tc_cnprobe ) (struct terminal*,struct consdev*) ;} ;


 int CN_DEAD ;
 int stub1 (struct terminal*,struct consdev*) ;
 int terminal_init (struct terminal*) ;

__attribute__((used)) static void
termcn_cnprobe(struct consdev *cp)
{
 struct terminal *tm = cp->cn_arg;

 if (tm == ((void*)0)) {
  cp->cn_pri = CN_DEAD;
  return;
 }

 tm->consdev = cp;
 terminal_init(tm);

 tm->tm_class->tc_cnprobe(tm, cp);
}
