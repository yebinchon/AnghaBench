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
typedef  int /*<<< orphan*/  u_int ;
struct xs_transaction {int dummy; } ;
struct iovec {scalar_t__ iov_len; void* iov_base; } ;
typedef  enum xsd_sockmsg_type { ____Placeholder_xsd_sockmsg_type } xsd_sockmsg_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (struct xs_transaction,int,struct iovec*,int,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static int
FUNC2(struct xs_transaction t, enum xsd_sockmsg_type request_type,
    const char *body, u_int *len, void **result)
{
	struct iovec iovec;

	iovec.iov_base = (void *)(uintptr_t)body;
	iovec.iov_len = FUNC0(body) + 1;

	return (FUNC1(t, request_type, &iovec, 1, len, result));
}