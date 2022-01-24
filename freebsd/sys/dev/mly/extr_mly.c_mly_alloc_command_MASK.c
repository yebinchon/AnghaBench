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
struct mly_softc {int dummy; } ;
struct mly_command {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mly_command* FUNC1 (struct mly_softc*) ; 

__attribute__((used)) static int
FUNC2(struct mly_softc *sc, struct mly_command **mcp)
{
    struct mly_command	*mc;

    FUNC0(3);

    if ((mc = FUNC1(sc)) == NULL)
	return(ENOMEM);

    *mcp = mc;
    return(0);
}