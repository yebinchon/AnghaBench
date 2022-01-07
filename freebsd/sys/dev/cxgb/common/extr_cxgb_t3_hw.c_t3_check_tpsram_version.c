
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ rev; } ;
struct TYPE_8__ {TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;


 int A_TP_EMBED_OP_FIELD1 ;
 int CH_ERR (TYPE_2__*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int EINVAL ;
 unsigned int G_TP_VERSION_MAJOR (int ) ;
 unsigned int G_TP_VERSION_MINOR (int ) ;
 scalar_t__ T3_REV_A ;
 unsigned int TP_VERSION_MAJOR ;
 unsigned int TP_VERSION_MINOR ;
 int t3_get_tp_version (TYPE_2__*,int *) ;
 int t3_read_reg (TYPE_2__*,int ) ;

int t3_check_tpsram_version(adapter_t *adapter)
{
 int ret;
 u32 vers;
 unsigned int major, minor;

 if (adapter->params.rev == T3_REV_A)
  return 0;


 ret = t3_get_tp_version(adapter, &vers);
 if (ret)
  return ret;

 vers = t3_read_reg(adapter, A_TP_EMBED_OP_FIELD1);

 major = G_TP_VERSION_MAJOR(vers);
 minor = G_TP_VERSION_MINOR(vers);

 if (major == TP_VERSION_MAJOR && minor == TP_VERSION_MINOR)
  return 0;
 else {
  CH_ERR(adapter, "found wrong TP version (%u.%u), "
         "driver compiled for version %d.%d\n", major, minor,
         TP_VERSION_MAJOR, TP_VERSION_MINOR);
 }
 return -EINVAL;
}
