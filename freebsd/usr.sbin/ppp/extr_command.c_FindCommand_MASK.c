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
struct cmdtab {char* name; char* alias; scalar_t__ func; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static struct cmdtab const *
FUNC2(struct cmdtab const *cmds, const char *str, int *pmatch)
{
  int nmatch;
  int len;
  struct cmdtab const *found;

  found = NULL;
  len = FUNC0(str);
  nmatch = 0;
  while (cmds->func) {
    if (cmds->name && FUNC1(str, cmds->name, len) == 0) {
      if (cmds->name[len] == '\0') {
	*pmatch = 1;
	return cmds;
      }
      nmatch++;
      found = cmds;
    } else if (cmds->alias && FUNC1(str, cmds->alias, len) == 0) {
      if (cmds->alias[len] == '\0') {
	*pmatch = 1;
	return cmds;
      }
      nmatch++;
      found = cmds;
    }
    cmds++;
  }
  *pmatch = nmatch;
  return found;
}