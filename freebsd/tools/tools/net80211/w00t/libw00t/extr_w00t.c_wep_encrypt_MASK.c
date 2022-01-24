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
typedef  long uLong ;
struct ieee80211_frame {int dummy; } ;
typedef  int /*<<< orphan*/  seed ;
typedef  int /*<<< orphan*/  RC4_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 char* Z_NULL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 long FUNC3 (long,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

void FUNC5(struct ieee80211_frame *wh, int len, char *key, int klen)
{
	RC4_KEY k;
	char seed[64];
	char *p = (char*) (wh+1);
	uLong crc = FUNC3(0L, Z_NULL, 0);
	uLong *pcrc;

	FUNC2(sizeof(seed) >= klen + 3);
	FUNC4(seed, p, 3);
	FUNC4(&seed[3], key, klen);

	FUNC1(&k, klen+3, seed);
	
	len -= sizeof(*wh);
	p += 4;
	crc = FUNC3(crc, p, len - 4);
	pcrc = (uLong*) (p+len-4);
	*pcrc = crc;

	FUNC0(&k, len, p, p);
}