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
struct tid_info {int dummy; } ;
struct _ipfw_obj_header {int /*<<< orphan*/  ntlv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tid_info*) ; 

__attribute__((used)) static void
FUNC1(struct _ipfw_obj_header *oh, struct tid_info *ti)
{

	FUNC0(&oh->ntlv, ti);
}