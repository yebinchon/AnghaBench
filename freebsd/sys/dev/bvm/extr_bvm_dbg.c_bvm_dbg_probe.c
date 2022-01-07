
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BVM_DBG_SIG ;
 int bvm_dbg_port ;
 scalar_t__ inw (int) ;
 scalar_t__ resource_int_value (char*,int ,char*,int*) ;

__attribute__((used)) static int
bvm_dbg_probe(void)
{
 int disabled, port;

 disabled = 0;
 resource_int_value("bvmdbg", 0, "disabled", &disabled);

 if (!disabled) {
  if (resource_int_value("bvmdbg", 0, "port", &port) == 0)
   bvm_dbg_port = port;

  if (inw(bvm_dbg_port) == BVM_DBG_SIG) {




   return (1);
  }
 }

 return (-1);
}
