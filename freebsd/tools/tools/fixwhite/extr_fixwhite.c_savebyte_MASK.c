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

/* Variables and functions */
 int column ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* queue ; 
 scalar_t__ queuelen ; 
 scalar_t__ queuesize ; 
 char* FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(char c)
{

	if (queuelen >= queuesize) {
		queuesize += 128;
		queue = FUNC2(queue, queuesize);
		if (queue == NULL) {
			FUNC1("malloc");
			FUNC0(1);
		}
	}
	queue[queuelen++] = c;

	switch (c) {
	case '\n':
		column = 0;
		break;
	case ' ':
		column++;
		break;
	case '\t':
		column = (column / 8 + 1) * 8;
		break;
	}
}