#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ypresp_val {void* stat; } ;
typedef  struct ypresp_val ypresp_val ;
struct TYPE_5__ {int /*<<< orphan*/  keydat_len; int /*<<< orphan*/  keydat_val; } ;
struct TYPE_6__ {char* map; char* domain; TYPE_1__ key; } ;
typedef  TYPE_2__ ypreq_key ;
struct userent {char* ue_line; char* ge_line; char* ue_netid_line; void* ue_uid; void* ge_gid; } ;
struct svc_req {int dummy; } ;
struct groupent {char* ue_line; char* ge_line; char* ue_netid_line; void* ue_uid; void* ge_gid; } ;
struct TYPE_7__ {int /*<<< orphan*/  sc_user_uids; int /*<<< orphan*/ * sc_group_names; int /*<<< orphan*/  sc_group_gids; int /*<<< orphan*/ * sc_user_names; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_MAX ; 
 struct userent* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct userent*) ; 
 int /*<<< orphan*/  UID_MAX ; 
 int /*<<< orphan*/  YPMAXRECORD ; 
 void* YP_BADARGS ; 
 void* YP_NOKEY ; 
 void* YP_NOMAP ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__* env ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  group_gid_tree ; 
 int /*<<< orphan*/  group_name_tree ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char**,char*) ; 
 void* FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  user_name_tree ; 
 int /*<<< orphan*/  user_uid_tree ; 
 int /*<<< orphan*/  FUNC10 (struct ypresp_val*,char*,int) ; 
 int FUNC11 (char*,struct ypresp_val*) ; 

ypresp_val *
FUNC12(ypreq_key *arg, struct svc_req *req)
{
	struct userent		 ukey;
	struct userent		*ue;
	struct groupent		 gkey;
	struct groupent		*ge;
	static struct ypresp_val res;
	const char		*estr;
	char			*bp, *cp;
	char			 *key;

	FUNC3("matching '%.*s' in map %s", arg->key.keydat_len,
	   arg->key.keydat_val, arg->map);

	if (FUNC11(arg->domain, (struct ypresp_val *)&res) == -1)
		return (&res);

	if (env->sc_user_names == NULL) {
		/*
		 * tree not ready.
		 */
		return (NULL);
	}

	if (arg->key.keydat_len > YPMAXRECORD) {
		FUNC3("argument too long");
		return (NULL);
	}
	key = FUNC1(arg->key.keydat_len + 1, 1);
	if (key == NULL)
		return (NULL);
	(void)FUNC7(key, arg->key.keydat_val, arg->key.keydat_len);

	if (FUNC4(arg->map, "passwd.byname") == 0 ||
	    FUNC4(arg->map, "master.passwd.byname") == 0) {
		ukey.ue_line = key;
		if ((ue = FUNC0(user_name_tree, env->sc_user_names,
		    &ukey)) == NULL) {
			res.stat = YP_NOKEY;
			goto out;
		}

		FUNC10(&res, ue->ue_line, 1);
		goto out;
	} else if (FUNC4(arg->map, "passwd.byuid") == 0 ||
		   FUNC4(arg->map, "master.passwd.byuid") == 0) {
		ukey.ue_uid = FUNC9(key, 0, UID_MAX, &estr); 
		if (estr) {
			res.stat = YP_BADARGS;
			goto out;
		}

		if ((ue = FUNC0(user_uid_tree, &env->sc_user_uids,
		    &ukey)) == NULL) {
			res.stat = YP_NOKEY;
			goto out;
		}

		FUNC10(&res, ue->ue_line, 1);
		return (&res);
	} else if (FUNC4(arg->map, "group.bygid") == 0) {
		gkey.ge_gid = FUNC9(key, 0, GID_MAX, &estr); 
		if (estr) {
			res.stat = YP_BADARGS;
			goto out;
		}
		if ((ge = FUNC0(group_gid_tree, &env->sc_group_gids,
		    &gkey)) == NULL) {
			res.stat = YP_NOKEY;
			goto out;
		}

		FUNC10(&res, ge->ge_line, 1);
		return (&res);
	} else if (FUNC4(arg->map, "group.byname") == 0) {
		gkey.ge_line = key;
		if ((ge = FUNC0(group_name_tree, env->sc_group_names,
		    &gkey)) == NULL) {
			res.stat = YP_NOKEY;
			goto out;
		}

		FUNC10(&res, ge->ge_line, 1);
		return (&res);
	} else if (FUNC4(arg->map, "netid.byname") == 0) {
		bp = cp = key;

		if (FUNC6(bp, "unix.", FUNC5("unix.")) != 0) {
			res.stat = YP_BADARGS;
			goto out;
		}

		bp += FUNC5("unix.");

		if (*bp == '\0') {
			res.stat = YP_BADARGS;
			goto out;
		}

		if (!(cp = FUNC8(&bp, "@"))) {
			res.stat = YP_BADARGS;
			goto out;
		}

		if (FUNC4(bp, arg->domain) != 0) {
			res.stat = YP_BADARGS;
			goto out;
		}

		ukey.ue_uid = FUNC9(cp, 0, UID_MAX, &estr); 
		if (estr) {
			res.stat = YP_BADARGS;
			goto out;
		}

		if ((ue = FUNC0(user_uid_tree, &env->sc_user_uids,
		    &ukey)) == NULL) {
			res.stat = YP_NOKEY;
			goto out;
		}

		FUNC10(&res, ue->ue_netid_line, 0);
		goto out;
	
	} else {
		FUNC3("unknown map %s", arg->map);
		res.stat = YP_NOMAP;
		goto out;
	}
out:
	FUNC2(key);
	return (&res);
}