
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct terminal {TYPE_1__* tm_class; } ;
struct consdev {struct terminal* cn_arg; } ;
struct TYPE_2__ {int (* tc_cngetc ) (struct terminal*) ;} ;


 int stub1 (struct terminal*) ;

__attribute__((used)) static int
termcn_cngetc(struct consdev *cp)
{
 struct terminal *tm = cp->cn_arg;

 return (tm->tm_class->tc_cngetc(tm));
}
