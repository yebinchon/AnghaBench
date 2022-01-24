#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct mwl_hal_priv {int /*<<< orphan*/  mh_flags; int /*<<< orphan*/  mh_40M_5G; int /*<<< orphan*/  mh_20M_5G; int /*<<< orphan*/  mh_40M; int /*<<< orphan*/  mh_20M; scalar_t__ mh_cmdbuf; } ;
struct TYPE_2__ {int* calTbl; } ;
typedef  int /*<<< orphan*/  MWL_HAL_CHANNELINFO ;
typedef  TYPE_1__ HostCmd_FW_GET_CALTABLE ;

/* Variables and functions */
 int /*<<< orphan*/  MHF_CALDATA ; 
 int /*<<< orphan*/  FUNC0 (struct mwl_hal_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_hal_priv*) ; 
 int PWTAGETRATETABLE20M ; 
 int PWTAGETRATETABLE20M_5G ; 
 int PWTAGETRATETABLE40M ; 
 int PWTAGETRATETABLE40M_5G ; 
 int /*<<< orphan*/  FUNC2 (char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*,int) ; 
 scalar_t__ FUNC5 (struct mwl_hal_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct mwl_hal_priv *mh)
{
	const uint8_t *data;
	MWL_HAL_CHANNELINFO *ci;
	int len;

	FUNC0(mh);
	/* NB: we hold the lock so it's ok to use cmdbuf */
	data = ((const HostCmd_FW_GET_CALTABLE *) mh->mh_cmdbuf)->calTbl;
	if (FUNC5(mh, 33, 0) == 0) {
		len = (data[2] | (data[3] << 8)) - 12;
		if (len > PWTAGETRATETABLE20M)
			len = PWTAGETRATETABLE20M;
#ifdef DUMPCALDATA
dumpcaldata("2.4G 20M", &data[12], len);/*XXX*/
#endif
		FUNC3(&mh->mh_20M, &data[12], len);
	}
	if (FUNC5(mh, 34, 0) == 0) {
		len = (data[2] | (data[3] << 8)) - 12;
		if (len > PWTAGETRATETABLE40M)
			len = PWTAGETRATETABLE40M;
#ifdef DUMPCALDATA
dumpcaldata("2.4G 40M", &data[12], len);/*XXX*/
#endif
		ci = &mh->mh_40M;
		FUNC3(ci, &data[12], len);
	}
	if (FUNC5(mh, 35, 0) == 0) {
		len = (data[2] | (data[3] << 8)) - 20;
		if (len > PWTAGETRATETABLE20M_5G)
			len = PWTAGETRATETABLE20M_5G;
#ifdef DUMPCALDATA
dumpcaldata("5G 20M", &data[20], len);/*XXX*/
#endif
		FUNC4(&mh->mh_20M_5G, &data[20], len);
	}
	if (FUNC5(mh, 36, 0) == 0) {
		len = (data[2] | (data[3] << 8)) - 20;
		if (len > PWTAGETRATETABLE40M_5G)
			len = PWTAGETRATETABLE40M_5G;
#ifdef DUMPCALDATA
dumpcaldata("5G 40M", &data[20], len);/*XXX*/
#endif
		ci = &mh->mh_40M_5G;
		FUNC4(ci, &data[20], len);
	}
	mh->mh_flags |= MHF_CALDATA;
	FUNC1(mh);
	return 0;
}