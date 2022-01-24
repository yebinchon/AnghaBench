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
struct msghdr {scalar_t__ msg_controllen; char* msg_control; } ;
struct cmsghdr {int cmsg_level; int cmsg_type; scalar_t__ cmsg_len; } ;
typedef  scalar_t__ socklen_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct cmsghdr* FUNC0 (struct msghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*,struct cmsghdr*) ; 
#define  IPPROTO_SCTP 128 
 char* FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,uintptr_t,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,uintptr_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,struct cmsghdr*) ; 
 char* FUNC11 (int,int) ; 
 int /*<<< orphan*/  sysdecode_sockopt_level ; 

__attribute__((used)) static void
FUNC12(FILE *fp, pid_t pid, bool receive, struct msghdr *msghdr)
{
	struct cmsghdr *cmsghdr;
	char *cmsgbuf;
	const char *temp;
	socklen_t len;
	int level, type;
	bool first;

	len = msghdr->msg_controllen;
	if (len == 0) {
		FUNC4("{}", fp);
		return;
	}
	cmsgbuf = FUNC2(1, len);
	if (FUNC6(pid, (uintptr_t)msghdr->msg_control, cmsgbuf, len) == -1) {
		FUNC9(fp, (uintptr_t)msghdr->msg_control);
		FUNC5(cmsgbuf);
		return;
	}
	msghdr->msg_control = cmsgbuf;
	first = true;
	FUNC4("{", fp);
	for (cmsghdr = FUNC0(msghdr);
	   cmsghdr != NULL;
	   cmsghdr = FUNC1(msghdr, cmsghdr)) {
		level = cmsghdr->cmsg_level;
		type = cmsghdr->cmsg_type;
		len = cmsghdr->cmsg_len;
		FUNC3(fp, "%s{level=", first ? "" : ",");
		FUNC8(sysdecode_sockopt_level, fp, level);
		FUNC4(",type=", fp);
		temp = FUNC11(level, type);
		if (temp) {
			FUNC4(temp, fp);
		} else {
			FUNC3(fp, "%d", type);
		}
		FUNC4(",data=", fp);
		switch (level) {
		case IPPROTO_SCTP:
			FUNC10(fp, receive, cmsghdr);
			break;
		default:
			FUNC7(fp, cmsghdr);
			break;
		}
		FUNC4("}", fp);
		first = false;
	}
	FUNC4("}", fp);
	FUNC5(cmsgbuf);
}