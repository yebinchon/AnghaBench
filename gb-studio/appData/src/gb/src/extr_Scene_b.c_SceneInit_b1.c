
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY_OFF ;
 void* FALSE ;
 int MAXWNDPOSX ;
 int MAXWNDPOSY ;
 scalar_t__ SCX_REG ;
 scalar_t__ SCY_REG ;
 int SpritesReset () ;
 int UIInit () ;
 int WX_REG ;
 int WY_REG ;
 void* scene_input_ready ;
 void* scene_loaded ;

void SceneInit_b1()
{
  DISPLAY_OFF;

  scene_loaded = FALSE;
  scene_input_ready = FALSE;

  SpritesReset();
  UIInit();

  SCX_REG = 0;
  SCY_REG = 0;
  WX_REG = MAXWNDPOSX;
  WY_REG = MAXWNDPOSY;


}
