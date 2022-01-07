
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;
 int assert (int) ;

__attribute__((used)) static int *get_similarity(int *similarities,
      int line_a, int local_line_b,
      int closest_line_a, int max_search_distance_a)
{
 assert(abs(line_a - closest_line_a) <=
        max_search_distance_a);
 return similarities + line_a - closest_line_a +
        max_search_distance_a +
        local_line_b * (max_search_distance_a * 2 + 1);
}
