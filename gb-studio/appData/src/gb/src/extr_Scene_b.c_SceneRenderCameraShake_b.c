
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCX_REG ;
 int shake_time ;

void SceneRenderCameraShake_b()
{

  if (shake_time != 0)
  {
    SCX_REG += shake_time & 0x5;
  }
}
