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
typedef  scalar_t__ u_int ;
struct mbuf {int dummy; } ;
typedef  scalar_t__ rpc_gss_service_t ;
typedef  int /*<<< orphan*/  gss_qop_t ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,struct mbuf**) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf**,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 scalar_t__ FUNC6 (struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ rpc_gss_svc_integrity ; 
 scalar_t__ rpc_gss_svc_privacy ; 

bool_t
FUNC10(struct mbuf **argsp,
		      gss_ctx_id_t ctx, gss_qop_t qop,
		      rpc_gss_service_t svc, u_int seq)
{
	struct mbuf	*args, *mic;
	OM_uint32	maj_stat, min_stat;
	int		conf_state;
	u_int		len;
	static char	zpad[4];

	args = *argsp;

	/*
	 * Prepend the sequence number before calling gss_get_mic or gss_wrap.
	 */
	FUNC7(&args, seq);
	len = FUNC6(args, NULL);

	if (svc == rpc_gss_svc_integrity) {
		/* Checksum rpc_gss_data_t. */
		maj_stat = FUNC1(&min_stat, ctx, qop, args, &mic);
		if (maj_stat != GSS_S_COMPLETE) {
			FUNC8("gss_get_mic failed");
			FUNC5(args);
			return (FALSE);
		}

		/*
		 * Marshal databody_integ. Note that since args is
		 * already RPC encoded, there will be no padding.
		 */
		FUNC7(&args, len);

		/*
		 * Marshal checksum. This is likely to need padding.
		 */
		len = FUNC6(mic, NULL);
		FUNC7(&mic, len);
		if (len != FUNC0(len)) {
			FUNC3(mic, FUNC0(len) - len, zpad);
		}

		/*
		 * Concatenate databody_integ with checksum.
		 */
		FUNC4(args, mic);
	} else if (svc == rpc_gss_svc_privacy) {
		/* Encrypt rpc_gss_data_t. */
		maj_stat = FUNC2(&min_stat, ctx, TRUE, qop,
		    &args, &conf_state);
		if (maj_stat != GSS_S_COMPLETE) {
			FUNC9("gss_wrap", NULL,
			    maj_stat, min_stat);
			return (FALSE);
		}

		/*
		 *  Marshal databody_priv and deal with RPC padding.
		 */
		len = FUNC6(args, NULL);
		FUNC7(&args, len);
		if (len != FUNC0(len)) {
			FUNC3(args, FUNC0(len) - len, zpad);
		}
	}
	*argsp = args;
	return (TRUE);
}