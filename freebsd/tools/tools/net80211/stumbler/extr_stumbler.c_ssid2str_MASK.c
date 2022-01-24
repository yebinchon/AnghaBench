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
struct node_info {char* ssid; scalar_t__ ap; } ;
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

char* FUNC4(struct node_info* node) {
	static char res[24];

	FUNC1(res, ' ', sizeof(res));
	res[0] = '[';
	FUNC2(&res[sizeof(res)-2], "]");

	if (node->ap) {
		int left = sizeof(res) - 3;

		if (FUNC3(node->ssid) < left)
			left = FUNC3(node->ssid);
		FUNC0(&res[1], node->ssid, left);
	}	
	else {
		FUNC0(&res[1], "<client>", 8);
	}
	return res;
}