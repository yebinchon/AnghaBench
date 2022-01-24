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
struct amr_softc {int /*<<< orphan*/  amr_list_lock; } ;
struct amr_command {int ac_flags; int /*<<< orphan*/ * ac_complete; struct amr_softc* ac_sc; } ;

/* Variables and functions */
 int AMR_CMD_BUSY ; 
 int AMR_CMD_SLEEP ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  PRIBIO ; 
 int FUNC0 (struct amr_command*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct amr_command*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct amr_command *ac)
{
    int			error = 0;
    struct amr_softc	*sc = ac->ac_sc;

    FUNC1(1);

    ac->ac_complete = NULL;
    ac->ac_flags |= AMR_CMD_SLEEP;
    if ((error = FUNC0(ac)) != 0) {
	return(error);
    }
    
    while ((ac->ac_flags & AMR_CMD_BUSY) && (error != EWOULDBLOCK)) {
	error = FUNC2(ac,&sc->amr_list_lock, PRIBIO, "amrwcmd", 0);
    }

    return(error);
}