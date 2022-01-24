#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cipher; } ;
struct TYPE_3__ {int /*<<< orphan*/  prga; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPOP_REQUEST ; 
#define  FOUND_VICTIM 130 
#define  GOT_ASSOC 129 
#define  GOT_AUTH 128 
 int SENDING_ASSOC ; 
 int SENDING_AUTH ; 
 int /*<<< orphan*/  arpsend ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__ decryptstate ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  floodip ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  min_prga ; 
 int /*<<< orphan*/  myip ; 
 int /*<<< orphan*/  mymac ; 
 char* netip ; 
 int /*<<< orphan*/  netip_arg ; 
 TYPE_1__ prgainfo ; 
 unsigned char* rtrmac ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int state ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  taptx ; 
 int /*<<< orphan*/  taptx_len ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

void FUNC13(int tx) {
	static char arp_ip[16];

	switch (state) {
		case FOUND_VICTIM:
			FUNC8(tx);
			state = SENDING_AUTH;
			break;

		case GOT_AUTH:
			FUNC7(tx);
			state = SENDING_ASSOC;
			break;

		case GOT_ASSOC:
			if (prgainfo.prga && prgainfo.len < min_prga) {
				FUNC2(tx);
				break;
			}
			
			if (decryptstate.cipher) {
				FUNC1(tx);
				break;
			}
			
			if (!prgainfo.prga)
				break;

			if (taptx_len) {
				FUNC9(tx, taptx, taptx_len);
				taptx_len = 0;
				break;
			}	

			// try to find rtr mac addr
			if (netip && !rtrmac) {
				char* ptr;

				FUNC11(arp_ip, netip);
				if (!netip_arg) {
					ptr = FUNC10(arp_ip, '.');
					FUNC0(ptr);
					ptr = FUNC10(++ptr, '.');
					FUNC0(ptr);
					ptr = FUNC10(++ptr, '.');
					FUNC0(ptr);
					FUNC11(++ptr, "1");
				}

				if (FUNC5(&arpsend, NULL) == -1)
					FUNC3(1, "gettimeofday()");

				FUNC12("Sending arp request for: %s\n", arp_ip);
				FUNC6(tx, ARPOP_REQUEST, myip, mymac,
					 arp_ip, "\x00\x00\x00\x00\x00\x00");
			
				// XXX lame
				rtrmac = (unsigned char*)1;
				break;	 
			}
	
			// need to generate traffic...
			if (rtrmac > (unsigned char*)1 && netip) {
				if (floodip)
					FUNC4(tx);
				else {
					// XXX lame technique... anyway... im
					// only interested in flood_inet...

					// could ping broadcast....
					FUNC6(tx, ARPOP_REQUEST, myip, mymac,
						 arp_ip, "\x00\x00\x00\x00\x00\x00");
				}

				break;
			}

			break;	
	}
}