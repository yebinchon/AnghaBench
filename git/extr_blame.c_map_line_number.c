
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_number_mapping {int source_start; int destination_length; int source_length; int destination_start; } ;



__attribute__((used)) static int map_line_number(int line_number,
 const struct line_number_mapping *mapping)
{
 return ((line_number - mapping->source_start) * 2 + 1) *
        mapping->destination_length /
        (mapping->source_length * 2) +
        mapping->destination_start;
}
