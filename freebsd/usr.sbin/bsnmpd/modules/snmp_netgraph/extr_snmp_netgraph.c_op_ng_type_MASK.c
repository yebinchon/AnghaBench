#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_8__ {int integer; } ;
struct TYPE_9__ {int* subs; } ;
struct snmp_value {TYPE_2__ v; TYPE_3__ var; } ;
struct snmp_context {TYPE_1__* scratch; } ;
struct ngtype {int /*<<< orphan*/  index; } ;
typedef  enum snmp_op { ____Placeholder_snmp_op } snmp_op ;
typedef  int asn_subid_t ;
struct TYPE_7__ {int int1; size_t int2; int /*<<< orphan*/ * ptr2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct ngtype* FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
#define  LEAF_begemotNgTypeStatus 133 
 struct ngtype* FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 size_t NG_TYPESIZ ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_INCONS_NAME ; 
 int SNMP_ERR_NOERROR ; 
 int SNMP_ERR_NOSUCHNAME ; 
 int SNMP_ERR_NOT_WRITEABLE ; 
 int SNMP_ERR_NO_CREATION ; 
 int SNMP_ERR_UNDO_FAILED ; 
 int SNMP_ERR_WRONG_VALUE ; 
#define  SNMP_OP_COMMIT 132 
#define  SNMP_OP_GET 131 
#define  SNMP_OP_GETNEXT 130 
#define  SNMP_OP_ROLLBACK 129 
#define  SNMP_OP_SET 128 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  errno ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  ngtype_list ; 
 int FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC10 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC11(struct snmp_context *ctx, struct snmp_value *value,
    u_int sub, u_int iidx, enum snmp_op op)
{
	asn_subid_t which = value->var.subs[sub - 1];
	struct ngtype *t;
	u_char *name;
	size_t namelen;
	int status = 1;
	int ret;

	switch (op) {

	  case SNMP_OP_GETNEXT:
		if ((ret = FUNC5()) != 0)
			return (ret);
		if ((t = FUNC1(&ngtype_list, &value->var, sub)) == NULL)
			return (SNMP_ERR_NOSUCHNAME);
		FUNC7(&value->var, sub, &t->index);
		break;

	  case SNMP_OP_GET:
		if ((ret = FUNC5()) != 0)
			return (ret);
		if ((t = FUNC0(&ngtype_list, &value->var, sub)) == NULL)
			return (SNMP_ERR_NOSUCHNAME);
		break;

	  case SNMP_OP_SET:
		if (FUNC8(&value->var, sub, iidx, &name, &namelen))
			return (SNMP_ERR_NO_CREATION);
		if (namelen == 0 || namelen >= NG_TYPESIZ) {
			FUNC6(name);
			return (SNMP_ERR_NO_CREATION);
		}
		if ((ret = FUNC5()) != 0) {
			FUNC6(name);
			return (ret);
		}
		t = FUNC0(&ngtype_list, &value->var, sub);

		if (which != LEAF_begemotNgTypeStatus) {
			FUNC6(name);
			if (t != NULL)
				return (SNMP_ERR_NOT_WRITEABLE);
			return (SNMP_ERR_NO_CREATION);
		}
		if (!FUNC3(value->v.integer)) {
			FUNC6(name);
			return (SNMP_ERR_WRONG_VALUE);
		}
		ctx->scratch->int1 = FUNC2(value->v.integer);
		ctx->scratch->int1 |= (t != NULL) << 1;
		ctx->scratch->ptr2 = name;
		ctx->scratch->int2 = namelen;

		if (t == NULL) {
			/* type not loaded */
			if (ctx->scratch->int1 & 1) {
				/* request to load */
				if (FUNC9(name, namelen) == -1) {
					FUNC6(name);
					if (errno == ENOENT)
						return (SNMP_ERR_INCONS_NAME);
					else
						return (SNMP_ERR_GENERR);
				}
			}
		} else {
			/* is type loaded */
			if (!(ctx->scratch->int1 & 1)) {
				/* request to unload */
				if (FUNC10(name, namelen) == -1) {
					FUNC6(name);
					return (SNMP_ERR_GENERR);
				}
			}
		}
		return (SNMP_ERR_NOERROR);

	  case SNMP_OP_ROLLBACK:
		ret = SNMP_ERR_NOERROR;
		if (!(ctx->scratch->int1 & 2)) {
			/* did not exist */
			if (ctx->scratch->int1 & 1) {
				/* request to load - unload */
				if (FUNC10(ctx->scratch->ptr2,
				    ctx->scratch->int2) == -1)
					ret = SNMP_ERR_UNDO_FAILED;
			}
		} else {
			/* did exist */
			if (!(ctx->scratch->int1 & 1)) {
				/* request to unload - reload */
				if (FUNC9(ctx->scratch->ptr2,
				    ctx->scratch->int2) == -1)
					ret = SNMP_ERR_UNDO_FAILED;
			}
		}
		FUNC6(ctx->scratch->ptr2);
		return (ret);

	  case SNMP_OP_COMMIT:
		FUNC6(ctx->scratch->ptr2);
		return (SNMP_ERR_NOERROR);

	  default:
		FUNC4();
	}

	/*
	 * Come here for GET and COMMIT
	 */
	switch (which) {

	  case LEAF_begemotNgTypeStatus:
		value->v.integer = status;
		break;

	  default:
		FUNC4();
	}
	return (SNMP_ERR_NOERROR);
}