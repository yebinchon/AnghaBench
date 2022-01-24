#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_connector {size_t connector_type; int connector_type_id; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 TYPE_1__* drm_connector_enum_list ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,int) ; 

char *FUNC1(struct drm_connector *connector)
{
	static char buf[32];

	FUNC0(buf, 32, "%s-%d",
		 drm_connector_enum_list[connector->connector_type].name,
		 connector->connector_type_id);
	return buf;
}