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
struct string_list_item {struct key_value_info* util; } ;
struct key_value_info {int linenr; int /*<<< orphan*/  scope; int /*<<< orphan*/  origin_type; int /*<<< orphan*/ * filename; } ;
struct configset_list_item {scalar_t__ value_index; struct config_set_element* e; } ;
struct TYPE_6__ {scalar_t__ nr; } ;
struct config_set_element {TYPE_2__ value_list; int /*<<< orphan*/  ent; int /*<<< orphan*/  key; } ;
struct TYPE_5__ {scalar_t__ nr; struct configset_list_item* items; int /*<<< orphan*/  alloc; } ;
struct config_set {TYPE_1__ list; int /*<<< orphan*/  config_hash; } ;
struct TYPE_7__ {int linenr; int /*<<< orphan*/  origin_type; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct configset_list_item*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  CONFIG_ORIGIN_CMDLINE ; 
 TYPE_4__* cf ; 
 struct config_set_element* FUNC2 (struct config_set*,char const*) ; 
 int /*<<< orphan*/  current_parsing_scope ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 struct string_list_item* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12(struct config_set *cs, const char *key, const char *value)
{
	struct config_set_element *e;
	struct string_list_item *si;
	struct configset_list_item *l_item;
	struct key_value_info *kv_info = FUNC9(sizeof(*kv_info));

	e = FUNC2(cs, key);
	/*
	 * Since the keys are being fed by git_config*() callback mechanism, they
	 * are already normalized. So simply add them without any further munging.
	 */
	if (!e) {
		e = FUNC9(sizeof(*e));
		FUNC4(&e->ent, FUNC5(key));
		e->key = FUNC10(key);
		FUNC7(&e->value_list, 1);
		FUNC3(&cs->config_hash, &e->ent);
	}
	si = FUNC6(&e->value_list, FUNC11(value));

	FUNC0(cs->list.items, cs->list.nr + 1, cs->list.alloc);
	l_item = &cs->list.items[cs->list.nr++];
	l_item->e = e;
	l_item->value_index = e->value_list.nr - 1;

	if (!cf)
		FUNC1("configset_add_value has no source");
	if (cf->name) {
		kv_info->filename = FUNC8(cf->name);
		kv_info->linenr = cf->linenr;
		kv_info->origin_type = cf->origin_type;
	} else {
		/* for values read from `git_config_from_parameters()` */
		kv_info->filename = NULL;
		kv_info->linenr = -1;
		kv_info->origin_type = CONFIG_ORIGIN_CMDLINE;
	}
	kv_info->scope = current_parsing_scope;
	si->util = kv_info;

	return 0;
}