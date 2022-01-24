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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct signature_check {char result; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct signature_check*) ; 
 scalar_t__ FUNC1 (struct commit const*,struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

int FUNC3(const struct commit *commit, struct signature_check *sigc)
{
	struct strbuf payload = STRBUF_INIT;
	struct strbuf signature = STRBUF_INIT;
	int ret = 1;

	sigc->result = 'N';

	if (FUNC1(commit, &payload, &signature) <= 0)
		goto out;
	ret = FUNC0(payload.buf, payload.len, signature.buf,
		signature.len, sigc);

 out:
	FUNC2(&payload);
	FUNC2(&signature);

	return ret;
}