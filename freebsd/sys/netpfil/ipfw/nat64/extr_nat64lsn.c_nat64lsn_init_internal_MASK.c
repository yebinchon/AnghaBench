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
struct nat64lsn_states_chunk {int dummy; } ;
struct nat64lsn_pgchunk {int dummy; } ;
struct nat64lsn_pg {int dummy; } ;
struct nat64lsn_job_item {int dummy; } ;
struct nat64lsn_host {int dummy; } ;
struct nat64lsn_aliaslink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 void* nat64lsn_aliaslink_zone ; 
 void* nat64lsn_host_zone ; 
 void* nat64lsn_job_zone ; 
 void* nat64lsn_pg_zone ; 
 void* nat64lsn_pgchunk_zone ; 
 int /*<<< orphan*/ * nat64lsn_state_ctor ; 
 void* nat64lsn_state_zone ; 
 void* FUNC1 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{

	nat64lsn_host_zone = FUNC1("NAT64LSN hosts",
	    sizeof(struct nat64lsn_host), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
	nat64lsn_pgchunk_zone = FUNC1("NAT64LSN portgroup chunks",
	    sizeof(struct nat64lsn_pgchunk), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
	nat64lsn_pg_zone = FUNC1("NAT64LSN portgroups",
	    sizeof(struct nat64lsn_pg), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
	nat64lsn_aliaslink_zone = FUNC1("NAT64LSN links",
	    sizeof(struct nat64lsn_aliaslink), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
	nat64lsn_state_zone = FUNC1("NAT64LSN states",
	    sizeof(struct nat64lsn_states_chunk), nat64lsn_state_ctor,
	    NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
	nat64lsn_job_zone = FUNC1("NAT64LSN jobs",
	    sizeof(struct nat64lsn_job_item), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
	FUNC0();
}