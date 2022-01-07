
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sctp_association {int cumulative_tsn; int mapping_array_base_tsn; int highest_tsn_inside_map; int mapping_array_size; int* nr_mapping_array; int* mapping_array; int highest_tsn_inside_nr_map; } ;
struct sctp_tcb {struct sctp_association asoc; } ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CALC_TSN_TO_GAP (int,int,int) ;
 int SCTP_MAP_LOGGING_ENABLE ;
 int SCTP_MAP_PREPARE_SLIDE ;
 int SCTP_MAP_SLIDE_FROM ;
 int SCTP_MAP_SLIDE_NONE ;
 int SCTP_MAP_SLIDE_RESULT ;
 int SCTP_PRINTF (char*,...) ;
 scalar_t__ SCTP_TSN_GT (int,int) ;
 int memset (int*,int ,int) ;
 int panic (char*,...) ;
 int sctp_log_map (int,int,int,int ) ;
 int sctp_logging_level ;
 scalar_t__* sctp_map_lookup_tab ;
 int sctp_print_mapping_array (struct sctp_association*) ;

void
sctp_slide_mapping_arrays(struct sctp_tcb *stcb)
{
 struct sctp_association *asoc;
 int at;
 uint8_t val;
 int slide_from, slide_end, lgap, distance;
 uint32_t old_cumack, old_base, old_highest, highest_tsn;

 asoc = &stcb->asoc;

 old_cumack = asoc->cumulative_tsn;
 old_base = asoc->mapping_array_base_tsn;
 old_highest = asoc->highest_tsn_inside_map;




 at = 0;
 for (slide_from = 0; slide_from < stcb->asoc.mapping_array_size; slide_from++) {
  val = asoc->nr_mapping_array[slide_from] | asoc->mapping_array[slide_from];
  if (val == 0xff) {
   at += 8;
  } else {

   at += sctp_map_lookup_tab[val];
   break;
  }
 }
 asoc->cumulative_tsn = asoc->mapping_array_base_tsn + (at - 1);

 if (SCTP_TSN_GT(asoc->cumulative_tsn, asoc->highest_tsn_inside_map) &&
     SCTP_TSN_GT(asoc->cumulative_tsn, asoc->highest_tsn_inside_nr_map)) {




  SCTP_PRINTF("huh, cumack 0x%x greater than high-tsn 0x%x in map - should panic?\n",
      asoc->cumulative_tsn, asoc->highest_tsn_inside_map);
  sctp_print_mapping_array(asoc);
  if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_MAP_LOGGING_ENABLE) {
   sctp_log_map(0, 6, asoc->highest_tsn_inside_map, SCTP_MAP_SLIDE_RESULT);
  }
  asoc->highest_tsn_inside_map = asoc->cumulative_tsn;
  asoc->highest_tsn_inside_nr_map = asoc->cumulative_tsn;

 }
 if (SCTP_TSN_GT(asoc->highest_tsn_inside_nr_map, asoc->highest_tsn_inside_map)) {
  highest_tsn = asoc->highest_tsn_inside_nr_map;
 } else {
  highest_tsn = asoc->highest_tsn_inside_map;
 }
 if ((asoc->cumulative_tsn == highest_tsn) && (at >= 8)) {


  int clr;





  clr = ((at + 7) >> 3);
  if (clr > asoc->mapping_array_size) {
   clr = asoc->mapping_array_size;
  }
  memset(asoc->mapping_array, 0, clr);
  memset(asoc->nr_mapping_array, 0, clr);
  asoc->mapping_array_base_tsn = asoc->cumulative_tsn + 1;
  asoc->highest_tsn_inside_nr_map = asoc->highest_tsn_inside_map = asoc->cumulative_tsn;
 } else if (at >= 8) {







  SCTP_CALC_TSN_TO_GAP(lgap, highest_tsn, asoc->mapping_array_base_tsn);
  slide_end = (lgap >> 3);
  if (slide_end < slide_from) {
   sctp_print_mapping_array(asoc);



   SCTP_PRINTF("impossible slide lgap: %x slide_end: %x slide_from: %x? at: %d\n",
       lgap, slide_end, slide_from, at);
   return;

  }
  if (slide_end > asoc->mapping_array_size) {



   SCTP_PRINTF("Gak, would have overrun map end: %d slide_end: %d\n",
       asoc->mapping_array_size, slide_end);
   slide_end = asoc->mapping_array_size;

  }
  distance = (slide_end - slide_from) + 1;
  if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_MAP_LOGGING_ENABLE) {
   sctp_log_map(old_base, old_cumack, old_highest,
       SCTP_MAP_PREPARE_SLIDE);
   sctp_log_map((uint32_t)slide_from, (uint32_t)slide_end,
       (uint32_t)lgap, SCTP_MAP_SLIDE_FROM);
  }
  if (distance + slide_from > asoc->mapping_array_size ||
      distance < 0) {







   if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_MAP_LOGGING_ENABLE) {
    sctp_log_map((uint32_t)distance, (uint32_t)slide_from,
        (uint32_t)asoc->mapping_array_size,
        SCTP_MAP_SLIDE_NONE);
   }
  } else {
   int ii;

   for (ii = 0; ii < distance; ii++) {
    asoc->mapping_array[ii] = asoc->mapping_array[slide_from + ii];
    asoc->nr_mapping_array[ii] = asoc->nr_mapping_array[slide_from + ii];

   }
   for (ii = distance; ii < asoc->mapping_array_size; ii++) {
    asoc->mapping_array[ii] = 0;
    asoc->nr_mapping_array[ii] = 0;
   }
   if (asoc->highest_tsn_inside_map + 1 == asoc->mapping_array_base_tsn) {
    asoc->highest_tsn_inside_map += (slide_from << 3);
   }
   if (asoc->highest_tsn_inside_nr_map + 1 == asoc->mapping_array_base_tsn) {
    asoc->highest_tsn_inside_nr_map += (slide_from << 3);
   }
   asoc->mapping_array_base_tsn += (slide_from << 3);
   if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_MAP_LOGGING_ENABLE) {
    sctp_log_map(asoc->mapping_array_base_tsn,
        asoc->cumulative_tsn, asoc->highest_tsn_inside_map,
        SCTP_MAP_SLIDE_RESULT);
   }
  }
 }
}
