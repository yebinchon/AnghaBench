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
#define  FILE_INSECURE 130 
#define  FILE_ORIG 129 
#define  FILE_SECURE 128 
 int MAXPATHLEN ; 
 char* _MP_DB ; 
 char* _SMP_DB ; 
 int clean ; 
 char* pname ; 
 char* prefix ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(void)
{
	char buf[MAXPATHLEN];

	switch(clean) {
	case FILE_ORIG:
		(void)FUNC0(buf, sizeof(buf), "%s.orig", pname);
		(void)FUNC1(buf);
		/* FALLTHROUGH */
	case FILE_SECURE:
		(void)FUNC0(buf, sizeof(buf), "%s/%s.tmp", prefix, _SMP_DB);
		(void)FUNC1(buf);
		/* FALLTHROUGH */
	case FILE_INSECURE:
		(void)FUNC0(buf, sizeof(buf), "%s/%s.tmp", prefix, _MP_DB);
		(void)FUNC1(buf);
	}
}