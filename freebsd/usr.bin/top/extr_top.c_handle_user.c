
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* uid; } ;


 int MT_standout ;
 scalar_t__ add_uid (int) ;
 int clear_message () ;
 int new_message (int ,char*,...) ;
 TYPE_1__ ps ;
 int putchar (char) ;
 scalar_t__ readline (char*,size_t,int) ;
 int rem_uid (int) ;
 int reset_uids () ;
 int userid (char*) ;

__attribute__((used)) static int
handle_user(char *buf, size_t buflen)
{
    int rc = 0;
    int uid = -1;
    char *buf2 = buf;

    new_message(MT_standout, "Username to show (+ for all): ");
    if (readline(buf, buflen, 0) <= 0)
    {
 clear_message();
 return (rc);
    }

    if (buf[0] == '+' || buf[0] == '-')
    {
 if (buf[1] == '\0')
 {
     reset_uids();
     goto end;
 }
 else
     ++buf2;
    }

    if ((uid = userid(buf2)) == -1)
    {
 new_message(MT_standout, " %s: unknown user", buf2);
 rc = 1;
 goto end;
    }

    if (buf2 == buf)
    {
 reset_uids();
 ps.uid[0] = uid;
 goto end;
    }

    if (buf[0] == '+')
    {
 if (add_uid(uid))
 {
     new_message(MT_standout, " too many users, reset with '+'");
     rc = 1;
     goto end;
 }
    }
    else
 rem_uid(uid);

end:
    putchar('\r');
    return (rc);
}
