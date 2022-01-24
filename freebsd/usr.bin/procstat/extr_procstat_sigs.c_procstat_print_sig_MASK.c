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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const sigset_t *set, int sig, char flag)
{
	FUNC1("{d:sigmember/%c}", FUNC0(set, sig) ? flag : '-');
	switch (flag) {
		case 'B':
			FUNC1("{en:mask/%s}", FUNC0(set, sig) ?
			    "true" : "false");
			break;
		case 'C':
			FUNC1("{en:catch/%s}", FUNC0(set, sig) ?
			    "true" : "false");
			break;
		case 'P':
			FUNC1("{en:list/%s}", FUNC0(set, sig) ?
			    "true" : "false");
			break;
		case 'I':
			FUNC1("{en:ignore/%s}", FUNC0(set, sig) ?
			    "true" : "false");
			break;
		default:
			FUNC1("{en:unknown/%s}", FUNC0(set, sig) ?
			    "true" : "false");
			break;
	}
}