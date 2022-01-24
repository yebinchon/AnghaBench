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
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int PCIM_HDRTYPE ; 
 int /*<<< orphan*/  PCIR_HDRTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  proto_pci_devnames ; 
 int /*<<< orphan*/  proto_pci_prefix ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*) ; 
 struct sbuf* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct sbuf *sb;

	if ((FUNC5(dev, PCIR_HDRTYPE, 1) & PCIM_HDRTYPE) != 0)
		return (ENXIO);

	sb = FUNC10();
	FUNC11(sb, "%s%d:%d:%d:%d", proto_pci_prefix, FUNC2(dev),
	    FUNC1(dev), FUNC4(dev), FUNC3(dev));
	FUNC9(sb);
	FUNC0(dev, FUNC7(sb));
	FUNC8(sb);
	return (FUNC6(dev, proto_pci_prefix, &proto_pci_devnames));
}