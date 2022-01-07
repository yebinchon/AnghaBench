
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_params {int snap_len; int port; int invert; scalar_t__ skip_len; scalar_t__ skip_ofst; scalar_t__ min_len; int* data; int* mask; } ;
struct adapter {int dummy; } ;


 int A_MPS_TRC_CFG ;
 int A_MPS_TRC_FILTER0_DONT_CARE ;
 int A_MPS_TRC_FILTER0_MATCH ;
 int A_MPS_TRC_FILTER1_MATCH ;
 int A_MPS_TRC_FILTER_MATCH_CTL_A ;
 int A_MPS_TRC_FILTER_MATCH_CTL_B ;
 int EINVAL ;
 int F_T5_TFEN ;
 int F_TFEN ;
 int F_TRCMULTIFILTER ;
 scalar_t__ M_TFLENGTH ;
 scalar_t__ M_TFMINPKTSIZE ;
 scalar_t__ M_TFOFFSET ;
 int NTRACE ;
 int TRACE_LEN ;
 int V_T5_TFINVERTMATCH (int) ;
 int V_T5_TFPORT (int) ;
 int V_TFCAPTUREMAX (int) ;
 int V_TFINVERTMATCH (int) ;
 int V_TFLENGTH (scalar_t__) ;
 int V_TFMINPKTSIZE (scalar_t__) ;
 int V_TFOFFSET (scalar_t__) ;
 int V_TFPORT (int) ;
 scalar_t__ is_t4 (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_set_reg_field (struct adapter*,int,int,int) ;
 int t4_write_reg (struct adapter*,int,int) ;

int t4_set_trace_filter(struct adapter *adap, const struct trace_params *tp,
    int idx, int enable)
{
 int i, ofst = idx * 4;
 u32 data_reg, mask_reg, cfg;
 u32 multitrc = F_TRCMULTIFILTER;
 u32 en = is_t4(adap) ? F_TFEN : F_T5_TFEN;

 if (idx < 0 || idx >= NTRACE)
  return -EINVAL;

 if (tp == ((void*)0) || !enable) {
  t4_set_reg_field(adap, A_MPS_TRC_FILTER_MATCH_CTL_A + ofst, en,
      enable ? en : 0);
  return 0;
 }
 cfg = t4_read_reg(adap, A_MPS_TRC_CFG);
 if (cfg & F_TRCMULTIFILTER) {





  if (tp->snap_len > ((10 * 1024 / 4) - (2 * 8)))
   return -EINVAL;
 } else {





  multitrc = 0;
  if (tp->snap_len > 9600 || idx)
   return -EINVAL;
 }

 if (tp->port > (is_t4(adap) ? 11 : 19) || tp->invert > 1 ||
     tp->skip_len > M_TFLENGTH || tp->skip_ofst > M_TFOFFSET ||
     tp->min_len > M_TFMINPKTSIZE)
  return -EINVAL;


 t4_set_reg_field(adap, A_MPS_TRC_FILTER_MATCH_CTL_A + ofst, en, 0);

 idx *= (A_MPS_TRC_FILTER1_MATCH - A_MPS_TRC_FILTER0_MATCH);
 data_reg = A_MPS_TRC_FILTER0_MATCH + idx;
 mask_reg = A_MPS_TRC_FILTER0_DONT_CARE + idx;

 for (i = 0; i < TRACE_LEN / 4; i++, data_reg += 4, mask_reg += 4) {
  t4_write_reg(adap, data_reg, tp->data[i]);
  t4_write_reg(adap, mask_reg, ~tp->mask[i]);
 }
 t4_write_reg(adap, A_MPS_TRC_FILTER_MATCH_CTL_B + ofst,
       V_TFCAPTUREMAX(tp->snap_len) |
       V_TFMINPKTSIZE(tp->min_len));
 t4_write_reg(adap, A_MPS_TRC_FILTER_MATCH_CTL_A + ofst,
       V_TFOFFSET(tp->skip_ofst) | V_TFLENGTH(tp->skip_len) | en |
       (is_t4(adap) ?
       V_TFPORT(tp->port) | V_TFINVERTMATCH(tp->invert) :
       V_T5_TFPORT(tp->port) | V_T5_TFINVERTMATCH(tp->invert)));

 return 0;
}
