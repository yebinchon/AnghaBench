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
struct iscsi_session {int /*<<< orphan*/  is_outstanding; int /*<<< orphan*/  is_conn; } ;
struct iscsi_outstanding {int /*<<< orphan*/  io_icl_prv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iscsi_outstanding*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_next ; 
 int /*<<< orphan*/  iscsi_outstanding_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iscsi_outstanding*) ; 

__attribute__((used)) static void
FUNC4(struct iscsi_session *is, struct iscsi_outstanding *io)
{

	FUNC0(is);

	FUNC2(is->is_conn, io->io_icl_prv);
	FUNC1(&is->is_outstanding, io, io_next);
	FUNC3(iscsi_outstanding_zone, io);
}