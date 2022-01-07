
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int seq; int tx; } ;


 scalar_t__ EMSGSIZE ;
 int err (int,char*,int) ;
 scalar_t__ errno ;
 int errx (int,char*,int,int) ;
 int inject (int ,void*,int) ;
 int warnx (char*,int) ;

void send_frame(struct params *p, void *buf, int len)
{
 int rc;

 rc = inject(p->tx, buf, len);
 if (rc == -1) {
  if (errno == EMSGSIZE)
   warnx("inject(len %d)", len);
  else
   err(1, "inject(len %d)", len);
 } else if (rc != len)
  errx(1, "injected %d but only %d sent", rc, len);
 p->seq++;
}
