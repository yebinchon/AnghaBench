
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_MAD_SNOOP_RECVS ;

__attribute__((used)) static inline int is_snooping_recvs(int mad_snoop_flags)
{
 return (mad_snoop_flags &
  (IB_MAD_SNOOP_RECVS ));

}
