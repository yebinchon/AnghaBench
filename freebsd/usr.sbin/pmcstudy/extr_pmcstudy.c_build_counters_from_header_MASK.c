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
struct counters {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * cnts ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int ncnts ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC7(FILE *io)
{
	char buffer[8192], *p;
	int i, len, cnt;
	size_t mlen;

	/* We have a new start, lets 
	 * setup our headers and cpus.
	 */
	if (FUNC0(buffer, sizeof(buffer), io) == NULL) {
		FUNC3("First line can't be read from file err:%d\n", errno);
		return;
	}
	/*
	 * Ok output is an array of counters. Once
	 * we start to read the values in we must
	 * put them in there slot to match there CPU and 
	 * counter being updated. We create a mass array
	 * of the counters, filling in the CPU and 
	 * counter name. 
	 */
	/* How many do we get? */
	len = FUNC5(buffer);
	for (i=0, cnt=0; i<len; i++) {
		if (FUNC6(&buffer[i], "s/", 2) == 0) {
			cnt++;
			for(;i<len;i++) {
				if (buffer[i] == ' ')
					break;
			}
		}
	}
	mlen = sizeof(struct counters) * cnt;
	cnts = FUNC1(mlen);
	ncnts = cnt;
	if (cnts == NULL) {
		FUNC3("No memory err:%d\n", errno);
		return;
	}
	FUNC2(cnts, 0, mlen);
	for (i=0, cnt=0; i<len; i++) {
		if (FUNC6(&buffer[i], "s/", 2) == 0) {
			p = &buffer[i];
			for(;i<len;i++) {
				if (buffer[i] == ' ') {
					buffer[i] = 0;
					break;
				}
			}
			FUNC4(cnt, p);
			cnt++;
		}
	}
	if (verbose)
		FUNC3("We have %d entries\n", cnt);	
}