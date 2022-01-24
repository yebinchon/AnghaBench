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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  newid ;

/* Variables and functions */
 int DISK_IDENT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned char) ; 
 int FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC5(char *ident, size_t size)
{
	char *p, tmp[4], newid[DISK_IDENT_SIZE];

	newid[0] = '\0';
	for (p = ident; *p != '\0'; p++) {
		if (FUNC1(*p)) {
			tmp[0] = *p;
			tmp[1] = '\0';
		} else {
			FUNC2(tmp, sizeof(tmp), "x%02hhx",
			    *(unsigned char *)p);
		}
		if (FUNC3(newid, tmp, sizeof(newid)) >= sizeof(newid))
			break;
	}
	FUNC0(ident, size);
	FUNC4(ident, newid, size);
}