
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEXT_MSG_ADDLEN ;
 int clear_eol (scalar_t__) ;
 int fputc (char,int ) ;
 scalar_t__ lastline ;
 scalar_t__ msglen ;
 char* next_msg ;
 char* setup_buffer (char*,int ) ;
 int stdout ;
 scalar_t__ strlen (char*) ;
 int top_standout (char*) ;
 scalar_t__ y_message ;

void
i_message(void)
{
    next_msg = setup_buffer(next_msg, NEXT_MSG_ADDLEN);

    while (lastline < y_message)
    {
 fputc('\n', stdout);
 lastline++;
    }
    if (next_msg[0] != '\0')
    {
 top_standout(next_msg);
 msglen = strlen(next_msg);
 next_msg[0] = '\0';
    }
    else if (msglen > 0)
    {
 (void) clear_eol(msglen);
 msglen = 0;
    }
}
