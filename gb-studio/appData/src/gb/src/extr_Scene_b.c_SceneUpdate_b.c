
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SceneHandleInput () ;
 int SceneHandleTransition () ;
 int SceneHandleTriggers_b () ;
 int SceneHandleWait () ;
 int SceneRender () ;
 int SceneUpdateActors_b () ;
 int SceneUpdateCameraShake_b () ;
 int SceneUpdateCamera_b () ;
 int SceneUpdateEmoteBubble_b () ;
 int SceneUpdateTimer_b () ;
 int ScriptRunnerUpdate () ;
 int UIUpdate () ;

void SceneUpdate_b()
{
  SceneUpdateCameraShake_b();
  SceneUpdateCamera_b();
  SceneRender();
  SceneUpdateTimer_b();
  SceneHandleInput();
  ScriptRunnerUpdate();
  SceneUpdateActors_b();
  SceneUpdateEmoteBubble_b();
  SceneHandleWait();
  SceneHandleTransition();
  UIUpdate();
  SceneHandleTriggers_b();
}
