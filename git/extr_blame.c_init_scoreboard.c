
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_scoreboard {int copy_score; int move_score; } ;


 int BLAME_DEFAULT_COPY_SCORE ;
 int BLAME_DEFAULT_MOVE_SCORE ;
 int memset (struct blame_scoreboard*,int ,int) ;

void init_scoreboard(struct blame_scoreboard *sb)
{
 memset(sb, 0, sizeof(struct blame_scoreboard));
 sb->move_score = BLAME_DEFAULT_MOVE_SCORE;
 sb->copy_score = BLAME_DEFAULT_COPY_SCORE;
}
