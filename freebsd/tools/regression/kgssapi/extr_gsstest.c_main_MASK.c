#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  token_buffer ;
struct TYPE_16__ {int intval; } ;
struct module_stat {int version; TYPE_1__ data; } ;
struct TYPE_19__ {int /*<<< orphan*/  value; int /*<<< orphan*/  length; } ;
struct gsstest_2_res {TYPE_7__ output_token; int /*<<< orphan*/  min_stat; int /*<<< orphan*/  maj_stat; } ;
struct TYPE_18__ {char* value; void* length; } ;
struct TYPE_17__ {int length; char* value; } ;
struct gsstest_2_args {int step; TYPE_3__ input_token; TYPE_2__ output_token; } ;
typedef  int /*<<< orphan*/  stat ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
typedef  TYPE_3__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  int /*<<< orphan*/  enctypes ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int ETYPE_AES128_CTS_HMAC_SHA1_96 ; 
 int ETYPE_AES256_CTS_HMAC_SHA1_96 ; 
 int ETYPE_ARCFOUR_HMAC_MD5 ; 
 int ETYPE_ARCFOUR_HMAC_MD5_56 ; 
 int ETYPE_DES3_CBC_SHA1 ; 
 int ETYPE_DES_CBC_CRC ; 
 int /*<<< orphan*/  FALSE ; 
 int GSS_C_CONF_FLAG ; 
 int /*<<< orphan*/  GSS_C_INITIATE ; 
 int GSS_C_INTEG_FLAG ; 
 int GSS_C_MUTUAL_FLAG ; 
 int /*<<< orphan*/  GSS_C_NO_BUFFER ; 
 int /*<<< orphan*/  GSS_C_NO_CHANNEL_BINDINGS ; 
 int /*<<< orphan*/  GSS_C_NO_CONTEXT ; 
 int /*<<< orphan*/  GSS_C_NO_NAME ; 
 int /*<<< orphan*/  GSS_C_NO_OID ; 
 int /*<<< orphan*/  GSS_C_NO_OID_SET ; 
 int /*<<< orphan*/  GSS_C_NT_HOSTBASED_SERVICE ; 
 int /*<<< orphan*/  GSS_C_QOP_DEFAULT ; 
 int GSS_C_REPLAY_FLAG ; 
 int GSS_C_SEQUENCE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  GSS_S_CONTINUE_NEEDED ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_7__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int,struct module_stat*) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int,int,struct gsstest_2_args*,struct gsstest_2_res*) ; 

