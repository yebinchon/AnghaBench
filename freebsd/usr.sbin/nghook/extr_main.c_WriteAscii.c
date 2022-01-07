
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int sbuf ;


 scalar_t__ isprint (int) ;
 int outfd ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char*) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
WriteAscii(u_char *buf, int len)
{
 char ch, sbuf[100];
 int k, count;

 for (count = 0; count < len; count += 16) {
  snprintf(sbuf, sizeof(sbuf), "%04x:  ", count);
  for (k = 0; k < 16; k++)
   if (count + k < len)
    snprintf(sbuf + strlen(sbuf),
        sizeof(sbuf) - strlen(sbuf),
        "%02x ", buf[count + k]);
   else
    snprintf(sbuf + strlen(sbuf),
        sizeof(sbuf) - strlen(sbuf), "   ");
  snprintf(sbuf + strlen(sbuf), sizeof(sbuf) - strlen(sbuf), " ");
  for (k = 0; k < 16; k++)
   if (count + k < len) {
    ch = isprint(buf[count + k]) ?
        buf[count + k] : '.';
    snprintf(sbuf + strlen(sbuf),
        sizeof(sbuf) - strlen(sbuf), "%c", ch);
   } else
    snprintf(sbuf + strlen(sbuf),
        sizeof(sbuf) - strlen(sbuf), " ");
  snprintf(sbuf + strlen(sbuf),
      sizeof(sbuf) - strlen(sbuf), "\n");
  (void) write(outfd, sbuf, strlen(sbuf));
 }
 ch = '\n';
 write(outfd, &ch, 1);
}
