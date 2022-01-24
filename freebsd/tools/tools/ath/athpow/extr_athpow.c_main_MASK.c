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
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int u_int ;
struct ath_diag {char* ad_name; int ad_out_size; void* ad_out_data; int /*<<< orphan*/  ad_id; } ;
typedef  int /*<<< orphan*/  revs ;
typedef  int /*<<< orphan*/  ratesArray ;
typedef  int /*<<< orphan*/  pcdacTable ;
typedef  void* caddr_t ;
typedef  int /*<<< orphan*/  HAL_REVS ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 char* ATH_DEFAULT ; 
 int /*<<< orphan*/  HAL_DIAG_PCDAC ; 
 int /*<<< orphan*/  HAL_DIAG_REVS ; 
 int /*<<< orphan*/  HAL_DIAG_TXRATES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int) ; 
 int PWR_TABLE_SIZE ; 
 int PWR_TABLE_SIZE_2413 ; 
 int /*<<< orphan*/  SIOCGATHDIAG ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (int,char**,char*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,struct ath_diag*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int
FUNC14(int argc, char *argv[])
{
	int s, i, verbose = 0, c;
	struct ath_diag atd;
	const char *ifname;
	HAL_REVS revs;
	u_int16_t pcdacTable[FUNC2(PWR_TABLE_SIZE,PWR_TABLE_SIZE_2413)];
	u_int16_t ratesArray[37];
	u_int nrates, npcdac;

	s = FUNC11(AF_INET, SOCK_DGRAM, 0);
	if (s < 0)
		FUNC3(1, "socket");
	ifname = FUNC4("ATH");
	if (!ifname)
		ifname = ATH_DEFAULT;
	while ((c = FUNC5(argc, argv, "i:v")) != -1)
		switch (c) {
		case 'i':
			ifname = optarg;
			break;
		case 'v':
			verbose++;
			break;
		default:
			FUNC13(argv[0]);
		}
	FUNC12(atd.ad_name, ifname, sizeof (atd.ad_name));

	atd.ad_id = HAL_DIAG_REVS;
	atd.ad_out_data = (caddr_t) &revs;
	atd.ad_out_size = sizeof(revs);
	if (FUNC6(s, SIOCGATHDIAG, &atd) < 0)
		FUNC3(1, atd.ad_name);

	if (verbose)
		FUNC9(stdout, &revs);

	atd.ad_id = HAL_DIAG_TXRATES;
	atd.ad_out_data = (caddr_t) ratesArray;
	atd.ad_out_size = sizeof(ratesArray);
	if (FUNC6(s, SIOCGATHDIAG, &atd) < 0)
		FUNC3(1, atd.ad_name);
	nrates = sizeof(ratesArray) / sizeof(u_int16_t);

	atd.ad_id = HAL_DIAG_PCDAC;
	atd.ad_out_data = (caddr_t) pcdacTable;
	atd.ad_out_size = sizeof(pcdacTable);
	if (FUNC6(s, SIOCGATHDIAG, &atd) < 0)
		FUNC3(1, atd.ad_name);
	if (FUNC0(&revs) || FUNC1(&revs))
		npcdac = PWR_TABLE_SIZE_2413;
	else
		npcdac = PWR_TABLE_SIZE;

	FUNC10("PCDAC table:\n");
	FUNC7(stdout, pcdacTable, npcdac);

	FUNC10("Power per rate table:\n");
	FUNC8(stdout, ratesArray, nrates);

	return 0;
}