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
typedef  int /*<<< orphan*/  k ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_FILE ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (int,char*,int) ; 

void FUNC10(unsigned char *key, int len)
{
	char tmp[16];
	char k[64];
	int fd;
	int rd;

	FUNC0(len*3 < sizeof(k));

	k[0] = 0;
	while (len--) {
		FUNC6(tmp, "%.2X", *key++);
		FUNC7(k, tmp);
		if (len)
			FUNC7(k, ":");
	}

	fd = FUNC4(KEY_FILE, O_WRONLY | O_CREAT, 0644);
	if (fd == -1)
		FUNC2(1, "open()");

	FUNC5("\nKey: %s\n", k);
	rd = FUNC9(fd, k, FUNC8(k));
	if (rd == -1)
		FUNC2(1, "write()");
	if (rd != FUNC8(k))
		FUNC3(1, "write %d/%d\n", rd, FUNC8(k));
	FUNC1(fd);
}