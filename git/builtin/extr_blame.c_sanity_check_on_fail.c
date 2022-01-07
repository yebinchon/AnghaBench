
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_scoreboard {int dummy; } ;


 int OUTPUT_SHOW_NAME ;
 int OUTPUT_SHOW_NUMBER ;
 int OUTPUT_SHOW_SCORE ;
 int die (char*,int) ;
 int find_alignment (struct blame_scoreboard*,int*) ;
 int output (struct blame_scoreboard*,int) ;

__attribute__((used)) static void sanity_check_on_fail(struct blame_scoreboard *sb, int baa)
{
 int opt = OUTPUT_SHOW_SCORE | OUTPUT_SHOW_NUMBER | OUTPUT_SHOW_NAME;
 find_alignment(sb, &opt);
 output(sb, opt);
 die("Baa %d!", baa);
}
