
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct pcmchan_matrix {scalar_t__ channels; scalar_t__ id; int mask; int* offset; TYPE_1__* map; } ;
struct feed_matrix_info {int bps; TYPE_2__* matrix; int out; int in; } ;
struct TYPE_4__ {int* chn; int mul; int shift; } ;
struct TYPE_3__ {scalar_t__ type; size_t members; } ;


 scalar_t__ AFMT_CHANNEL (int ) ;
 int EINVAL ;
 int FEEDMATRIX_ATTN_SHIFT ;
 scalar_t__ SND_CHN_MATRIX_1_0 ;
 scalar_t__ SND_CHN_MATRIX_BEGIN ;
 scalar_t__ SND_CHN_MATRIX_END ;
 scalar_t__ SND_CHN_MAX ;
 scalar_t__ SND_CHN_MIN ;
 size_t SND_CHN_T_BEGIN ;
 size_t SND_CHN_T_END ;
 int SND_CHN_T_EOF ;
 int SND_CHN_T_MASK_FC ;
 size_t SND_CHN_T_MASK_FL ;
 size_t SND_CHN_T_MASK_FR ;
 scalar_t__ SND_CHN_T_MAX ;
 int SND_CHN_T_NULL ;
 scalar_t__ SND_CHN_T_STEP ;
 int feed_matrix_reset (struct feed_matrix_info*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static int
feed_matrix_setup(struct feed_matrix_info *info, struct pcmchan_matrix *m_in,
    struct pcmchan_matrix *m_out)
{
 uint32_t i, j, ch, in_mask, merge_mask;
 int mul, shift;


 if (info == ((void*)0) || m_in == ((void*)0) || m_out == ((void*)0) ||
     AFMT_CHANNEL(info->in) != m_in->channels ||
     AFMT_CHANNEL(info->out) != m_out->channels ||
     m_in->channels < SND_CHN_MIN || m_in->channels > SND_CHN_MAX ||
     m_out->channels < SND_CHN_MIN || m_out->channels > SND_CHN_MAX)
  return (EINVAL);

 feed_matrix_reset(info);





 if (m_in->id == m_out->id && !(m_in->id < SND_CHN_MATRIX_BEGIN ||
     m_in->id > SND_CHN_MATRIX_END))
  return (0);






 if (m_in->id == SND_CHN_MATRIX_1_0) {
  if (m_out->id == SND_CHN_MATRIX_1_0)
   in_mask = SND_CHN_T_MASK_FL;
  else if (m_out->mask & SND_CHN_T_MASK_FC)
   in_mask = SND_CHN_T_MASK_FC;
  else
   in_mask = SND_CHN_T_MASK_FL | SND_CHN_T_MASK_FR;
 } else
  in_mask = m_in->mask;


 for (ch = SND_CHN_T_BEGIN; ch <= SND_CHN_T_END &&
     m_out->map[ch].type != SND_CHN_T_MAX; ch += SND_CHN_T_STEP) {
  merge_mask = m_out->map[ch].members & in_mask;
  if (merge_mask == 0) {
   info->matrix[ch].chn[0] = SND_CHN_T_NULL;
   continue;
  }

  j = 0;
  for (i = SND_CHN_T_BEGIN; i <= SND_CHN_T_END;
      i += SND_CHN_T_STEP) {
   if (merge_mask & (1 << i)) {
    if (m_in->offset[i] >= 0 &&
        m_in->offset[i] < (int)m_in->channels)
     info->matrix[ch].chn[j++] =
         m_in->offset[i] * info->bps;
    else {
     info->matrix[ch].chn[j++] =
         SND_CHN_T_EOF;
     break;
    }
   }
  }



  if (j > 1) {





   mul = (1 << (16 - 1)) + 143 - j;
   shift = 16;
   while ((mul & 1) == 0 && shift > 0) {
    mul >>= 1;
    shift--;
   }
   info->matrix[ch].mul = mul;
   info->matrix[ch].shift = shift;
  }
 }


 fprintf(stderr, "Total: %d\n", ch);

 for (i = 0; info->matrix[i].chn[0] != SND_CHN_T_EOF; i++) {
  fprintf(stderr, "%d: [", i);
  for (j = 0; info->matrix[i].chn[j] != SND_CHN_T_EOF; j++) {
   if (j != 0)
    fprintf(stderr, ", ");
   fprintf(stderr, "%d",
       (info->matrix[i].chn[j] == SND_CHN_T_NULL) ?
       0xffffffff : info->matrix[i].chn[j] / info->bps);
  }
  fprintf(stderr, "] attn: (x * %d) >> %d\n",
      info->matrix[i].mul, info->matrix[i].shift);
 }


 return (0);
}
