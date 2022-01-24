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
struct sioc_sg_req {int pktcnt; int bytecnt; int wrong_if; int /*<<< orphan*/  grp; int /*<<< orphan*/  src; } ;
struct mfc {int mfc_pkt_cnt; int mfc_byte_cnt; int mfc_wrong_if; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mfc* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct sioc_sg_req *req)
{
    struct mfc *rt;

    FUNC0();
    rt = FUNC2(&req->src, &req->grp);
    if (rt == NULL) {
	FUNC1();
	req->pktcnt = req->bytecnt = req->wrong_if = 0xffffffff;
	return EADDRNOTAVAIL;
    }
    req->pktcnt = rt->mfc_pkt_cnt;
    req->bytecnt = rt->mfc_byte_cnt;
    req->wrong_if = rt->mfc_wrong_if;
    FUNC1();
    return 0;
}