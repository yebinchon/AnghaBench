
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_scoreboard {int num_lines; int final_buf_size; int final_buf; int lineno; } ;


 int find_line_starts (int *,int ,int ) ;

__attribute__((used)) static int prepare_lines(struct blame_scoreboard *sb)
{
 sb->num_lines = find_line_starts(&sb->lineno, sb->final_buf,
      sb->final_buf_size);
 return sb->num_lines;
}
