#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tws_request {TYPE_2__* cmd_pkt; int /*<<< orphan*/  error_code; int /*<<< orphan*/  request_id; int /*<<< orphan*/  sc; } ;
struct TYPE_3__ {int /*<<< orphan*/  error; } ;
struct tws_command_header {TYPE_1__ status_block; } ;
struct TYPE_4__ {int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct tws_command_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tws_command_header*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tws_request*) ; 

__attribute__((used)) static void
FUNC3(struct tws_request *req, 
                                          struct tws_command_header *hdr)
{ 
    FUNC0(req->sc, "entry", hdr, req->request_id);
    req->error_code = hdr->status_block.error;
    FUNC1(&(req->cmd_pkt->hdr), hdr, sizeof(struct tws_command_header));
    FUNC2(req);
}