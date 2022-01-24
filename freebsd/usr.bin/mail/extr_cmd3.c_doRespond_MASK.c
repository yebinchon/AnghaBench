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
struct message {int dummy; } ;
struct header {char* h_inreplyto; int /*<<< orphan*/  h_replyto; int /*<<< orphan*/ * h_smopts; int /*<<< orphan*/ * h_bcc; int /*<<< orphan*/ * h_cc; int /*<<< orphan*/ * h_subject; int /*<<< orphan*/ * h_to; } ;

/* Variables and functions */
 int /*<<< orphan*/  GTO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct message* dot ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*,struct message*) ; 
 int /*<<< orphan*/  FUNC3 (struct header*,int) ; 
 struct message* message ; 
 void* FUNC4 (struct message*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct message*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(int msgvec[])
{
	struct header head;
	struct message *mp;
	int *ap;
	char *cp, *mid;

	head.h_to = NULL;
	for (ap = msgvec; *ap != 0; ap++) {
		mp = &message[*ap - 1];
		FUNC7(mp);
		dot = mp;
		if ((cp = FUNC6(FUNC2("from", mp))) == NULL)
			cp = FUNC6(FUNC4(mp, 2));
		head.h_to = FUNC0(head.h_to, FUNC1(cp, GTO));
		mid = FUNC6(FUNC2("message-id", mp));
	}
	if (head.h_to == NULL)
		return (0);
	mp = &message[msgvec[0] - 1];
	if ((head.h_subject = FUNC2("subject", mp)) == NULL)
		head.h_subject = FUNC2("subj", mp);
	head.h_subject = FUNC5(head.h_subject);
	head.h_cc = NULL;
	head.h_bcc = NULL;
	head.h_smopts = NULL;
	head.h_replyto = FUNC8("REPLYTO");
	head.h_inreplyto = mid;
	FUNC3(&head, 1);
	return (0);
}