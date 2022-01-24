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
struct socket {int dummy; } ;
struct sockbuf {int /*<<< orphan*/ * sb_tls_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*,struct socket*) ; 

void
FUNC2(struct sockbuf *sb, struct socket *so)
{

	FUNC1(sb, so);
#ifdef KERN_TLS
	if (sb->sb_tls_info != NULL)
		ktls_free(sb->sb_tls_info);
	sb->sb_tls_info = NULL;
#endif
}