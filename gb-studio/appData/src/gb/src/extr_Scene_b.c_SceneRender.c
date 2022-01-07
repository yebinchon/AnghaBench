
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SceneRenderActors_b () ;
 int SceneRenderCameraShake_b () ;
 int SceneRenderEmoteBubble_b () ;

void SceneRender()
{
  SceneRenderCameraShake_b();
  SceneRenderActors_b();
  SceneRenderEmoteBubble_b();
}
