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
struct mppe_state {int /*<<< orphan*/  sesskey; int /*<<< orphan*/  keylen; int /*<<< orphan*/  mastkey; } ;
typedef  int /*<<< orphan*/  RC4_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mppe_state*) ; 
 int MPPE_KEY_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct mppe_state *mp)
{
  char InterimKey[MPPE_KEY_LEN];
  RC4_KEY RC4Key;

  FUNC0(mp->mastkey, mp->sesskey, mp->keylen, InterimKey);
  FUNC3(&RC4Key, mp->keylen, InterimKey);
  FUNC2(&RC4Key, mp->keylen, InterimKey, mp->sesskey);

  FUNC1(mp);
}