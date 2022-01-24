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
struct icl_conn {int dummy; } ;

/* Variables and functions */
 struct iscsi_session* FUNC0 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session*) ; 

__attribute__((used)) static void
FUNC3(struct icl_conn *ic)
{
	struct iscsi_session *is;

	is = FUNC0(ic);

	FUNC1(is, "connection error; reconnecting");
	FUNC2(is);
}