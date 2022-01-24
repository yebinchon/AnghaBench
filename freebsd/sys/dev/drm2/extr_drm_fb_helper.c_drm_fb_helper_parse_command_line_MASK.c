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
struct drm_cmdline_mode {int force; int refresh; scalar_t__ interlace; scalar_t__ margins; scalar_t__ rb; scalar_t__ refresh_specified; int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; } ;
struct drm_fb_helper_connector {struct drm_cmdline_mode cmdline_mode; struct drm_connector* connector; } ;
struct drm_fb_helper {int connector_count; struct drm_fb_helper_connector** connector_info; } ;
struct drm_connector {int force; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char*,char*) ; 
#define  DRM_FORCE_OFF 130 
#define  DRM_FORCE_ON 129 
#define  DRM_FORCE_ON_DIGITAL 128 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 scalar_t__ FUNC3 (char*,struct drm_connector*,struct drm_cmdline_mode*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct drm_fb_helper *fb_helper)
{
	struct drm_fb_helper_connector *fb_helper_conn;
	int i;

	for (i = 0; i < fb_helper->connector_count; i++) {
		struct drm_cmdline_mode *mode;
		struct drm_connector *connector;
		char *option = NULL;

		fb_helper_conn = fb_helper->connector_info[i];
		connector = fb_helper_conn->connector;
		mode = &fb_helper_conn->cmdline_mode;

		/* do something on return - turn off connector maybe */
		if (FUNC4(FUNC2(connector), &option))
			continue;

		if (FUNC3(option,
							      connector,
							      mode)) {
			if (mode->force) {
				const char *s;
				switch (mode->force) {
				case DRM_FORCE_OFF:
					s = "OFF";
					break;
				case DRM_FORCE_ON_DIGITAL:
					s = "ON - dig";
					break;
				default:
				case DRM_FORCE_ON:
					s = "ON";
					break;
				}

				FUNC1("forcing %s connector %s\n",
					 FUNC2(connector), s);
				connector->force = mode->force;
			}

			FUNC0("cmdline mode for connector %s %dx%d@%dHz%s%s%s\n",
				      FUNC2(connector),
				      mode->xres, mode->yres,
				      mode->refresh_specified ? mode->refresh : 60,
				      mode->rb ? " reduced blanking" : "",
				      mode->margins ? " with margins" : "",
				      mode->interlace ?  " interlaced" : "");
		}

		FUNC5(option);
	}
	return 0;
}