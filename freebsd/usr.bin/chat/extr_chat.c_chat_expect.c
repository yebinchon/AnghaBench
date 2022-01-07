
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort_next ;
 int chat_logf (char*,...) ;
 int chat_send (char*) ;
 int clear_abort_next ;
 int clear_report_next ;
 int echo_next ;
 int exit_code ;
 char* expect_strtok (char*,char*) ;
 scalar_t__ fail_reason ;
 scalar_t__ get_string (char*) ;
 int hup_next ;
 int report_next ;
 int say_next ;
 scalar_t__ strcmp (char*,char*) ;
 int terminate (int) ;
 int timeout_next ;

void
chat_expect(char *s)
{
    char *expect;
    char *reply;

    if (strcmp(s, "HANGUP") == 0) {
 ++hup_next;
        return;
    }

    if (strcmp(s, "ABORT") == 0) {
 ++abort_next;
 return;
    }

    if (strcmp(s, "CLR_ABORT") == 0) {
 ++clear_abort_next;
 return;
    }

    if (strcmp(s, "REPORT") == 0) {
 ++report_next;
 return;
    }

    if (strcmp(s, "CLR_REPORT") == 0) {
 ++clear_report_next;
 return;
    }

    if (strcmp(s, "TIMEOUT") == 0) {
 ++timeout_next;
 return;
    }

    if (strcmp(s, "ECHO") == 0) {
 ++echo_next;
 return;
    }

    if (strcmp(s, "SAY") == 0) {
 ++say_next;
 return;
    }




    for (;;) {
 expect = expect_strtok (s, "-");
 s = (char *) 0;

 if (expect == (char *) 0)
     return;

 reply = expect_strtok (s, "-");




 if (get_string (expect))
     return;





 if (reply == (char *) 0 || exit_code != 3)
     break;

 chat_send (reply);
    }




    if (fail_reason)
 chat_logf("Failed (%s)", fail_reason);
    else
 chat_logf("Failed");
    terminate(exit_code);
}
