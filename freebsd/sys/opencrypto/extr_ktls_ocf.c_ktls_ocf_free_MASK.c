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
struct ocf_session {int /*<<< orphan*/  lock; } ;
struct ktls_session {struct ocf_session* cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_KTLS_OCF ; 
 int /*<<< orphan*/  FUNC0 (struct ocf_session*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocf_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ktls_session *tls)
{
	struct ocf_session *os;

	os = tls->cipher;
	FUNC2(&os->lock);
	FUNC0(os, sizeof(*os));
	FUNC1(os, M_KTLS_OCF);
}