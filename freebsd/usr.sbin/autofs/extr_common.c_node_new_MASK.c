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
struct node {char* n_key; char* n_options; char* n_location; char const* n_config_file; int n_config_line; int /*<<< orphan*/  n_children; struct node* n_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct node* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  n_next ; 
 char* FUNC5 (char*) ; 

struct node *
FUNC6(struct node *parent, char *key, char *options, char *location,
    const char *config_file, int config_line)
{
	struct node *n;

	n = FUNC3(1, sizeof(*n));
	if (n == NULL)
		FUNC4(1, "calloc");

	FUNC0(&n->n_children);
	FUNC2(key != NULL);
	FUNC2(key[0] != '\0');
	n->n_key = key;
	if (options != NULL)
		n->n_options = options;
	else
		n->n_options = FUNC5("");
	n->n_location = location;
	FUNC2(config_file != NULL);
	n->n_config_file = config_file;
	FUNC2(config_line >= 0);
	n->n_config_line = config_line;

	FUNC2(parent != NULL);
	n->n_parent = parent;
	FUNC1(&parent->n_children, n, n_next);

	return (n);
}