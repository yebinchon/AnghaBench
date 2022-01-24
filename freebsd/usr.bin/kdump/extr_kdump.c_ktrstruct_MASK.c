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
struct stat {size_t ss_len; } ;
struct sockaddr_storage {size_t ss_len; } ;
struct sockaddr {int dummy; } ;
struct itimerval {size_t ss_len; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  struct stat cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC4 (struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (struct stat*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

void
FUNC8(char *buf, size_t buflen)
{
	char *name, *data;
	size_t namelen, datalen;
	int i;
	cap_rights_t rights;
	struct itimerval it;
	struct stat sb;
	struct sockaddr_storage ss;

	for (name = buf, namelen = 0;
	     namelen < buflen && name[namelen] != '\0';
	     ++namelen)
		/* nothing */;
	if (namelen == buflen)
		goto invalid;
	if (name[namelen] != '\0')
		goto invalid;
	data = buf + namelen + 1;
	datalen = buflen - namelen - 1;
	if (datalen == 0)
		goto invalid;
	/* sanity check */
	for (i = 0; i < (int)namelen; ++i)
		if (!FUNC0(name[i]))
			goto invalid;
	if (FUNC7(name, "caprights") == 0) {
		if (datalen != sizeof(cap_rights_t))
			goto invalid;
		FUNC5(&rights, data, datalen);
		FUNC1(&rights);
	} else if (FUNC7(name, "itimerval") == 0) {
		if (datalen != sizeof(struct itimerval))
			goto invalid;
		FUNC5(&it, data, datalen);
		FUNC2(&it);
	} else if (FUNC7(name, "stat") == 0) {
		if (datalen != sizeof(struct stat))
			goto invalid;
		FUNC5(&sb, data, datalen);
		FUNC4(&sb);
	} else if (FUNC7(name, "sockaddr") == 0) {
		if (datalen > sizeof(ss))
			goto invalid;
		FUNC5(&ss, data, datalen);
		if (datalen != ss.ss_len)
			goto invalid;
		FUNC3((struct sockaddr *)&ss);
	} else {
		FUNC6("unknown structure\n");
	}
	return;
invalid:
	FUNC6("invalid record\n");
}