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

/* Variables and functions */
 char* FUNC0 (char*,char*,char const*) ; 
 scalar_t__ mimic_gnu ; 

__attribute__((used)) static void
FUNC1(char *dest, const char *src, const char *from, const char *to)
{
	const char *tmp;
	unsigned char sch, dch;
	static char frombis[257];
	static char tobis[257];
	int i;
	char seen[256];
	static unsigned char mapvec[256] = {
	    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
	    19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35,
	    36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52,
	    53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69,
	    70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
	    87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102,
	    103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115,
	    116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128,
	    129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141,
	    142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154,
	    155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167,
	    168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180,
	    181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193,
	    194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206,
	    207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219,
	    220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232,
	    233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245,
	    246, 247, 248, 249, 250, 251, 252, 253, 254, 255
	};

	if (*src) {
		if (mimic_gnu) {
			/*
			 * expand character ranges on the fly
			 */
			from = FUNC0(frombis, frombis + 256, from);
			to = FUNC0(tobis, tobis + 256, to);
		}
		tmp = from;
	/*
	 * create a mapping between "from" and
	 * "to"
	 */
		for (i = 0; i < 256; i++)
			seen[i] = 0;
		while (*from) {
			if (!seen[(unsigned char)(*from)]) {
				mapvec[(unsigned char)(*from)] = (unsigned char)(*to);
				seen[(unsigned char)(*from)] = 1;
			}
			from++;
			if (*to)
				to++;
		}

		while (*src) {
			sch = (unsigned char)(*src++);
			dch = mapvec[sch];
			if ((*dest = (char)dch))
				dest++;
		}
	/*
	 * restore all the changed characters
	 */
		while (*tmp) {
			mapvec[(unsigned char)(*tmp)] = (unsigned char)(*tmp);
			tmp++;
		}
	}
	*dest = '\0';
}