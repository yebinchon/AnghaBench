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
struct params {int prga_len; int /*<<< orphan*/  prga; int /*<<< orphan*/  iv; int /*<<< orphan*/  fname; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct params *p)
{
	int fd;
	int rd;

	fd = FUNC3(p->fname, O_WRONLY | O_CREAT, 0644);
	if (fd == -1)
		FUNC1(1, "open()");

	rd = FUNC5(fd, p->iv, 3);
	if (rd == -1)
		FUNC1(1, "write()");
	if (rd != 3) {
		FUNC4("Short write\n");
		FUNC2(1);
	}

	rd = FUNC5(fd, p->prga, p->prga_len);
	if (rd == -1)
		FUNC1(1, "write()");
	if (rd != p->prga_len) {
		FUNC4("Wrote %d/%d\n", rd, p->prga_len);
		FUNC2(1);
	}
	FUNC0(fd);

	FUNC4("Got %d bytes of PRGA\n", p->prga_len);
}