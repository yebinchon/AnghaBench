#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct ngdevice {TYPE_1__ dev; int /*<<< orphan*/  cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogWARN ; 
 int NG_PATHSIZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 

__attribute__((used)) static int
FUNC8(struct ngdevice *dev, const char *data)
{
  char path[NG_PATHSIZ];
  char *fmt;
  size_t len;
  int pos, dpos;

  /*
   * We expect a node path, one or more spaces, a command, one or more
   * spaces and an ascii netgraph structure.
   */
  data += FUNC7(data, " \t");
  len = FUNC5(data, " \t");
  if (len >= sizeof path) {
    FUNC2(LogWARN, "%s: %.*s: Node path too long\n",
                 dev->dev.name, len, data);
    return 0;
  }
  FUNC3(path, data, len);
  path[len] = '\0';
  data += len;

  data += FUNC7(data, " \t");
  len = FUNC5(data, " \t");
  for (pos = len; pos >= 0; pos--)
    if (data[pos] == '%')
      len++;
  if ((fmt = FUNC1(len + 4)) == NULL) {
    FUNC2(LogWARN, "%s: alloca(%d) failure... %s\n",
               dev->dev.name, len + 4, FUNC6(errno));
    return 0;
  }

  /*
   * This is probably a waste of time, but we really don't want to end
   * up stuffing unexpected % escapes into the kernel....
   */
  for (pos = dpos = 0; pos < (int)len;) {
    if (data[dpos] == '%')
      fmt[pos++] = '%';
    fmt[pos++] = data[dpos++];
  }
  FUNC4(fmt + pos, " %s");
  data += dpos;

  data += FUNC7(data, " \t");
  if (FUNC0(dev->cs, path, fmt, data) < 0) {
    FUNC2(LogDEBUG, "%s: NgSendAsciiMsg (to %s): \"%s\", \"%s\": %s\n",
               dev->dev.name, path, fmt, data, FUNC6(errno));
    return 0;
  }

  return 1;
}