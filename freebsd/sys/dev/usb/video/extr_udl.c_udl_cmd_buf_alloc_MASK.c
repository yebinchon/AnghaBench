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
struct udl_softc {int dummy; } ;
struct udl_cmd_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct udl_softc*) ; 
 struct udl_cmd_buf* FUNC2 (struct udl_softc*,int) ; 

__attribute__((used)) static struct udl_cmd_buf *
FUNC3(struct udl_softc *sc, int flags)
{
	struct udl_cmd_buf *cb;

	FUNC0(sc);
	cb = FUNC2(sc, flags);
	FUNC1(sc);
	return (cb);
}