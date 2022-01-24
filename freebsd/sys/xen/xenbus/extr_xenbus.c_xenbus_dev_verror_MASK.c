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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  M_XENBUS ; 
 unsigned int PRINTF_BUFFER_SIZE ; 
 int /*<<< orphan*/  XST_NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 unsigned int FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*,unsigned int,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,char*,char*) ; 

void
FUNC10(device_t dev, int err, const char *fmt, va_list ap)
{
	int ret;
	unsigned int len;
	char *printf_buffer = NULL, *path_buffer = NULL;

#define PRINTF_BUFFER_SIZE 4096
	printf_buffer = FUNC4(PRINTF_BUFFER_SIZE,M_XENBUS, M_WAITOK);

	len = FUNC6(printf_buffer, "%i ", err);
	ret = FUNC7(printf_buffer+len, PRINTF_BUFFER_SIZE-len, fmt, ap);

	FUNC0(len + ret <= PRINTF_BUFFER_SIZE-1, ("xenbus error message too big"));
	FUNC1(dev, "Error %s\n", printf_buffer);
	path_buffer = FUNC2(dev);

	if (path_buffer == NULL) {
		FUNC5("xenbus: failed to write error node for %s (%s)\n",
		       FUNC8(dev), printf_buffer);
		goto fail;
	}

	if (FUNC9(XST_NIL, path_buffer, "error", printf_buffer) != 0) {
		FUNC5("xenbus: failed to write error node for %s (%s)\n",
		       FUNC8(dev), printf_buffer);
		goto fail;
	}

 fail:
	if (printf_buffer)
		FUNC3(printf_buffer,M_XENBUS);
	if (path_buffer)
		FUNC3(path_buffer,M_XENBUS);
}