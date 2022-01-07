
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int fprintf (int ,char const*,char const*) ;
 int stderr ;

void detach_advice(const char *new_name)
{
 const char *fmt =
 _("Note: switching to '%s'.\n"
 "\n"
 "You are in 'detached HEAD' state. You can look around, make experimental\n"
 "changes and commit them, and you can discard any commits you make in this\n"
 "state without impacting any branches by switching back to a branch.\n"
 "\n"
 "If you want to create a new branch to retain commits you create, you may\n"
 "do so (now or later) by using -c with the switch command. Example:\n"
 "\n"
 "  git switch -c <new-branch-name>\n"
 "\n"
 "Or undo this operation with:\n"
 "\n"
 "  git switch -\n"
 "\n"
 "Turn off this advice by setting config variable advice.detachedHead to false\n\n");

 fprintf(stderr, fmt, new_name);
}
