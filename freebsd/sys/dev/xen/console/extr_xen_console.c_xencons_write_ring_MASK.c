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
struct xencons_priv {struct xencons_interface* intf; } ;
struct xencons_interface {int out_cons; int out_prod; char* out; } ;
typedef  int XENCONS_RING_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct xencons_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct xencons_priv*) ; 

__attribute__((used)) static int
FUNC6(struct xencons_priv *cons, const char *buffer,
    unsigned int size)
{
	struct xencons_interface *intf;
	XENCONS_RING_IDX wcons, wprod;
	int sent;

	intf = cons->intf;

	FUNC4(cons);

	wcons = intf->out_cons;
	wprod = intf->out_prod;

	FUNC2();
	FUNC0((wprod - wcons) <= sizeof(intf->out),
		("console send ring inconsistent"));

	for (sent = 0; sent < size; sent++, wprod++) {
		if ((wprod - wcons) >= sizeof(intf->out))
			break;
		intf->out[FUNC1(wprod, intf->out)] = buffer[sent];
	}

	FUNC3();
	intf->out_prod = wprod;

	FUNC5(cons);

	return (sent);
}