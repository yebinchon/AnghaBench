
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMDLINE ;
 int addstr (char*) ;
 int changeitems (char const*,scalar_t__) ;
 int clrtoeol () ;
 int error (char*,char const*) ;
 int move (int ,int ) ;
 scalar_t__ prefix (char const*,char*) ;
 int selecthost (int ,int ) ;
 int selectport (int,int ) ;
 int selectproto (char const*) ;
 int showhosts () ;
 int showports () ;
 int showprotos () ;

int
netcmd(const char *cmd, const char *args)
{

 if (prefix(cmd, "proto")) {
  if (*args == '\0') {
   move(CMDLINE, 0);
   clrtoeol();
   addstr("which proto?");
  } else if (!selectproto(args)) {
   error("%s: Unknown protocol.", args);
  }
  return (1);
 }
 if (prefix(cmd, "ignore") || prefix(cmd, "display")) {
  changeitems(args, prefix(cmd, "display"));
  return (1);
 }
 if (prefix(cmd, "reset")) {
  selectproto(0);
  selecthost(0, 0);
  selectport(-1, 0);
  return (1);
 }
 if (prefix(cmd, "show")) {
  move(CMDLINE, 0); clrtoeol();
  if (*args == '\0') {
   showprotos();
   showhosts();
   showports();
   return (1);
  }
  if (prefix(args, "protos"))
   showprotos();
  else if (prefix(args, "hosts"))
   showhosts();
  else if (prefix(args, "ports"))
   showports();
  else
   addstr("show what?");
  return (1);
 }
 return (0);
}
