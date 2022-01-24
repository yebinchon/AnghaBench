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
struct intr_vector {struct fire_msiqarg* iv_icarg; } ;
struct fire_msiqarg {int /*<<< orphan*/  fmqa_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intr_vector*,struct fire_msiqarg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *cookie)
{
	struct intr_vector *iv;
	struct fire_msiqarg *fmqa;

	iv = cookie;
	fmqa = iv->iv_icarg;
	/*
	 * Note that since fire_intr_clear() will clear the event queue
	 * interrupt after the handler associated with the MSI [sic] has
	 * been executed we have to protect the access to the event queue as
	 * otherwise nested event queue interrupts cause corruption of the
	 * event queue on MP machines.  Obviously especially when abandoning
	 * the 1:1 mapping it would be better to not clear the event queue
	 * interrupt after each handler invocation but only once when the
	 * outstanding MSIs have been processed but unfortunately that
	 * doesn't work well and leads to interrupt storms with controllers/
	 * drivers which don't mask interrupts while the handler is executed.
	 * Maybe delaying clearing the MSI until after the handler has been
	 * executed could be used to work around this but that's not the
	 * intended usage and might in turn cause lost MSIs.
	 */
	FUNC1(&fmqa->fmqa_mtx);
	FUNC0(iv, fmqa);
	FUNC2(&fmqa->fmqa_mtx);
}