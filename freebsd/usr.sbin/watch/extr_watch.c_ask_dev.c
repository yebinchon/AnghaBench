
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV_NAME_LEN ;
 int clear () ;
 scalar_t__ fgets (char*,int,int ) ;
 int printf (char*,...) ;
 int set_tty () ;
 int stdin ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int unset_tty () ;

void
ask_dev(char *dbuf, const char *msg)
{
 char buf[DEV_NAME_LEN];
 int len;

 clear();
 unset_tty();

 if (msg)
  printf("%s\n", msg);
 if (dbuf)
  printf("Enter device name [%s]:", dbuf);
 else
  printf("Enter device name:");

 if (fgets(buf, DEV_NAME_LEN - 1, stdin)) {
  len = strlen(buf);
  if (buf[len - 1] == '\n')
   buf[len - 1] = '\0';
  if (buf[0] != '\0' && buf[0] != ' ')
   strcpy(dbuf, buf);
 }
 set_tty();
}
