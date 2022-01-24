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
typedef  int u_long ;
struct pci_match_conf_old32 {int dummy; } ;
struct pci_match_conf_old {int dummy; } ;
struct pci_match_conf32 {int dummy; } ;
struct pci_match_conf {int dummy; } ;
struct pci_conf {int dummy; } ;

/* Variables and functions */
#define  PCIOCGETCONF 131 
#define  PCIOCGETCONF32 130 
#define  PCIOCGETCONF_OLD 129 
#define  PCIOCGETCONF_OLD32 128 
 int FUNC0 (struct pci_match_conf32*,int,struct pci_conf*) ; 
 int FUNC1 (struct pci_match_conf*,int,struct pci_conf*) ; 
 int FUNC2 (struct pci_match_conf_old*,int,struct pci_conf*) ; 
 int FUNC3 (struct pci_match_conf_old32*,int,struct pci_conf*) ; 

__attribute__((used)) static int
FUNC4(u_long cmd, struct pci_match_conf *matches, int num_matches,
    struct pci_conf *match_buf)
{

	switch (cmd) {
	case PCIOCGETCONF:
		return (FUNC1(
		    (struct pci_match_conf *)matches, num_matches, match_buf));
#ifdef COMPAT_FREEBSD32
	case PCIOCGETCONF32:
		return (pci_conf_match32((struct pci_match_conf32 *)matches,
		    num_matches, match_buf));
#endif
#ifdef PRE7_COMPAT
	case PCIOCGETCONF_OLD:
		return (pci_conf_match_old(
		    (struct pci_match_conf_old *)matches, num_matches,
		    match_buf));
#ifdef COMPAT_FREEBSD32
	case PCIOCGETCONF_OLD32:
		return (pci_conf_match_old32(
		    (struct pci_match_conf_old32 *)matches, num_matches,
		    match_buf));
#endif
#endif
	default:
		/* programmer error */
		return (0);
	}
}