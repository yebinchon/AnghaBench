
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_state {int flags; } ;
typedef int oldreason ;


 int F_READY ;
 int printf (char*,...) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
dconschat_ready(struct dcons_state *dc, int ready, char *reason)
{
 static char oldreason[64] = "";
 int old;

 old = (dc->flags & F_READY) ? 1 : 0;

 if (ready) {
  dc->flags |= F_READY;
  if (ready != old)
   printf("[dcons connected]\r\n");
  oldreason[0] = 0;
 } else {
  dc->flags &= ~F_READY;
  if (strncmp(oldreason, reason, sizeof(oldreason)) != 0) {
   printf("[dcons disconnected (%s)]\r\n", reason);
   strlcpy(oldreason, reason, sizeof(oldreason));
  }
 }
}
