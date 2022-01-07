
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_sig_err_cqe {int mkey; int err_offset; int actual_trans_sig; int expected_trans_sig; int actual_reftag; int expected_reftag; int syndrome; } ;
struct ib_sig_err {int expected; int actual; int key; int sig_err_offset; int err_type; } ;


 int APPTAG_ERR ;
 int GUARD_ERR ;
 int IB_SIG_BAD_APPTAG ;
 int IB_SIG_BAD_GUARD ;
 int IB_SIG_BAD_REFTAG ;
 int REFTAG_ERR ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void get_sig_err_item(struct mlx5_sig_err_cqe *cqe,
        struct ib_sig_err *item)
{
 u16 syndrome = be16_to_cpu(cqe->syndrome);





 if (syndrome & (1 << 13)) {
  item->err_type = IB_SIG_BAD_GUARD;
  item->expected = be32_to_cpu(cqe->expected_trans_sig) >> 16;
  item->actual = be32_to_cpu(cqe->actual_trans_sig) >> 16;
 } else
 if (syndrome & (1 << 11)) {
  item->err_type = IB_SIG_BAD_REFTAG;
  item->expected = be32_to_cpu(cqe->expected_reftag);
  item->actual = be32_to_cpu(cqe->actual_reftag);
 } else
 if (syndrome & (1 << 12)) {
  item->err_type = IB_SIG_BAD_APPTAG;
  item->expected = be32_to_cpu(cqe->expected_trans_sig) & 0xffff;
  item->actual = be32_to_cpu(cqe->actual_trans_sig) & 0xffff;
 } else {
  pr_err("Got signature completion error with bad syndrome %04x\n",
         syndrome);
 }

 item->sig_err_offset = be64_to_cpu(cqe->err_offset);
 item->key = be32_to_cpu(cqe->mkey);
}
