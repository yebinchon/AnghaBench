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
struct rfb_softc {int dummy; } ;
struct rfb_key_msg {int /*<<< orphan*/  code; int /*<<< orphan*/  down; } ;
typedef  int /*<<< orphan*/  key_msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,void*,int) ; 

__attribute__((used)) static void
FUNC3(struct rfb_softc *rc, int cfd)
{
	struct rfb_key_msg key_msg;

	(void)FUNC2(cfd, ((void *)&key_msg) + 1, sizeof(key_msg) - 1);

	FUNC0(key_msg.down, FUNC1(key_msg.code));
}