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
struct ecore_queue_sp_obj {int /*<<< orphan*/  pending; } ;
struct bxe_softc {int dummy; } ;
typedef  enum ecore_queue_cmd { ____Placeholder_ecore_queue_cmd } ecore_queue_cmd ;

/* Variables and functions */
 int FUNC0 (struct bxe_softc*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct bxe_softc *sc,
				 struct ecore_queue_sp_obj *o,
				 enum ecore_queue_cmd cmd)
{
	return FUNC0(sc, cmd, &o->pending);
}