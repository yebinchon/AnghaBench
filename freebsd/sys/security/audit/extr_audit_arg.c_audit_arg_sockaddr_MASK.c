#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; } ;
struct sockaddr {int sa_family; int /*<<< orphan*/  sa_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  ar_arg_sockaddr; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNIX 128 
 int /*<<< orphan*/  ARG_SADDRINET ; 
 int /*<<< orphan*/  ARG_SADDRINET6 ; 
 int /*<<< orphan*/  ARG_SADDRUNIX ; 
 int /*<<< orphan*/  FUNC0 (struct kaudit_record*,int /*<<< orphan*/ ) ; 
 int AT_FDCWD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct kaudit_record* FUNC5 () ; 

void
FUNC6(struct thread *td, int dirfd, struct sockaddr *sa)
{
	struct kaudit_record *ar;

	FUNC1(td != NULL, ("audit_arg_sockaddr: td == NULL"));
	FUNC1(sa != NULL, ("audit_arg_sockaddr: sa == NULL"));

	ar = FUNC5();
	if (ar == NULL)
		return;

	FUNC4(sa, &ar->k_ar.ar_arg_sockaddr, sa->sa_len);
	switch (sa->sa_family) {
	case AF_INET:
		FUNC0(ar, ARG_SADDRINET);
		break;

	case AF_INET6:
		FUNC0(ar, ARG_SADDRINET6);
		break;

	case AF_UNIX:
		if (dirfd != AT_FDCWD)
			FUNC2(dirfd);
		FUNC3(td, dirfd,
		    ((struct sockaddr_un *)sa)->sun_path);
		FUNC0(ar, ARG_SADDRUNIX);
		break;
	/* XXXAUDIT: default:? */
	}
}