
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_cqe {int opcode; int is_send; } ;


 int MTHCA_ERROR_CQE_OPCODE_MASK ;

__attribute__((used)) static inline int is_recv_cqe(struct mthca_cqe *cqe)
{
 if ((cqe->opcode & MTHCA_ERROR_CQE_OPCODE_MASK) ==
     MTHCA_ERROR_CQE_OPCODE_MASK)
  return !(cqe->opcode & 0x01);
 else
  return !(cqe->is_send & 0x80);
}
