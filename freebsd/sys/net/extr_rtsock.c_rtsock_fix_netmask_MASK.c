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
struct sockaddr_storage {int /*<<< orphan*/  ss_family; int /*<<< orphan*/  ss_len; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; int /*<<< orphan*/  sa_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr_storage*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sockaddr *
FUNC2(struct sockaddr *dst, struct sockaddr *smask,
    struct sockaddr_storage *dmask)
{
	if (dst == NULL || smask == NULL)
		return (NULL);

	FUNC1(dmask, 0, dst->sa_len);
	FUNC0(dmask, smask, smask->sa_len);
	dmask->ss_len = dst->sa_len;
	dmask->ss_family = dst->sa_family;

	return ((struct sockaddr *)dmask);
}