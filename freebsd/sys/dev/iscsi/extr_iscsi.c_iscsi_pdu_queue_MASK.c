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
struct iscsi_session {int dummy; } ;
struct icl_pdu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*) ; 
 struct iscsi_session* FUNC2 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC3 (struct icl_pdu*) ; 

__attribute__((used)) static void
FUNC4(struct icl_pdu *request)
{
	struct iscsi_session *is;

	is = FUNC2(request);
	FUNC0(is);
	FUNC3(request);
	FUNC1(is);
}