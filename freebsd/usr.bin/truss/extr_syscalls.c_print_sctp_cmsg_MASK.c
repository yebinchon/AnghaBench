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
struct sctp_sndrcvinfo {int dummy; } ;
struct sctp_sndinfo {int dummy; } ;
struct sctp_rcvinfo {int dummy; } ;
struct sctp_prinfo {int dummy; } ;
struct sctp_nxtinfo {int dummy; } ;
struct sctp_initmsg {int dummy; } ;
struct sctp_extrcvinfo {int dummy; } ;
struct sctp_authinfo {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct cmsghdr {int cmsg_type; int /*<<< orphan*/  cmsg_len; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* FUNC0 (struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  SCTP_AUTHINFO 137 
#define  SCTP_DSTADDRV4 136 
#define  SCTP_DSTADDRV6 135 
#define  SCTP_EXTRCV 134 
#define  SCTP_INIT 133 
#define  SCTP_NXTINFO 132 
#define  SCTP_PRINFO 131 
#define  SCTP_RCVINFO 130 
#define  SCTP_SNDINFO 129 
#define  SCTP_SNDRCV 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sctp_authinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sctp_extrcvinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sctp_initmsg*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sctp_nxtinfo*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sctp_prinfo*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sctp_rcvinfo*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sctp_sndinfo*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,struct sctp_sndrcvinfo*) ; 

__attribute__((used)) static void
FUNC13(FILE *fp, bool receive, struct cmsghdr *cmsghdr)
{
	void *data;
	socklen_t len;

	len = cmsghdr->cmsg_len;
	data = FUNC0(cmsghdr);
	switch (cmsghdr->cmsg_type) {
	case SCTP_INIT:
		if (len == FUNC1(sizeof(struct sctp_initmsg)))
			FUNC5(fp, (struct sctp_initmsg *)data);
		else
			FUNC2(fp, cmsghdr);
		break;
	case SCTP_SNDRCV:
		if (len == FUNC1(sizeof(struct sctp_sndrcvinfo)))
			FUNC12(fp, receive,
			    (struct sctp_sndrcvinfo *)data);
		else
			FUNC2(fp, cmsghdr);
		break;
#if 0
	case SCTP_EXTRCV:
		if (len == CMSG_LEN(sizeof(struct sctp_extrcvinfo)))
			print_sctp_extrcvinfo(fp,
			    (struct sctp_extrcvinfo *)data);
		else
			print_gen_cmsg(fp, cmsghdr);
		break;
#endif
	case SCTP_SNDINFO:
		if (len == FUNC1(sizeof(struct sctp_sndinfo)))
			FUNC11(fp, (struct sctp_sndinfo *)data);
		else
			FUNC2(fp, cmsghdr);
		break;
	case SCTP_RCVINFO:
		if (len == FUNC1(sizeof(struct sctp_rcvinfo)))
			FUNC10(fp, (struct sctp_rcvinfo *)data);
		else
			FUNC2(fp, cmsghdr);
		break;
	case SCTP_NXTINFO:
		if (len == FUNC1(sizeof(struct sctp_nxtinfo)))
			FUNC8(fp, (struct sctp_nxtinfo *)data);
		else
			FUNC2(fp, cmsghdr);
		break;
	case SCTP_PRINFO:
		if (len == FUNC1(sizeof(struct sctp_prinfo)))
			FUNC9(fp, (struct sctp_prinfo *)data);
		else
			FUNC2(fp, cmsghdr);
		break;
	case SCTP_AUTHINFO:
		if (len == FUNC1(sizeof(struct sctp_authinfo)))
			FUNC3(fp, (struct sctp_authinfo *)data);
		else
			FUNC2(fp, cmsghdr);
		break;
	case SCTP_DSTADDRV4:
		if (len == FUNC1(sizeof(struct in_addr)))
			FUNC6(fp, (struct in_addr *)data);
		else
			FUNC2(fp, cmsghdr);
		break;
	case SCTP_DSTADDRV6:
		if (len == FUNC1(sizeof(struct in6_addr)))
			FUNC7(fp, (struct in6_addr *)data);
		else
			FUNC2(fp, cmsghdr);
		break;
	default:
		FUNC2(fp, cmsghdr);
	}
}