
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;
 char* strerror (int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
str_adderr(char *str, int len, int err)
{
    const char *msg;
    int msglen;

    msg = err == 0 ? "Not a number" : strerror(err);
    msglen = strlen(msg) + 2;
    if (len <= msglen)
    {
 return(0);
    }
    strcat(str, ": ");
    strcat(str, msg);
    return(len - msglen);
}
