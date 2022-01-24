#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int CAMERA_LOCK_FLAG ; 
 int CAMERA_TRANSITION_FLAG ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ Script_ActorSetEmote_b ; 
 scalar_t__ Script_AwaitInput_b ; 
 scalar_t__ Script_CameraLock_b ; 
 scalar_t__ Script_CameraMoveTo_b ; 
 scalar_t__ Script_Choice_b ; 
 scalar_t__ Script_FadeIn_b ; 
 scalar_t__ Script_FadeOut_b ; 
 scalar_t__ Script_LoadData_b ; 
 scalar_t__ Script_LoadScene_b ; 
 scalar_t__ Script_OverlayMoveTo_b ; 
 scalar_t__ Script_ScenePopAllState_b ; 
 scalar_t__ Script_ScenePopState_b ; 
 scalar_t__ Script_TextMenu_b ; 
 scalar_t__ Script_TextWithAvatar_b ; 
 scalar_t__ Script_Text_b ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int camera_settings ; 
 scalar_t__ last_fn ; 

UBYTE FUNC6()
{
  UBYTE fading = FUNC0();

  if (last_fn == Script_FadeIn_b && !fading)
  {
    return TRUE;
  }

  if (last_fn == Script_FadeOut_b && !fading)
  {
    return TRUE;
  }

  if (last_fn == Script_LoadScene_b && !fading)
  {
    return TRUE;
  }

  if (last_fn == Script_ScenePopState_b)
  {
    return TRUE;
  }

  if (last_fn == Script_ScenePopAllState_b)
  {
    return TRUE;
  }

  if (last_fn == Script_LoadData_b && !fading)
  {
    return TRUE;
  }

  if (last_fn == Script_ActorSetEmote_b && !FUNC3())
  {
    return TRUE;
  }

  if (last_fn == Script_Text_b && FUNC5())
  {
    return TRUE;
  }

  if (last_fn == Script_Choice_b && FUNC5())
  {
    return TRUE;
  }

  if (last_fn == Script_TextMenu_b && FUNC5())
  {
    return TRUE;
  }

  if (last_fn == Script_OverlayMoveTo_b && FUNC4())
  {
    return TRUE;
  }

  if (last_fn == Script_AwaitInput_b && FUNC1())
  {
    return TRUE;
  }

  if (last_fn == Script_CameraMoveTo_b && FUNC2())
  {
    camera_settings = camera_settings & ~CAMERA_TRANSITION_FLAG;
    return TRUE;
  }

  if (last_fn == Script_CameraLock_b && FUNC2())
  {
    camera_settings = CAMERA_LOCK_FLAG;
    return TRUE;
  }

  if (last_fn == Script_TextWithAvatar_b && FUNC5())
  {
    return TRUE;
  }

  return FALSE;
}