
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_number_mapping {int dummy; } ;
struct fingerprint {int dummy; } ;


 int CERTAINTY_NOT_CALCULATED ;
 int CERTAIN_NOTHING_MATCHES ;
 int abs (int) ;
 int assert (int) ;
 int fingerprint_similarity (struct fingerprint*,struct fingerprint*) ;
 int* get_similarity (int*,int,int,int,int const) ;
 int map_line_number (int,struct line_number_mapping const*) ;

__attribute__((used)) static void find_best_line_matches(
 int start_a,
 int length_a,
 int start_b,
 int local_line_b,
 struct fingerprint *fingerprints_a,
 struct fingerprint *fingerprints_b,
 int *similarities,
 int *certainties,
 int *second_best_result,
 int *result,
 const int max_search_distance_a,
 const struct line_number_mapping *map_line_number_in_b_to_a)
{

 int i, search_start, search_end, closest_local_line_a, *similarity,
  best_similarity = 0, second_best_similarity = 0,
  best_similarity_index = 0, second_best_similarity_index = 0;


 if (certainties[local_line_b] != CERTAINTY_NOT_CALCULATED)
  return;

 closest_local_line_a = map_line_number(
  local_line_b + start_b, map_line_number_in_b_to_a) - start_a;

 search_start = closest_local_line_a - max_search_distance_a;
 if (search_start < 0)
  search_start = 0;

 search_end = closest_local_line_a + max_search_distance_a + 1;
 if (search_end > length_a)
  search_end = length_a;

 for (i = search_start; i < search_end; ++i) {
  similarity = get_similarity(similarities,
         i, local_line_b,
         closest_local_line_a,
         max_search_distance_a);
  if (*similarity == -1) {



   assert(abs(i - closest_local_line_a) < 1000);




   *similarity = fingerprint_similarity(
    fingerprints_b + local_line_b,
    fingerprints_a + i) *
    (1000 - abs(i - closest_local_line_a));
  }
  if (*similarity > best_similarity) {
   second_best_similarity = best_similarity;
   second_best_similarity_index = best_similarity_index;
   best_similarity = *similarity;
   best_similarity_index = i;
  } else if (*similarity > second_best_similarity) {
   second_best_similarity = *similarity;
   second_best_similarity_index = i;
  }
 }

 if (best_similarity == 0) {




  certainties[local_line_b] = CERTAIN_NOTHING_MATCHES;
  result[local_line_b] = -1;
 } else {
  certainties[local_line_b] = best_similarity * 2 -
   second_best_similarity;





  result[local_line_b] = start_a + best_similarity_index;
  second_best_result[local_line_b] =
   start_a + second_best_similarity_index;
 }
}
