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
struct crypt_op {int ses; size_t len; void* mac; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  cop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  CIOCCRYPT ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct crypt_op*) ; 
 int /*<<< orphan*/  katbuf ; 
 int /*<<< orphan*/  FUNC2 (struct crypt_op*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(int fd, int ses, size_t inlen, void *out)
{
	struct crypt_op cop;

	FUNC2(&cop, 0, sizeof(cop));

	cop.ses = ses;
	cop.len = inlen;
	cop.src = katbuf;
	cop.mac = out;
	FUNC0(FUNC1(fd, CIOCCRYPT, &cop) >= 0, "ioctl(CIOCCRYPT)");
}