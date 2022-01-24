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
struct mbuf {int dummy; } ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  c_caddr_t ;

/* Variables and functions */
 int CRYPTO_F_IMBUF ; 
 int CRYPTO_F_IOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uio*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int,int,int /*<<< orphan*/ ) ; 

void
FUNC3(int flags, caddr_t buf, int off, int size, c_caddr_t in)
{

	if ((flags & CRYPTO_F_IMBUF) != 0)
		FUNC2((struct mbuf *)buf, off, size, in);
	else if ((flags & CRYPTO_F_IOV) != 0)
		FUNC1((struct uio *)buf, off, size, in);
	else
		FUNC0(in, buf + off, size);
}