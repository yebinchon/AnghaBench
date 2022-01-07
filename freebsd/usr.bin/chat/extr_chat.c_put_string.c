
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarm (int ) ;
 scalar_t__ alarmed ;
 int break_sequence () ;
 int chat_logf (char*,char*) ;
 char* clean (char*,int) ;
 scalar_t__ quiet ;
 int sleep (int) ;
 int timeout ;
 int usleep (int) ;
 scalar_t__ verbose ;
 int write_char (char) ;

int
put_string(char *s)
{
    quiet = 0;
    s = clean(s, 1);

    if (verbose)
        chat_logf("send (%v)", quiet ? "??????" : s);

    alarm(timeout); alarmed = 0;

    while (*s) {
 char c = *s++;

 if (c != '\\') {
     if (!write_char (c))
  return 0;
     continue;
 }

 c = *s++;
 switch (c) {
 case 'd':
     sleep(1);
     break;

 case 'K':
     break_sequence();
     break;

 case 'p':
     usleep(10000);
     break;

 default:
     if (!write_char (c))
  return 0;
     break;
 }
    }

    alarm(0);
    alarmed = 0;
    return (1);
}
