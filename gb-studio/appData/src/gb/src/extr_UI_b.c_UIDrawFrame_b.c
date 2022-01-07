
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int set_win_tiles (int,int,int,int,int ) ;
 int ui_frame_b_tiles ;
 int ui_frame_bg_tiles ;
 int ui_frame_bl_tiles ;
 int ui_frame_br_tiles ;
 int ui_frame_l_tiles ;
 int ui_frame_r_tiles ;
 int ui_frame_t_tiles ;
 int ui_frame_tl_tiles ;
 int ui_frame_tr_tiles ;

void UIDrawFrame_b(UBYTE x, UBYTE y, UBYTE width, UBYTE height)
{
  UBYTE i, j;
  set_win_tiles(x, y, 1, 1, ui_frame_tl_tiles);
  set_win_tiles(x, height + 1, 1, 1, ui_frame_bl_tiles);
  set_win_tiles(x + width, 0, 1, 1, ui_frame_tr_tiles);
  set_win_tiles(x + width, height + 1, 1, 1, ui_frame_br_tiles);

  for (j = 1; j != height + 1; j++)
  {
    set_win_tiles(x, j, 1, 1, ui_frame_l_tiles);
    set_win_tiles(x + width, j, 1, 1, ui_frame_r_tiles);
    for (i = 1; i != width; ++i)
    {
      set_win_tiles(i, j, 1, 1, ui_frame_bg_tiles);
    }
  }

  for (i = 1; i != width; ++i)
  {
    set_win_tiles(i, 0, 1, 1, ui_frame_t_tiles);
    set_win_tiles(i, height + 1, 1, 1, ui_frame_b_tiles);
  }
}
