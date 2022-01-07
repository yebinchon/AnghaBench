
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_mig_state { ____Placeholder_ib_mig_state } ib_mig_state ;


 int IB_MIG_ARMED ;
 int IB_MIG_MIGRATED ;
 int IB_MIG_REARM ;




__attribute__((used)) static inline enum ib_mig_state to_ib_mig_state(int mlx5_mig_state)
{
 switch (mlx5_mig_state) {
 case 130: return IB_MIG_ARMED;
 case 128: return IB_MIG_REARM;
 case 129: return IB_MIG_MIGRATED;
 default: return -1;
 }
}
