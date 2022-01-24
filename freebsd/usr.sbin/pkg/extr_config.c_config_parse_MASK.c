#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct sbuf {int dummy; } ;
struct config_value {void* value; } ;
struct config_entry {void* value; void* list; } ;
typedef  scalar_t__ pkg_conf_file_t ;
struct TYPE_10__ {int type; int main_only; void* value; void* list; scalar_t__ envset; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 scalar_t__ CONFFILE_PKG ; 
 scalar_t__ CONFFILE_REPO ; 
 int CONFIG_SIZE ; 
#define  PKG_CONFIG_BOOL 129 
#define  PKG_CONFIG_LIST 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct config_value*,int /*<<< orphan*/ ) ; 
 scalar_t__ UCL_ARRAY ; 
 scalar_t__ UCL_BOOLEAN ; 
 scalar_t__ UCL_STRING ; 
 TYPE_8__* c ; 
 struct config_entry* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct config_entry*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*) ; 
 struct sbuf* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*,char const) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC14 (char*) ; 
 size_t FUNC15 (char const*) ; 
 TYPE_1__* FUNC16 (TYPE_1__ const*,int /*<<< orphan*/ **,int) ; 
 char* FUNC17 (TYPE_1__ const*) ; 
 scalar_t__ FUNC18 (TYPE_1__ const*) ; 
 char* FUNC19 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(const ucl_object_t *obj, pkg_conf_file_t conftype)
{
	struct sbuf *buf = FUNC10();
	const ucl_object_t *cur, *seq;
	ucl_object_iter_t it = NULL, itseq = NULL;
	struct config_entry *temp_config;
	struct config_value *cv;
	const char *key;
	int i;
	size_t j;

	/* Temporary config for configs that may be disabled. */
	temp_config = FUNC2(CONFIG_SIZE, sizeof(struct config_entry));

	while ((cur = FUNC16(obj, &it, true))) {
		key = FUNC17(cur);
		if (key == NULL)
			continue;
		FUNC5(buf);

		if (conftype == CONFFILE_PKG) {
			for (j = 0; j < FUNC15(key); ++j)
				FUNC11(buf, key[j]);
			FUNC9(buf);
		} else if (conftype == CONFFILE_REPO) {
			if (FUNC12(key, "url") == 0)
				FUNC6(buf, "PACKAGESITE");
			else if (FUNC12(key, "mirror_type") == 0)
				FUNC6(buf, "MIRROR_TYPE");
			else if (FUNC12(key, "signature_type") == 0)
				FUNC6(buf, "SIGNATURE_TYPE");
			else if (FUNC12(key, "fingerprints") == 0)
				FUNC6(buf, "FINGERPRINTS");
			else if (FUNC12(key, "pubkey") == 0)
				FUNC6(buf, "PUBKEY");
			else if (FUNC12(key, "enabled") == 0) {
				if ((cur->type != UCL_BOOLEAN) ||
				    !FUNC18(cur))
					goto cleanup;
			} else
				continue;
			FUNC9(buf);
		}

		for (i = 0; i < CONFIG_SIZE; i++) {
			if (FUNC13(FUNC7(buf), c[i].key) == 0)
				break;
		}

		/* Silently skip unknown keys to be future compatible. */
		if (i == CONFIG_SIZE)
			continue;

		/* env has priority over config file */
		if (c[i].envset)
			continue;

		/* Parse sequence value ["item1", "item2"] */
		switch (c[i].type) {
		case PKG_CONFIG_LIST:
			if (cur->type != UCL_ARRAY) {
				FUNC20("Skipping invalid array "
				    "value for %s.\n", c[i].key);
				continue;
			}
			temp_config[i].list =
			    FUNC4(sizeof(*temp_config[i].list));
			FUNC0(temp_config[i].list);

			while ((seq = FUNC16(cur, &itseq, true))) {
				if (seq->type != UCL_STRING)
					continue;
				cv = FUNC4(sizeof(struct config_value));
				cv->value =
				    FUNC14(FUNC19(seq));
				FUNC1(temp_config[i].list, cv,
				    next);
			}
			break;
		case PKG_CONFIG_BOOL:
			temp_config[i].value =
			    FUNC14(FUNC18(cur) ? "yes" : "no");
			break;
		default:
			/* Normal string value. */
			temp_config[i].value = FUNC14(FUNC19(cur));
			break;
		}
	}

	/* Repo is enabled, copy over all settings from temp_config. */
	for (i = 0; i < CONFIG_SIZE; i++) {
		if (c[i].envset)
			continue;
		/* Prevent overriding ABI, ASSUME_ALWAYS_YES, etc. */
		if (conftype != CONFFILE_PKG && c[i].main_only == true)
			continue;
		switch (c[i].type) {
		case PKG_CONFIG_LIST:
			c[i].list = temp_config[i].list;
			break;
		default:
			c[i].value = temp_config[i].value;
			break;
		}
	}

cleanup:
	FUNC3(temp_config);
	FUNC8(buf);
}