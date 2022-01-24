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
struct wlan_mesh_route {int dummy; } ;
struct wlan_iface {int /*<<< orphan*/  mesh_routelist; } ;

/* Variables and functions */
 struct wlan_mesh_route* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wlan_mesh_route*) ; 
 int /*<<< orphan*/  wr ; 

__attribute__((used)) static void
FUNC4(struct wlan_iface *wif)
{
	struct wlan_mesh_route *wmr;

	while ((wmr = FUNC0(&wif->mesh_routelist)) != NULL) {
		FUNC2(&wif->mesh_routelist, wr);
		FUNC3(wmr);
	}

	FUNC1(&wif->mesh_routelist);
}