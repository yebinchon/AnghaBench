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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_int ;
struct mbuf {scalar_t__ m_len; } ;
typedef  scalar_t__ rpc_gss_service_t ;
typedef  scalar_t__ gss_qop_t ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
typedef  scalar_t__ bool_t ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ MHLEN ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC2 (struct mbuf**) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,struct mbuf**,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__*,int /*<<< orphan*/ ,struct mbuf*,struct mbuf*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 struct mbuf* FUNC6 (struct mbuf*,scalar_t__) ; 
 struct mbuf* FUNC7 (struct mbuf*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ rpc_gss_svc_integrity ; 
 scalar_t__ rpc_gss_svc_privacy ; 

bool_t
FUNC11(struct mbuf **resultsp,
			gss_ctx_id_t ctx, gss_qop_t qop,
			rpc_gss_service_t svc, u_int seq)
{
	struct mbuf	*results, *message, *mic;
	uint32_t	len, cklen;
	OM_uint32	maj_stat, min_stat;
	u_int		seq_num, conf_state, qop_state;

	results = *resultsp;
	*resultsp = NULL;
	
	message = NULL;
	if (svc == rpc_gss_svc_integrity) {
		/*
		 * Extract the seq+message part. Remember that there
		 * may be extra RPC padding in the checksum. The
		 * message part is RPC encoded already so no
		 * padding.
		 */
		len = FUNC2(&results);
		message = results;
		results = FUNC7(results, len, M_WAITOK);
		if (!results) {
			FUNC5(message);
			return (FALSE);
		}

		/*
		 * Extract the MIC and make it contiguous.
		 */
		cklen = FUNC2(&results);
		if (!results) {
			FUNC5(message);
			return (FALSE);
		}
		FUNC0(cklen <= MHLEN, ("unexpected large GSS-API checksum"));
		mic = results;
		if (cklen > mic->m_len) {
			mic = FUNC6(mic, cklen);
			if (!mic) {
				FUNC5(message);
				return (FALSE);
			}
		}
		if (cklen != FUNC1(cklen))
			FUNC8(mic, cklen);

		/* Verify checksum and QOP. */
		maj_stat = FUNC4(&min_stat, ctx,
		    message, mic, &qop_state);
		FUNC5(mic);
		
		if (maj_stat != GSS_S_COMPLETE || qop_state != qop) {
			FUNC5(message);
			FUNC10("gss_verify_mic", NULL,
			    maj_stat, min_stat);
			return (FALSE);
		}
	} else if (svc == rpc_gss_svc_privacy) {
		/* Decode databody_priv. */
		len = FUNC2(&results);
		if (!results)
			return (FALSE);

		/* Decrypt databody. */
		message = results;
		if (len != FUNC1(len))
			FUNC8(message, len);
		maj_stat = FUNC3(&min_stat, ctx, &message,
		    &conf_state, &qop_state);
		
		/* Verify encryption and QOP. */
		if (maj_stat != GSS_S_COMPLETE) {
			FUNC10("gss_unwrap", NULL,
			    maj_stat, min_stat);
			return (FALSE);
		}
		if (qop_state != qop || conf_state != TRUE) {
			FUNC5(results);
			return (FALSE);
		}
	}

	/* Decode rpc_gss_data_t (sequence number + arguments). */
	seq_num = FUNC2(&message);
	if (!message)
		return (FALSE);
	
	/* Verify sequence number. */
	if (seq_num != seq) {
		FUNC9("wrong sequence number in databody");
		FUNC5(message);
		return (FALSE);
	}

	*resultsp = message;
	return (TRUE);
}