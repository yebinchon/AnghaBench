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
typedef  int ssize_t ;
typedef  scalar_t__ const_efidp ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int MAXSIZE ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int FUNC0 (char*,int,scalar_t__,size_t) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static void
FUNC6(void)
{
	char buffer[MAXSIZE];
	ssize_t fmtlen;
	ssize_t len;
	void *data;
	size_t dplen;
	const_efidp dp;

	len = FUNC5(STDIN_FILENO, &data);
	if (len == -1)
		FUNC2(1, "read");
	dp = (const_efidp)data;
	while (len > 0) {
		dplen = FUNC1(dp);
		fmtlen = FUNC0(buffer, sizeof(buffer),
		    dp, dplen);
		if (fmtlen > 0)
			FUNC4("%s\n", buffer);
		len -= dplen;
		dp = (const_efidp)((const char *)dp + dplen);
	}
	FUNC3(data);
}