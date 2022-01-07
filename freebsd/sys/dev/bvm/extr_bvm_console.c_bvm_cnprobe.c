
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_pri; int cn_name; } ;


 scalar_t__ BVM_CONS_SIG ;
 int CN_DEAD ;
 int CN_REMOTE ;
 int bvm_cons_port ;
 scalar_t__ inw (int) ;
 scalar_t__ resource_int_value (char*,int ,char*,int*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
bvm_cnprobe(struct consdev *cp)
{
 int disabled, port;

 disabled = 0;
 cp->cn_pri = CN_DEAD;
 strcpy(cp->cn_name, "bvmcons");

 resource_int_value("bvmconsole", 0, "disabled", &disabled);
 if (!disabled) {
  if (resource_int_value("bvmconsole", 0, "port", &port) == 0)
   bvm_cons_port = port;

  if (inw(bvm_cons_port) == BVM_CONS_SIG)
   cp->cn_pri = CN_REMOTE;
 }
}
