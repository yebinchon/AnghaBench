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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BCMFW_BSIZE ; 
 int BCMFW_BULK_EP ; 
 int BCMFW_INTR_EP ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int,char*,int) ; 

__attribute__((used)) static int
FUNC8(char const *name, char const *md, char const *fw)
{
	char	buf[BCMFW_BSIZE];
	int	intr = -1, bulk = -1, fd = -1, error = -1, len;

	/* Open interrupt endpoint device */
	FUNC3(buf, sizeof(buf), "/dev/%s.%d", name, BCMFW_INTR_EP);
	if ((intr = FUNC1(buf, O_RDONLY)) < 0) {
		FUNC5(LOG_ERR, "Could not open(%s). %s (%d)",
				buf, FUNC4(errno), errno);
		goto out;
	}

	/* Open bulk endpoint device */
	FUNC3(buf, sizeof(buf), "/dev/%s.%d", name, BCMFW_BULK_EP);
	if ((bulk = FUNC1(buf, O_WRONLY)) < 0) {
		FUNC5(LOG_ERR, "Could not open(%s). %s (%d)",
				buf, FUNC4(errno), errno);
		goto out;
	}

	/* 
	 * Load mini-driver 
	 */

	if ((fd = FUNC1(md, O_RDONLY)) < 0) {
		FUNC5(LOG_ERR, "Could not open(%s). %s (%d)",
				md, FUNC4(errno), errno);
		goto out;
	}

	for (;;) {
		len = FUNC2(fd, buf, sizeof(buf));
		if (len < 0) {
			FUNC5(LOG_ERR, "Could not read(%s). %s (%d)",
					md, FUNC4(errno), errno);
			goto out;
		}
		if (len == 0)
			break;

		len = FUNC7(bulk, buf, len);
		if (len < 0) {
			FUNC5(LOG_ERR, "Could not write(/dev/%s.%d). %s (%d)",
					name, BCMFW_BULK_EP, FUNC4(errno),
					errno);
			goto out;
		}
	}

	FUNC0(fd);
	fd = -1;

	FUNC6(10);

	/* 
	 * Memory select 
	 */

	if (FUNC7(bulk, "#", 1) < 0) {
		FUNC5(LOG_ERR, "Could not write(/dev/%s.%d). %s (%d)",
				name, BCMFW_BULK_EP, FUNC4(errno), errno);
		goto out;
	}

	if (FUNC2(intr, buf, sizeof(buf)) < 0) {
		FUNC5(LOG_ERR, "Could not read(/dev/%s.%d). %s (%d)",
				name, BCMFW_INTR_EP, FUNC4(errno), errno);
		goto out;
	}

	if (buf[0] != '#') {
		FUNC5(LOG_ERR, "%s: Memory select failed (%c)", name, buf[0]);
		goto out;
	}

	/*
	 * Load firmware
	 */

	if ((fd = FUNC1(fw, O_RDONLY)) < 0) {
		FUNC5(LOG_ERR, "Could not open(%s). %s (%d)",
				fw, FUNC4(errno), errno);
		goto out;
	}

	for (;;) {
		len = FUNC2(fd, buf, sizeof(buf));
		if (len < 0) {
			FUNC5(LOG_ERR, "Could not read(%s). %s (%d)",
					fw, FUNC4(errno), errno);
			goto out;
		}
		if (len == 0)
			break;

		len = FUNC7(bulk, buf, len);
		if (len < 0) {
			FUNC5(LOG_ERR, "Could not write(/dev/%s.%d). %s (%d)",
					name, BCMFW_BULK_EP, FUNC4(errno),
					errno);
			goto out;
		}
	}

	FUNC0(fd);
	fd = -1;

	if (FUNC2(intr, buf, sizeof(buf)) < 0) {
		FUNC5(LOG_ERR, "Could not read(/dev/%s.%d). %s (%d)",
				name, BCMFW_INTR_EP, FUNC4(errno), errno);
		goto out;
	}

	if (buf[0] != '.') {
		FUNC5(LOG_ERR, "%s: Could not load firmware (%c)",
				name, buf[0]);
		goto out;
	}

	FUNC6(500000);
	error = 0;
out:
	if (fd != -1)
		FUNC0(fd);
	if (bulk != -1)
		FUNC0(bulk);
	if (intr != -1)
		FUNC0(intr);

	return (error);
}