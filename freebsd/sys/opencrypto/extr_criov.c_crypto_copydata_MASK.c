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

/* Variables and functions */
 int CRYPTO_F_IMBUF ; 
 int CRYPTO_F_IOV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uio*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int,int,scalar_t__) ; 

void
FUNC3(int flags, caddr_t buf, int off, int size, caddr_t out)
{

	if ((flags & CRYPTO_F_IMBUF) != 0)
		FUNC2((struct mbuf *)buf, off, size, out);
	else if ((flags & CRYPTO_F_IOV) != 0)
		FUNC1((struct uio *)buf, off, size, out);
	else
		FUNC0(buf + off, out, size);
}