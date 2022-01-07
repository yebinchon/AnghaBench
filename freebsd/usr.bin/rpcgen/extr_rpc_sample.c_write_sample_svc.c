
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ def_kind; } ;
typedef TYPE_1__ definition ;


 scalar_t__ DEF_PROGRAM ;
 int write_sample_server (TYPE_1__*) ;

void
write_sample_svc(definition *def)
{

 if (def->def_kind != DEF_PROGRAM)
   return;
 write_sample_server(def);
}
