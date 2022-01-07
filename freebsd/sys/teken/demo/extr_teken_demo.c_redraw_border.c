
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NCOLS ;
 unsigned int NROWS ;
 int mvaddch (unsigned int,unsigned int,char) ;

__attribute__((used)) static void
redraw_border(void)
{
 unsigned int i;

 for (i = 0; i < NROWS; i++)
  mvaddch(i, NCOLS, '|');
 for (i = 0; i < NCOLS; i++)
  mvaddch(NROWS, i, '-');

 mvaddch(NROWS, NCOLS, '+');
}
