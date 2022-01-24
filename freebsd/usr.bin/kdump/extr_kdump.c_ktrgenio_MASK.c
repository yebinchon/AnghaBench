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
struct winsize {int ws_col; } ;
struct ktr_genio {int ktr_fd; scalar_t__ ktr_rw; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCGWINSZ ; 
 scalar_t__ UIO_READ ; 
 scalar_t__ fancy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 int maxdata ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ suppressdata ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

void
FUNC5(struct ktr_genio *ktr, int len)
{
	int datalen = len - sizeof (struct ktr_genio);
	char *dp = (char *)ktr + sizeof (struct ktr_genio);
	static int screenwidth = 0;
	int i, binary;

	FUNC3("fd %d %s %d byte%s\n", ktr->ktr_fd,
		ktr->ktr_rw == UIO_READ ? "read" : "wrote", datalen,
		datalen == 1 ? "" : "s");
	if (suppressdata)
		return;
	if (screenwidth == 0) {
		struct winsize ws;

		if (fancy && FUNC2(FUNC0(stderr), TIOCGWINSZ, &ws) != -1 &&
		    ws.ws_col > 8)
			screenwidth = ws.ws_col;
		else
			screenwidth = 80;
	}
	if (maxdata && datalen > maxdata)
		datalen = maxdata;

	for (i = 0, binary = 0; i < datalen && binary == 0; i++)  {
		if (dp[i] >= 32 && dp[i] < 127)
			continue;
		if (dp[i] == 10 || dp[i] == 13 || dp[i] == 0 || dp[i] == 9)
			continue;
		binary = 1;
	}
	if (binary)
		FUNC1(dp, datalen, screenwidth);
	else
		FUNC4(dp, datalen, screenwidth);
}