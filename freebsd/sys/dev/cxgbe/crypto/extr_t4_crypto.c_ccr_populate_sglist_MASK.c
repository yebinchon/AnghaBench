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
struct uio {int dummy; } ;
struct sglist {int dummy; } ;
struct mbuf {int dummy; } ;
struct cryptop {int crp_flags; int /*<<< orphan*/  crp_ilen; scalar_t__ crp_buf; } ;

/* Variables and functions */
 int CRYPTO_F_IMBUF ; 
 int CRYPTO_F_IOV ; 
 int FUNC0 (struct sglist*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sglist*,struct mbuf*) ; 
 int FUNC2 (struct sglist*,struct uio*) ; 
 int /*<<< orphan*/  FUNC3 (struct sglist*) ; 

__attribute__((used)) static int
FUNC4(struct sglist *sg, struct cryptop *crp)
{
	int error;

	FUNC3(sg);
	if (crp->crp_flags & CRYPTO_F_IMBUF)
		error = FUNC1(sg, (struct mbuf *)crp->crp_buf);
	else if (crp->crp_flags & CRYPTO_F_IOV)
		error = FUNC2(sg, (struct uio *)crp->crp_buf);
	else
		error = FUNC0(sg, crp->crp_buf, crp->crp_ilen);
	return (error);
}