
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_pos_t ;
struct terminal {int tm_emulator; } ;


 int teken_set_cursor (int *,int const*) ;

void
terminal_set_cursor(struct terminal *tm, const term_pos_t *pos)
{

 teken_set_cursor(&tm->tm_emulator, pos);
}
