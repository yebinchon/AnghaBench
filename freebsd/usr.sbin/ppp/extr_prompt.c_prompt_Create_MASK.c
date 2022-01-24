#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* passwd; } ;
struct server {TYPE_2__ cfg; } ;
struct TYPE_6__ {char* type; char* from; } ;
struct TYPE_4__ {int /*<<< orphan*/  Write; int /*<<< orphan*/  Read; int /*<<< orphan*/  IsSet; int /*<<< orphan*/  UpdateSet; int /*<<< orphan*/  type; } ;
struct prompt {int fd_in; int fd_out; int nonewline; int needprompt; struct bundle* bundle; scalar_t__ readtilde; int /*<<< orphan*/ * TermMode; TYPE_3__ src; void* auth; struct server* owner; int /*<<< orphan*/  Term; int /*<<< orphan*/  oldtio; TYPE_1__ desc; } ;
struct bundle {int dummy; } ;

/* Variables and functions */
 void* LOCAL_AUTH ; 
 void* LOCAL_NO_AUTH ; 
 int /*<<< orphan*/  PROMPT_DESCRIPTOR ; 
 int PROMPT_STD ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct prompt*) ; 
 int /*<<< orphan*/  FUNC2 (struct prompt*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  prompt_IsSet ; 
 int /*<<< orphan*/  prompt_Read ; 
 int /*<<< orphan*/  prompt_UpdateSet ; 
 int /*<<< orphan*/  prompt_Write ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int) ; 

struct prompt *
FUNC7(struct server *s, struct bundle *bundle, int fd)
{
  struct prompt *p = (struct prompt *)FUNC3(sizeof(struct prompt));

  if (p != NULL) {
    p->desc.type = PROMPT_DESCRIPTOR;
    p->desc.UpdateSet = prompt_UpdateSet;
    p->desc.IsSet = prompt_IsSet;
    p->desc.Read = prompt_Read;
    p->desc.Write = prompt_Write;

    if (fd == PROMPT_STD) {
      char *tty = FUNC6(STDIN_FILENO);

      if (!tty) {
        FUNC1(p);
        return NULL;
      }
      p->fd_in = STDIN_FILENO;
      p->fd_out = STDOUT_FILENO;
      p->Term = stdout;
      p->owner = NULL;
      p->auth = LOCAL_AUTH;
      p->src.type = "Controller";
      FUNC4(p->src.from, tty, sizeof p->src.from - 1);
      p->src.from[sizeof p->src.from - 1] = '\0';
      FUNC5(p->fd_in, &p->oldtio);	/* Save original tty mode */
    } else {
      p->fd_in = p->fd_out = fd;
      p->Term = FUNC0(fd, "a+");
      p->owner = s;
      p->auth = *s->cfg.passwd ? LOCAL_NO_AUTH : LOCAL_AUTH;
      p->src.type = "unknown";
      *p->src.from = '\0';
    }
    p->TermMode = NULL;
    p->nonewline = 1;
    p->needprompt = 1;
    p->readtilde = 0;
    p->bundle = bundle;
    FUNC2(p);
  }

  return p;
}