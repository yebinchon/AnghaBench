
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_line_tracker {scalar_t__ is_parent; scalar_t__ s_lno; } ;



__attribute__((used)) static int are_lines_adjacent(struct blame_line_tracker *first,
         struct blame_line_tracker *second)
{
 return first->is_parent == second->is_parent &&
        first->s_lno + 1 == second->s_lno;
}
