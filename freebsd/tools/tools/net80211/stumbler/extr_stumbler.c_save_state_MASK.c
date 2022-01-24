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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  tim ;
struct tm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tv_sec; } ;
struct node_info {int chan; int max; struct node_info* next; int /*<<< orphan*/  wep; int /*<<< orphan*/  mac; TYPE_1__ seen; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char*,int,char*,int) ; 
 struct tm* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 struct node_info* nodes ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (struct node_info*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,struct tm*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10() {
	FILE* f;
	struct node_info* node = nodes;

	f = FUNC2("stumbler.log", "w");
	if (!f) {
		FUNC6("fopen()");
		FUNC0(1);
	}	

	while (node) {
		struct tm* t;
		char tim[16];

		t = FUNC4( (time_t*) &node->seen.tv_sec);
		if (!t) {
			FUNC6("localtime()");
			FUNC0(1);
		}
		tim[0] = 0;
		FUNC8(tim, sizeof(tim), "%H:%M:%S", t);
	
		FUNC3(f, "%s %s %s %2d %s 0x%.2x\n", tim,
			FUNC5(node->mac), FUNC9(node->wep),
			node->chan, FUNC7(node), node->max);

		node = node->next;	
	}

	FUNC1(f);
}