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
struct rtwn_pci_ident {int vendor; int device; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct rtwn_pci_ident* rtwn_pci_ident_table ; 

__attribute__((used)) static const struct rtwn_pci_ident *
FUNC2(device_t dev)
{
	const struct rtwn_pci_ident *ident;
	int vendor_id, device_id;

	vendor_id = FUNC1(dev);
	device_id = FUNC0(dev);

	for (ident = rtwn_pci_ident_table; ident->name != NULL; ident++)
		if (vendor_id == ident->vendor && device_id == ident->device)
			return (ident);

	return (NULL);
}