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
struct mac_policy_conf {int dummy; } ;
struct mac_mls {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zone_mls ; 

__attribute__((used)) static void
FUNC1(struct mac_policy_conf *conf)
{

	zone_mls = FUNC0("mac_mls", sizeof(struct mac_mls), NULL,
	    NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
}