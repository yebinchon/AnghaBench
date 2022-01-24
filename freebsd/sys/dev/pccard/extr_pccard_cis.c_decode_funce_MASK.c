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
struct pccard_tuple {int length; } ;
struct pccard_function {int function; int pf_funce_lan_nidlen; void** pf_funce_lan_nid; void* pf_funce_disk_power; void* pf_funce_disk_interface; } ;

/* Variables and functions */
#define  PCCARD_FUNCTION_DISK 129 
#define  PCCARD_FUNCTION_NETWORK 128 
 int PCCARD_TPLFE_TYPE_DISK_DEVICE_INTERFACE ; 
 int PCCARD_TPLFE_TYPE_LAN_NID ; 
 void* FUNC0 (struct pccard_tuple const*,int) ; 

__attribute__((used)) static int
FUNC1(const struct pccard_tuple *tuple, struct pccard_function *pf)
{
	int i;
	int len;
	int type = FUNC0(tuple, 0);

	switch (pf->function) {
	case PCCARD_FUNCTION_DISK:
		if (type == PCCARD_TPLFE_TYPE_DISK_DEVICE_INTERFACE) {
			pf->pf_funce_disk_interface
				= FUNC0(tuple, 1);
			pf->pf_funce_disk_power
				= FUNC0(tuple, 2);
		}
		break;
	case PCCARD_FUNCTION_NETWORK:
		if (type == PCCARD_TPLFE_TYPE_LAN_NID) {
			len = FUNC0(tuple, 1);
			if (tuple->length < 2 + len || len > 8) {
				/* tuple length not enough or nid too long */
				break;
                        }
			for (i = 0; i < len; i++) {
				pf->pf_funce_lan_nid[i]
					= FUNC0(tuple, i + 2);
			}
			pf->pf_funce_lan_nidlen = len;
		}
		break;
	default:
		break;
	}
	return 0;
}