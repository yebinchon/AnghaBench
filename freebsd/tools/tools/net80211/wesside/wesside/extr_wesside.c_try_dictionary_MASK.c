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
typedef  unsigned long uLong ;
struct ieee80211_frame {int* i_fc; unsigned char* i_addr3; unsigned char* i_addr2; unsigned char* i_addr1; } ;
struct ether_header {int /*<<< orphan*/  ether_shost; int /*<<< orphan*/  ether_dhost; } ;
typedef  int /*<<< orphan*/  paths ;
typedef  int /*<<< orphan*/  packet ;

/* Variables and functions */
 char* DICT_PATH ; 
 int IEEE80211_FC1_DIR_FROMDS ; 
 int IEEE80211_FC1_DIR_TODS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 unsigned char* Z_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (unsigned long,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  tapfd ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 (int /*<<< orphan*/ ,unsigned char*,int) ; 

void FUNC14(struct ieee80211_frame* wh, int len) {
	unsigned char *body;
	char path[52];
	char paths[3][3];
	int i;
	int fd, rd;
	unsigned char packet[4096];
	int dlen;
	struct ether_header* eh;
	uLong crc;
	unsigned long *pcrc;
	unsigned char* dmac, *smac;

	FUNC0 (len < sizeof(packet) + sizeof(*eh));

	body = (unsigned char*) wh + sizeof(*wh);

	for (i = 0; i < 3; i++)
		FUNC10(paths[i], sizeof(paths[i]), "%.2X", body[i]);

	FUNC11(path, "%s/%s/%s/%s", DICT_PATH, paths[0], paths[1], paths[2]);

	fd = FUNC6(path, O_RDONLY);
	if (fd == -1)
		return;

	rd = FUNC9(fd, &packet[6], sizeof(packet)-6);
	if (rd == -1) {
		FUNC7("read()");
		FUNC3(1);
	}
	FUNC1(fd);


	dlen = len - sizeof(*wh) - 4;
	if (dlen > rd) {
		FUNC8("\n");
		FUNC12("Had PRGA (%s) but too little (%d/%d)\n", path, rd,
		dlen);
		return;
	}

	body += 4;
	for (i = 0; i < dlen; i++)
		packet[6+i] ^= body[i];

	dlen -= 4;
	crc = FUNC2(0L, Z_NULL, 0);
	crc = FUNC2(crc, &packet[6], dlen);
	pcrc = (unsigned long*) (&packet[6+dlen]);

	if (*pcrc != crc) {
		FUNC8("\n");
		FUNC12("HAD PRGA (%s) checksum mismatch! (%x %x)\n",
			   path, *pcrc, crc);
		return;
	}

	// fill ethernet header
	eh = (struct ether_header*) packet;
	if (wh->i_fc[1] & IEEE80211_FC1_DIR_FROMDS)
		smac = wh->i_addr3;
	else
		smac = wh->i_addr2;

	if (wh->i_fc[1] & IEEE80211_FC1_DIR_TODS)
		dmac = wh->i_addr3;
	else
		dmac = wh->i_addr1;

	FUNC5(eh->ether_dhost, dmac, 6);
	FUNC5(eh->ether_shost, smac, 6);
	// ether type should be there from llc

	dlen -= 8; // llc
	dlen += sizeof(*eh);

#if 0
	printf("\n");
	time_print("Decrypted packet [%d bytes]!!! w00t\n", dlen);
	hexdump(packet, dlen);
#endif

	rd = FUNC13(tapfd, packet, dlen);
	if (rd == -1) {
		FUNC7("write()");
		FUNC3(1);
	}
	if (rd != dlen) {
		FUNC8("Wrote %d / %d\n", rd, dlen);
		FUNC3(1);
	}
}