int
FUNC24(int argc, char **argv)
{
	struct module_stat stat;
	int mod;
	int syscall_num;

	stat.version = sizeof(stat);
	mod = FUNC17("gsstest_syscall");
	if (mod < 0) {
		FUNC3(stderr, "%s: kernel support not present\n", argv[0]);
		FUNC2(1);
	}
	FUNC18(mod, &stat);
	syscall_num = stat.data.intval;

	switch (FUNC1(argv[1])) {
	case 1:
		FUNC23(syscall_num, 1, NULL, NULL);
		break;

	case 2: {
		struct gsstest_2_args args;
		struct gsstest_2_res res;
		char hostname[512];
		char token_buffer[8192];
		OM_uint32 maj_stat, min_stat;
		gss_ctx_id_t client_context = GSS_C_NO_CONTEXT;
		gss_cred_id_t client_cred;
		gss_OID mech_type = GSS_C_NO_OID;
		gss_buffer_desc name_buf, message_buf;
		gss_name_t name;
		int32_t enctypes[] = {
			ETYPE_DES_CBC_CRC,
			ETYPE_ARCFOUR_HMAC_MD5,
			ETYPE_ARCFOUR_HMAC_MD5_56,
			ETYPE_AES256_CTS_HMAC_SHA1_96,
			ETYPE_AES128_CTS_HMAC_SHA1_96,
			ETYPE_DES3_CBC_SHA1,
		};
		int num_enctypes = sizeof(enctypes) / sizeof(enctypes[0]);
		int established;
		int i;

		for (i = 0; i < num_enctypes; i++) {
			FUNC19("testing etype %d\n", enctypes[i]);
			args.output_token.length = sizeof(token_buffer);
			args.output_token.value = token_buffer;

			FUNC4(hostname, sizeof(hostname));
			FUNC21(token_buffer, sizeof(token_buffer),
			    "nfs@%s", hostname);
			name_buf.length = FUNC22(token_buffer);
			name_buf.value = token_buffer;
			maj_stat = FUNC8(&min_stat, &name_buf,
			    GSS_C_NT_HOSTBASED_SERVICE, &name);
			if (FUNC0(maj_stat)) {
				FUNC19("gss_import_name failed\n");
				FUNC20(mech_type, maj_stat, min_stat);
				goto out;
			}

			maj_stat = FUNC5(&min_stat, GSS_C_NO_NAME,
			    0, GSS_C_NO_OID_SET, GSS_C_INITIATE, &client_cred,
			    NULL, NULL);
			if (FUNC0(maj_stat)) {
				FUNC19("gss_acquire_cred (client) failed\n");
				FUNC20(mech_type, maj_stat, min_stat);
				goto out;
			}

			maj_stat = FUNC10(&min_stat,
			    client_cred, 1, &enctypes[i]);
			if (FUNC0(maj_stat)) {
				FUNC19("gss_krb5_set_allowable_enctypes failed\n");
				FUNC20(mech_type, maj_stat, min_stat);
				goto out;
			}

			res.output_token.length = 0;
			res.output_token.value = 0;
			established = 0;
			while (!established) {
				maj_stat = FUNC9(&min_stat,
				    client_cred,
				    &client_context,
				    name,
				    GSS_C_NO_OID,
				    (GSS_C_MUTUAL_FLAG
					|GSS_C_CONF_FLAG
					|GSS_C_INTEG_FLAG
					|GSS_C_SEQUENCE_FLAG
					|GSS_C_REPLAY_FLAG),
				    0,
				    GSS_C_NO_CHANNEL_BINDINGS,
				    &res.output_token,
				    &mech_type,
				    &args.input_token,
				    NULL,
				    NULL);
				if (FUNC0(maj_stat)) {
					FUNC19("gss_init_sec_context failed\n");
					FUNC20(mech_type, maj_stat, min_stat);
					goto out;
				}
				if (args.input_token.length) {
					args.step = 1;
					FUNC23(syscall_num, 2, &args, &res);
					FUNC11(&min_stat,
					    &args.input_token);
					if (res.maj_stat != GSS_S_COMPLETE
					    && res.maj_stat != GSS_S_CONTINUE_NEEDED) {
						FUNC19("gss_accept_sec_context (kernel) failed\n");
						FUNC20(mech_type, res.maj_stat,
						    res.min_stat);
						goto out;
					}
				}
				if (maj_stat == GSS_S_COMPLETE)
					established = 1;
			}

			message_buf.value = "Hello world";
			message_buf.length = FUNC22((char *) message_buf.value);

			maj_stat = FUNC7(&min_stat, client_context,
			    GSS_C_QOP_DEFAULT, &message_buf, &args.input_token);
			if (FUNC0(maj_stat)) {
				FUNC19("gss_get_mic failed\n");
				FUNC20(mech_type, maj_stat, min_stat);
				goto out;
			}
		
			args.step = 2;
			FUNC23(syscall_num, 2, &args, &res);
			FUNC11(&min_stat, &args.input_token);
			if (FUNC0(res.maj_stat)) {
				FUNC19("kernel gss_verify_mic failed\n");
				FUNC20(mech_type, res.maj_stat, res.min_stat);
				goto out;
			}

			maj_stat = FUNC15(&min_stat, client_context,
			    &message_buf, &res.output_token, NULL);
			if (FUNC0(maj_stat)) {
				FUNC19("gss_verify_mic failed\n");
				FUNC20(mech_type, maj_stat, min_stat);
				goto out;
			}

			maj_stat = FUNC16(&min_stat, client_context,
			    TRUE, GSS_C_QOP_DEFAULT, &message_buf, NULL,
			    &args.input_token);
			if (FUNC0(maj_stat)) {
				FUNC19("gss_wrap failed\n");
				FUNC20(mech_type, maj_stat, min_stat);
				goto out;
			}

			args.step = 3;
			FUNC23(syscall_num, 2, &args, &res);
			FUNC11(&min_stat, &args.input_token);
			if (FUNC0(res.maj_stat)) {
				FUNC19("kernel gss_unwrap failed\n");
				FUNC20(mech_type, res.maj_stat, res.min_stat);
				goto out;
			}

			maj_stat = FUNC14(&min_stat, client_context,
			    &res.output_token, &message_buf, NULL, NULL);
			if (FUNC0(maj_stat)) {
				FUNC19("gss_unwrap failed\n");
				FUNC20(mech_type, maj_stat, min_stat);
				goto out;
			}
			FUNC11(&min_stat, &message_buf);

			maj_stat = FUNC16(&min_stat, client_context,
			    FALSE, GSS_C_QOP_DEFAULT, &message_buf, NULL,
			    &args.input_token);
			if (FUNC0(maj_stat)) {
				FUNC19("gss_wrap failed\n");
				FUNC20(mech_type, maj_stat, min_stat);
				goto out;
			}

			args.step = 4;
			FUNC23(syscall_num, 2, &args, &res);
			FUNC11(&min_stat, &args.input_token);
			if (FUNC0(res.maj_stat)) {
				FUNC19("kernel gss_unwrap failed\n");
				FUNC20(mech_type, res.maj_stat, res.min_stat);
				goto out;
			}

			maj_stat = FUNC14(&min_stat, client_context,
			    &res.output_token, &message_buf, NULL, NULL);
			if (FUNC0(maj_stat)) {
				FUNC19("gss_unwrap failed\n");
				FUNC20(mech_type, maj_stat, min_stat);
				goto out;
			}
			FUNC11(&min_stat, &message_buf);

			args.step = 5;
			FUNC23(syscall_num, 2, &args, &res);

			FUNC13(&min_stat, &name);
			FUNC12(&min_stat, &client_cred);
			FUNC6(&min_stat, &client_context,
			    GSS_C_NO_BUFFER);
		}

		break;
	}
	case 3:
		FUNC23(syscall_num, 3, NULL, NULL);
		break;
	case 4:
		FUNC23(syscall_num, 4, NULL, NULL);
		break;
	}
	return (0);

out:
	return (1);
}