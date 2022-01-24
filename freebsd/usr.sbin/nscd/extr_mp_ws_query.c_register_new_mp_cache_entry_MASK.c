#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct query_state {TYPE_3__* config_entry; } ;
struct cache_entry_params {int dummy; } ;
typedef  int /*<<< orphan*/  cache_entry ;
struct TYPE_6__ {char* entry_name; } ;
struct TYPE_7__ {TYPE_1__ cep; } ;
struct TYPE_8__ {TYPE_2__ mp_cache_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CELT_MULTIPART ; 
 int /*<<< orphan*/  INVALID_CACHE_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (struct query_state*,char const*)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct query_state*,char const*)) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct cache_entry_params*) ; 
 int /*<<< orphan*/  s_cache ; 
 int /*<<< orphan*/  s_configuration ; 

cache_entry FUNC10(struct query_state *qstate,
	const char *dec_cache_entry_name)
{
	cache_entry c_entry;
	char *en_bkp;

	FUNC0(register_new_mp_cache_entry);
	c_entry = INVALID_CACHE_ENTRY;
	FUNC3(qstate->config_entry, CELT_MULTIPART);

	FUNC5(s_configuration);
	en_bkp = qstate->config_entry->mp_cache_params.cep.entry_name;
	qstate->config_entry->mp_cache_params.cep.entry_name =
		(char *)dec_cache_entry_name;
	FUNC9(s_cache, (struct cache_entry_params *)
		&qstate->config_entry->mp_cache_params);
	qstate->config_entry->mp_cache_params.cep.entry_name = en_bkp;
	FUNC6(s_configuration);

	FUNC4(s_configuration);
	c_entry = FUNC8(s_cache,
		dec_cache_entry_name);
	FUNC6(s_configuration);

	FUNC2(qstate->config_entry,
		c_entry);

	FUNC7(qstate->config_entry,
		CELT_MULTIPART);

	FUNC1(register_new_mp_cache_entry);
	return (c_entry);
}