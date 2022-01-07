
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;





__attribute__((used)) static int get_spl_qp_index(enum ib_qp_type qp_type)
{
 switch (qp_type)
 {
 case 128:
  return 0;
 case 129:
  return 1;
 default:
  return -1;
 }
}
