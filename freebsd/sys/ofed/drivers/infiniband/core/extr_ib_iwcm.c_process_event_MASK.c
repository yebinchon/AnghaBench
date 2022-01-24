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
struct iwcm_id_private {int dummy; } ;
struct iw_cm_event {int event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  IW_CM_EVENT_CLOSE 132 
#define  IW_CM_EVENT_CONNECT_REPLY 131 
#define  IW_CM_EVENT_CONNECT_REQUEST 130 
#define  IW_CM_EVENT_DISCONNECT 129 
#define  IW_CM_EVENT_ESTABLISHED 128 
 int FUNC1 (struct iwcm_id_private*,struct iw_cm_event*) ; 
 int FUNC2 (struct iwcm_id_private*,struct iw_cm_event*) ; 
 int FUNC3 (struct iwcm_id_private*,struct iw_cm_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwcm_id_private*,struct iw_cm_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwcm_id_private*,struct iw_cm_event*) ; 

__attribute__((used)) static int FUNC6(struct iwcm_id_private *cm_id_priv,
			 struct iw_cm_event *iw_event)
{
	int ret = 0;

	switch (iw_event->event) {
	case IW_CM_EVENT_CONNECT_REQUEST:
		FUNC4(cm_id_priv, iw_event);
		break;
	case IW_CM_EVENT_CONNECT_REPLY:
		ret = FUNC3(cm_id_priv, iw_event);
		break;
	case IW_CM_EVENT_ESTABLISHED:
		ret = FUNC2(cm_id_priv, iw_event);
		break;
	case IW_CM_EVENT_DISCONNECT:
		FUNC5(cm_id_priv, iw_event);
		break;
	case IW_CM_EVENT_CLOSE:
		ret = FUNC1(cm_id_priv, iw_event);
		break;
	default:
		FUNC0();
	}

	return ret;
}