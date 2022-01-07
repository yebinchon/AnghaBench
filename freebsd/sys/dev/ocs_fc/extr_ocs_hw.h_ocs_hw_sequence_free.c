
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_hw_t ;
typedef int ocs_hw_sequence_t ;
typedef int ocs_hw_rtn_e ;


 int ocs_hw_rqpair_sequence_free (int *,int *) ;

__attribute__((used)) static inline ocs_hw_rtn_e
ocs_hw_sequence_free(ocs_hw_t *hw, ocs_hw_sequence_t *seq)
{

 return ocs_hw_rqpair_sequence_free(hw, seq);
}
