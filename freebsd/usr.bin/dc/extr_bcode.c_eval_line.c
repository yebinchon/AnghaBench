
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct source {TYPE_1__* vtable; } ;
struct TYPE_2__ {char* (* readline ) (struct source*) ;} ;


 int clearerr (int ) ;
 int eval_string (char*) ;
 int src_setstream (struct source*,int ) ;
 int stdin ;
 char* stub1 (struct source*) ;

__attribute__((used)) static void
eval_line(void)
{

 struct source in;
 char *p;

 clearerr(stdin);
 src_setstream(&in, stdin);
 p = (*in.vtable->readline)(&in);
 eval_string(p);
}
