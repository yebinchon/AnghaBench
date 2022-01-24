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
struct sbuf {int dummy; } ;
struct pubkey {int siglen; void* sig; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*) ; 
 int FUNC8 (struct sbuf*) ; 
 struct sbuf* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static struct pubkey *
FUNC11(int fd)
{
	struct pubkey *pk;
	struct sbuf *sig;
	char buf[4096];
	int r;

	if (FUNC1(fd, 0, 0) == -1) {
		FUNC10("lseek");
		return (NULL);
	}

	sig = FUNC9();

	while ((r = FUNC3(fd, buf, sizeof(buf))) >0) {
		FUNC4(sig, buf, r);
	}

	FUNC7(sig);
	pk = FUNC0(1, sizeof(struct pubkey));
	pk->siglen = FUNC8(sig);
	pk->sig = FUNC0(1, pk->siglen);
	FUNC2(pk->sig, FUNC5(sig), pk->siglen);
	FUNC6(sig);

	return (pk);
}