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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  mode ;
typedef  int /*<<< orphan*/  cursor_radius ;
typedef  int /*<<< orphan*/  cursor_interval ;
typedef  int /*<<< orphan*/  button_interval ;

/* Variables and functions */
 int G_MOUSE_MODE_BOX ; 
 int G_MOUSE_MODE_CIRCLE ; 
 int G_MOUSE_MODE_SILENT ; 
 int G_MOUSE_MODE_SPIRAL ; 
 int /*<<< orphan*/  USB_TEMP_MOUSE ; 
 int errno ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char*,int,int,int) ; 

__attribute__((used)) static void
FUNC5(uint8_t level)
{
	int error;
	int retval;
	int mode = 0;
	int cursor_interval = 128;
	int cursor_radius = 75;
	int button_interval = 0;

	FUNC2(USB_TEMP_MOUSE);

	while (1) {

		error = FUNC3("hw.usb.g_mouse.mode", NULL, NULL,
		    &mode, sizeof(mode));

		if (error != 0) {
			FUNC1("WARNING: Could not set mouse mode "
			    "to %d (error=%d)\n", mode, errno);
		}
		error = FUNC3("hw.usb.g_mouse.cursor_update_interval", NULL, NULL,
		    &cursor_interval, sizeof(cursor_interval));

		if (error != 0) {
			FUNC1("WARNING: Could not set cursor update interval "
			    "to %d (error=%d)\n", cursor_interval, errno);
		}
		error = FUNC3("hw.usb.g_mouse.button_press_interval", NULL, NULL,
		    &button_interval, sizeof(button_interval));

		if (error != 0) {
			FUNC1("WARNING: Could not set button press interval "
			    "to %d (error=%d)\n", button_interval, errno);
		}
		error = FUNC3("hw.usb.g_mouse.cursor_radius", NULL, NULL,
		    &cursor_radius, sizeof(cursor_radius));

		if (error != 0) {
			FUNC1("WARNING: Could not set cursor radius "
			    "to %d (error=%d)\n", cursor_radius, errno);
		}
		retval = FUNC4(level, "Default Mouse Settings",
		    "1) Set Silent mode %s\n"
		    "2) Set Circle mode %s\n"
		    "3) Set Square mode %s\n"
		    "4) Set Spiral mode %s\n"
		    "5) Change cursor radius: %d pixels\n"
		    "6) Change cursor update interval: %d ms\n"
		    "7) Change button[0] press interval: %d ms\n"
		    "x) Return to previous menu\n"
		    "s: Ready for enumeration\n",
		    (mode == G_MOUSE_MODE_SILENT) ? "(selected)" : "",
		    (mode == G_MOUSE_MODE_CIRCLE) ? "(selected)" : "",
		    (mode == G_MOUSE_MODE_BOX) ? "(selected)" : "",
		    (mode == G_MOUSE_MODE_SPIRAL) ? "(selected)" : "",
		    cursor_radius, cursor_interval, button_interval);

		switch (retval) {
		case 0:
			break;
		case 1:
			mode = G_MOUSE_MODE_SILENT;
			break;
		case 2:
			mode = G_MOUSE_MODE_CIRCLE;
			break;
		case 3:
			mode = G_MOUSE_MODE_BOX;
			break;
		case 4:
			mode = G_MOUSE_MODE_SPIRAL;
			break;
		case 5:
			cursor_radius = FUNC0();
			break;
		case 6:
			cursor_interval = FUNC0();
			break;
		case 7:
			button_interval = FUNC0();
			break;
		default:
			return;
		}
	}
}