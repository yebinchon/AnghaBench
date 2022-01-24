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
struct hashmap {int /*<<< orphan*/  cmpfn; } ;
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;
struct anonymized_entry {size_t orig_len; void const* anon; size_t anon_len; TYPE_1__ hash; void const* orig; } ;

/* Variables and functions */
 int /*<<< orphan*/  anonymized_entry_cmp ; 
 int /*<<< orphan*/  hash ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct anonymized_entry* FUNC1 (struct hashmap*,struct anonymized_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hashmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hashmap*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (void const*,size_t) ; 
 struct anonymized_entry* FUNC5 (int) ; 
 void const* FUNC6 (void const*) ; 

__attribute__((used)) static const void *FUNC7(struct hashmap *map,
				 void *(*generate)(const void *, size_t *),
				 const void *orig, size_t *len)
{
	struct anonymized_entry key, *ret;

	if (!map->cmpfn)
		FUNC2(map, anonymized_entry_cmp, NULL, 0);

	FUNC0(&key.hash, FUNC4(orig, *len));
	key.orig = orig;
	key.orig_len = *len;
	ret = FUNC1(map, &key, hash, NULL);

	if (!ret) {
		ret = FUNC5(sizeof(*ret));
		FUNC0(&ret->hash, key.hash.hash);
		ret->orig = FUNC6(orig);
		ret->orig_len = *len;
		ret->anon = generate(orig, len);
		ret->anon_len = *len;
		FUNC3(map, &ret->hash);
	}

	*len = ret->anon_len;
	return ret->anon;
}