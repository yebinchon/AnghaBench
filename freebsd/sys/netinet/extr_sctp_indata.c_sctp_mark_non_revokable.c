
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct sctp_association {void* highest_tsn_inside_nr_map; void* highest_tsn_inside_map; int mapping_array_base_tsn; int mapping_array; int nr_mapping_array; void* cumulative_tsn; } ;


 scalar_t__ SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CALC_TSN_TO_GAP (void*,void*,int ) ;
 int SCTP_IS_TSN_PRESENT (int ,void*) ;
 int SCTP_PRINTF (char*,void*,void*) ;
 int SCTP_SET_TSN_PRESENT (int ,void*) ;
 scalar_t__ SCTP_TSN_GE (void*,int ) ;
 scalar_t__ SCTP_TSN_GT (void*,void*) ;
 int SCTP_UNSET_TSN_PRESENT (int ,void*) ;
 int panic (char*) ;
 int sctp_do_drain ;
 int sctp_print_mapping_array (struct sctp_association*) ;

__attribute__((used)) static void
sctp_mark_non_revokable(struct sctp_association *asoc, uint32_t tsn)
{
 uint32_t gap, i, cumackp1;
 int fnd = 0;
 int in_r = 0, in_nr = 0;

 if (SCTP_BASE_SYSCTL(sctp_do_drain) == 0) {
  return;
 }
 cumackp1 = asoc->cumulative_tsn + 1;
 if (SCTP_TSN_GT(cumackp1, tsn)) {




  return;
 }
 SCTP_CALC_TSN_TO_GAP(gap, tsn, asoc->mapping_array_base_tsn);
 in_r = SCTP_IS_TSN_PRESENT(asoc->mapping_array, gap);
 in_nr = SCTP_IS_TSN_PRESENT(asoc->nr_mapping_array, gap);
 if ((in_r == 0) && (in_nr == 0)) {



  SCTP_PRINTF("gap:%x tsn:%x\n", gap, tsn);
  sctp_print_mapping_array(asoc);

 }
 if (in_nr == 0)
  SCTP_SET_TSN_PRESENT(asoc->nr_mapping_array, gap);
 if (in_r)
  SCTP_UNSET_TSN_PRESENT(asoc->mapping_array, gap);
 if (SCTP_TSN_GT(tsn, asoc->highest_tsn_inside_nr_map)) {
  asoc->highest_tsn_inside_nr_map = tsn;
 }
 if (tsn == asoc->highest_tsn_inside_map) {

  for (i = tsn - 1; SCTP_TSN_GE(i, asoc->mapping_array_base_tsn); i--) {
   SCTP_CALC_TSN_TO_GAP(gap, i, asoc->mapping_array_base_tsn);
   if (SCTP_IS_TSN_PRESENT(asoc->mapping_array, gap)) {
    asoc->highest_tsn_inside_map = i;
    fnd = 1;
    break;
   }
  }
  if (!fnd) {
   asoc->highest_tsn_inside_map = asoc->mapping_array_base_tsn - 1;
  }
 }
}
