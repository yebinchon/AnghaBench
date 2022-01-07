
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; } ;
struct ktr_genio {int ktr_fd; scalar_t__ ktr_rw; } ;


 int TIOCGWINSZ ;
 scalar_t__ UIO_READ ;
 scalar_t__ fancy ;
 int fileno (int ) ;
 int hexdump (char*,int,int) ;
 int ioctl (int ,int ,struct winsize*) ;
 int maxdata ;
 int printf (char*,int,char*,int,char*) ;
 int stderr ;
 scalar_t__ suppressdata ;
 int visdump (char*,int,int) ;

void
ktrgenio(struct ktr_genio *ktr, int len)
{
 int datalen = len - sizeof (struct ktr_genio);
 char *dp = (char *)ktr + sizeof (struct ktr_genio);
 static int screenwidth = 0;
 int i, binary;

 printf("fd %d %s %d byte%s\n", ktr->ktr_fd,
  ktr->ktr_rw == UIO_READ ? "read" : "wrote", datalen,
  datalen == 1 ? "" : "s");
 if (suppressdata)
  return;
 if (screenwidth == 0) {
  struct winsize ws;

  if (fancy && ioctl(fileno(stderr), TIOCGWINSZ, &ws) != -1 &&
      ws.ws_col > 8)
   screenwidth = ws.ws_col;
  else
   screenwidth = 80;
 }
 if (maxdata && datalen > maxdata)
  datalen = maxdata;

 for (i = 0, binary = 0; i < datalen && binary == 0; i++) {
  if (dp[i] >= 32 && dp[i] < 127)
   continue;
  if (dp[i] == 10 || dp[i] == 13 || dp[i] == 0 || dp[i] == 9)
   continue;
  binary = 1;
 }
 if (binary)
  hexdump(dp, datalen, screenwidth);
 else
  visdump(dp, datalen, screenwidth);
}
