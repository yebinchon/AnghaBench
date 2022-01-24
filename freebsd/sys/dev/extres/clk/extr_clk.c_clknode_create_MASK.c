#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid {int dummy; } ;
struct clknode_init_def {char* name; int flags; int parent_cnt; int /*<<< orphan*/  id; int /*<<< orphan*/  parent_names; } ;
struct clknode {int flags; char* name; int parent_cnt; int /*<<< orphan*/  enable_cnt; int /*<<< orphan*/  sysctl_ctx; int /*<<< orphan*/  freq; int /*<<< orphan*/  parent_idx; int /*<<< orphan*/ * parent; struct clkdom* clkdom; int /*<<< orphan*/  id; int /*<<< orphan*/  parent_names; void* parents; void* softc; int /*<<< orphan*/  children; int /*<<< orphan*/  lock; } ;
struct clkdom {int /*<<< orphan*/  clknode_list; } ;
typedef  int /*<<< orphan*/  kobj_t ;
typedef  int /*<<< orphan*/  kobj_class_t ;
typedef  TYPE_1__* clknode_class_t ;
struct TYPE_3__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKNODE_IDX_NONE ; 
 int /*<<< orphan*/  CLKNODE_SYSCTL_CHILDREN_LIST ; 
 int /*<<< orphan*/  CLKNODE_SYSCTL_PARENT ; 
 int /*<<< orphan*/  CLKNODE_SYSCTL_PARENTS_LIST ; 
 int CLK_NODE_LINKED ; 
 int CLK_NODE_STATIC_STRINGS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  M_CLOCK ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct clknode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct clknode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _hw_clock ; 
 int /*<<< orphan*/  clkdom_link ; 
 int /*<<< orphan*/  clklist_link ; 
 struct clknode* FUNC11 (char*) ; 
 int /*<<< orphan*/  clknode_list ; 
 int /*<<< orphan*/  clknode_sysctl ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 char* FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

struct clknode *
FUNC19(struct clkdom * clkdom, clknode_class_t clknode_class,
    const struct clknode_init_def *def)
{
	struct clknode *clknode;
	struct sysctl_oid *clknode_oid;
	bool replaced;

	FUNC2(def->name != NULL, ("clock name is NULL"));
	FUNC2(def->name[0] != '\0', ("clock name is empty"));
	if (def->flags & CLK_NODE_LINKED) {
		FUNC2(def->parent_cnt == 0,
		 ("Linked clock must not have parents"));
		FUNC2(clknode_class->size== 0,
		 ("Linked clock cannot have own softc"));
	}

	/* Process duplicated clocks */
	FUNC0();
	clknode = FUNC11(def->name);
	FUNC1();
		if (clknode !=  NULL) {
		if (!(clknode->flags & CLK_NODE_LINKED) &&
		    def->flags & CLK_NODE_LINKED) {
			/*
			 * New clock is linked and real already exists.
			 * Do nothing and return real node. It is in right
			 * domain, enqueued in right lists and fully initialized.
			 */
			return (clknode);
		} else if (clknode->flags & CLK_NODE_LINKED &&
		   !(def->flags & CLK_NODE_LINKED)) {
			/*
			 * New clock is real but linked already exists.
			 * Remove old linked node from originating domain
			 * (real clock must be owned by another) and from
			 * global names link (it will be added back into it
			 * again in following clknode_register()). Then reuse
			 * original clknode structure and reinitialize it
			 * with new dat. By this, all lists containing this
			 * node remains valid, but the new node virtually
			 * replace the linked one.
			 */
			FUNC2(clkdom != clknode->clkdom,
			    ("linked clock must be from another "
			    "domain that real one"));
			FUNC10(&clkdom->clknode_list, clknode,
			    clkdom_link);
			FUNC10(&clknode_list, clknode, clklist_link);
			replaced = true;
		} else if (clknode->flags & CLK_NODE_LINKED &&
		   def->flags & CLK_NODE_LINKED) {
			/*
			 * Both clocks are linked.
			 * Return old one, so we hold only one copy od link.
			 */
			return (clknode);
		} else {
			/* Both clocks are real */
			FUNC14("Duplicated clock registration: %s\n", def->name);
		}
	} else {
		/* Create clknode object and initialize it. */
		clknode = FUNC13(sizeof(struct clknode), M_CLOCK,
		    M_WAITOK | M_ZERO);
		FUNC17(&clknode->lock, "Clocknode lock");
		FUNC9(&clknode->children);
		replaced = false;
	}

	FUNC12((kobj_t)clknode, (kobj_class_t)clknode_class);

	/* Allocate softc if required. */
	if (clknode_class->size > 0) {
		clknode->softc = FUNC13(clknode_class->size,
		    M_CLOCK, M_WAITOK | M_ZERO);
	}

	/* Prepare array for ptrs to parent clocks. */
	clknode->parents = FUNC13(sizeof(struct clknode *) * def->parent_cnt,
	    M_CLOCK, M_WAITOK | M_ZERO);

	/* Copy all strings unless they're flagged as static. */
	if (def->flags & CLK_NODE_STATIC_STRINGS) {
		clknode->name = def->name;
		clknode->parent_names = def->parent_names;
	} else {
		clknode->name = FUNC15(def->name, M_CLOCK);
		clknode->parent_names =
		    FUNC16(def->parent_names, def->parent_cnt);
	}

	/* Rest of init. */
	clknode->id = def->id;
	clknode->clkdom = clkdom;
	clknode->flags = def->flags;
	clknode->parent_cnt = def->parent_cnt;
	clknode->parent = NULL;
	clknode->parent_idx = CLKNODE_IDX_NONE;

	if (replaced)
			return (clknode);

	FUNC18(&clknode->sysctl_ctx);
	clknode_oid = FUNC4(&clknode->sysctl_ctx,
	    FUNC8(_hw_clock),
	    OID_AUTO, clknode->name,
	    CTLFLAG_RD, 0, "A clock node");

	FUNC6(&clknode->sysctl_ctx,
	    FUNC7(clknode_oid),
	    OID_AUTO, "frequency",
	    CTLFLAG_RD, &clknode->freq, 0, "The clock frequency");
	FUNC5(&clknode->sysctl_ctx,
	    FUNC7(clknode_oid),
	    OID_AUTO, "parent",
	    CTLTYPE_STRING | CTLFLAG_RD,
	    clknode, CLKNODE_SYSCTL_PARENT, clknode_sysctl,
	    "A",
	    "The clock parent");
	FUNC5(&clknode->sysctl_ctx,
	    FUNC7(clknode_oid),
	    OID_AUTO, "parents",
	    CTLTYPE_STRING | CTLFLAG_RD,
	    clknode, CLKNODE_SYSCTL_PARENTS_LIST, clknode_sysctl,
	    "A",
	    "The clock parents list");
	FUNC5(&clknode->sysctl_ctx,
	    FUNC7(clknode_oid),
	    OID_AUTO, "childrens",
	    CTLTYPE_STRING | CTLFLAG_RD,
	    clknode, CLKNODE_SYSCTL_CHILDREN_LIST, clknode_sysctl,
	    "A",
	    "The clock childrens list");
	FUNC3(&clknode->sysctl_ctx,
	    FUNC7(clknode_oid),
	    OID_AUTO, "enable_cnt",
	    CTLFLAG_RD, &clknode->enable_cnt, 0, "The clock enable counter");

	return (clknode);
}