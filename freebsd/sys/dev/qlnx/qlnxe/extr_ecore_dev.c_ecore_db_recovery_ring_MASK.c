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
typedef  scalar_t__ u64 ;
typedef  unsigned long long u32 ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
struct ecore_db_recovery_entry {scalar_t__ db_width; scalar_t__ db_data; int /*<<< orphan*/  db_addr; } ;
typedef  enum ecore_db_rec_exec { ____Placeholder_ecore_db_rec_exec } ecore_db_rec_exec ;

/* Variables and functions */
 int DB_REC_DRY_RUN ; 
 int DB_REC_ONCE ; 
 int DB_REC_REAL_DEAL ; 
 scalar_t__ DB_REC_WIDTH_32B ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  ECORE_MSG_SPQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ecore_hwfn *p_hwfn,
			    struct ecore_db_recovery_entry *db_entry,
			    enum ecore_db_rec_exec db_exec)
{
	if (db_exec != DB_REC_ONCE) {
		/* Print according to width */
		if (db_entry->db_width == DB_REC_WIDTH_32B)
			FUNC2(p_hwfn, ECORE_MSG_SPQ,
				   "%s doorbell address %p data %x\n",
				   db_exec == DB_REC_DRY_RUN ?
				   "would have rung" : "ringing",
				   db_entry->db_addr,
				   *(u32 *)db_entry->db_data);
		else
			FUNC2(p_hwfn, ECORE_MSG_SPQ,
				   "%s doorbell address %p data %llx\n",
				   db_exec == DB_REC_DRY_RUN ?
				   "would have rung" : "ringing",
				   db_entry->db_addr,
				   (unsigned long long)*(u64 *)(db_entry->db_data));
	}

	/* Sanity */
	if (!FUNC4(p_hwfn->p_dev, db_entry->db_addr,
				 db_entry->db_data))
		return;

	/* Flush the write combined buffer. Since there are multiple doorbelling
	 * entities using the same address, if we don't flush, a transaction
	 * could be lost.
	 */
	FUNC3(p_hwfn->p_dev);

	/* Ring the doorbell */
	if (db_exec == DB_REC_REAL_DEAL || db_exec == DB_REC_ONCE) {
		if (db_entry->db_width == DB_REC_WIDTH_32B)
			FUNC0(p_hwfn, db_entry->db_addr, *(u32 *)(db_entry->db_data));
		else
			FUNC1(p_hwfn, db_entry->db_addr, *(u64 *)(db_entry->db_data));
	}

	/* Flush the write combined buffer. Next doorbell may come from a
	 * different entity to the same address...
	 */
	FUNC3(p_hwfn->p_dev);
}