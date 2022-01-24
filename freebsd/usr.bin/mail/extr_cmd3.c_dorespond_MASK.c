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
struct name {int dummy; } ;
struct message {int dummy; } ;
struct header {void* h_inreplyto; int /*<<< orphan*/  h_replyto; int /*<<< orphan*/ * h_smopts; int /*<<< orphan*/ * h_bcc; struct name* h_cc; int /*<<< orphan*/ * h_subject; struct name* h_to; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCC ; 
 int /*<<< orphan*/  GTO ; 
 char** altnames ; 
 struct name* FUNC0 (struct name*,struct name*) ; 
 struct name* FUNC1 (struct name*,char*) ; 
 struct message* dot ; 
 struct name* FUNC2 (struct name*) ; 
 struct name* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (char*,struct message*) ; 
 int /*<<< orphan*/  FUNC5 (struct header*,int) ; 
 struct message* message ; 
 char* myname ; 
 void* FUNC6 (struct message*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (struct message*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int
FUNC12(int *msgvec)
{
	struct message *mp;
	char *cp, *rcv, *replyto;
	char **ap;
	struct name *np;
	struct header head;

	if (msgvec[1] != 0) {
		FUNC7("Sorry, can't reply to multiple messages at once\n");
		return (1);
	}
	mp = &message[msgvec[0] - 1];
	FUNC10(mp);
	dot = mp;
	if ((rcv = FUNC9(FUNC4("from", mp))) == NULL)
		rcv = FUNC9(FUNC6(mp, 1));
	if ((replyto = FUNC9(FUNC4("reply-to", mp))) != NULL)
		np = FUNC3(replyto, GTO);
	else if ((cp = FUNC9(FUNC4("to", mp))) != NULL)
		np = FUNC3(cp, GTO);
	else
		np = NULL;
	np = FUNC2(np);
	/*
	 * Delete my name from the reply list,
	 * and with it, all my alternate names.
	 */
	np = FUNC1(np, myname);
	if (altnames)
		for (ap = altnames; *ap != NULL; ap++)
			np = FUNC1(np, *ap);
	if (np != NULL && replyto == NULL)
		np = FUNC0(np, FUNC3(rcv, GTO));
	else if (np == NULL) {
		if (replyto != NULL)
			FUNC7("Empty reply-to field -- replying to author\n");
		np = FUNC3(rcv, GTO);
	}
	head.h_to = np;
	if ((head.h_subject = FUNC4("subject", mp)) == NULL)
		head.h_subject = FUNC4("subj", mp);
	head.h_subject = FUNC8(head.h_subject);
	if (replyto == NULL && (cp = FUNC9(FUNC4("cc", mp))) != NULL) {
		np = FUNC2(FUNC3(cp, GCC));
		np = FUNC1(np, myname);
		if (altnames != 0)
			for (ap = altnames; *ap != NULL; ap++)
				np = FUNC1(np, *ap);
		head.h_cc = np;
	} else
		head.h_cc = NULL;
	head.h_bcc = NULL;
	head.h_smopts = NULL;
	head.h_replyto = FUNC11("REPLYTO");
	head.h_inreplyto = FUNC9(FUNC4("message-id", mp));
	FUNC5(&head, 1);
	return (0);
}