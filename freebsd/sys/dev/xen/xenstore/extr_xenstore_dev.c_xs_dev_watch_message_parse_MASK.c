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
struct xsd_sockmsg {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (char const**,char const*,char const**) ; 

__attribute__((used)) static int
FUNC2(const struct xsd_sockmsg *msg, const char **path_r,
    const char **token_r)
{
	const char *p, *end;
	int error;

	p = (const char *)msg + sizeof(*msg);
	end = p + msg->len;
	FUNC0(p <= end, ("payload overflow"));

	error = FUNC1(&p, end, path_r);
	if (error)
		return (error);
	error = FUNC1(&p, end, token_r);
	if (error)
		return (error);

	return (0);
}