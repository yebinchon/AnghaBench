#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct twe_softc {int dummy; } ;
struct twe_request {scalar_t__ tr_status; struct bio* tr_private; struct twe_softc* tr_sc; } ;
struct bio {int /*<<< orphan*/  bio_flags; int /*<<< orphan*/  bio_error; } ;
struct TYPE_4__ {scalar_t__ status; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef  TYPE_2__ TWE_Command ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ TWE_CMD_COMPLETE ; 
 TYPE_2__* FUNC0 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_request*) ; 
 scalar_t__ FUNC4 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 

__attribute__((used)) static void
FUNC6(struct twe_request *tr)
{
    TWE_Command		*cmd = FUNC0(tr);
    struct twe_softc	*sc = tr->tr_sc;
    struct bio		*bp = tr->tr_private;

    FUNC1(4);

    if (tr->tr_status == TWE_CMD_COMPLETE) {

	if (cmd->generic.status)
	    if (FUNC4(tr)) {
		bp->bio_error = EIO;
		bp->bio_flags |= BIO_ERROR;
	    }

    } else {
	FUNC2(sc, "twe_completeio on incomplete command");
    }
    tr->tr_private = NULL;
    FUNC5(bp);
    FUNC3(tr);
}