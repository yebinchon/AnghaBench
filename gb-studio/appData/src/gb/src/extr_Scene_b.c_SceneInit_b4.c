
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int SceneRenderActor_b (int) ;
 int scene_num_actors ;

void SceneInit_b4()
{
  UBYTE i;
  for (i = 1; i != scene_num_actors; ++i)
  {
    SceneRenderActor_b(i);
  }
}
