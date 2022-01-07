
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tbuf ;
struct tap_priv {int * mevp; } ;
struct net_backend {int fd; scalar_t__ opaque; } ;
typedef int * net_be_rxeof_t ;
typedef int cap_rights_t ;


 int CAP_EVENT ;
 int CAP_READ ;
 int CAP_WRITE ;
 int EVF_READ ;
 int EX_OSERR ;
 int FIONBIO ;
 int O_RDWR ;
 int WPRINTF (char*) ;
 int cap_rights_init (int *,int ,int ,int ) ;
 int caph_rights_limit (int,int *) ;
 int errx (int ,char*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int * mevent_add_disabled (int,int ,int *,void*) ;
 int open (char*,int ) ;
 int strcpy (char*,char*) ;
 int strlcat (char*,char const*,int) ;
 int tap_cleanup (struct net_backend*) ;

__attribute__((used)) static int
tap_init(struct net_backend *be, const char *devname,
  net_be_rxeof_t cb, void *param)
{
 struct tap_priv *priv = (struct tap_priv *)be->opaque;
 char tbuf[80];
 int opt = 1;

 cap_rights_t rights;


 if (cb == ((void*)0)) {
  WPRINTF(("TAP backend requires non-NULL callback\n"));
  return (-1);
 }

 strcpy(tbuf, "/dev/");
 strlcat(tbuf, devname, sizeof(tbuf));

 be->fd = open(tbuf, O_RDWR);
 if (be->fd == -1) {
  WPRINTF(("open of tap device %s failed\n", tbuf));
  goto error;
 }





 if (ioctl(be->fd, FIONBIO, &opt) < 0) {
  WPRINTF(("tap device O_NONBLOCK failed\n"));
  goto error;
 }


 cap_rights_init(&rights, CAP_EVENT, CAP_READ, CAP_WRITE);
 if (caph_rights_limit(be->fd, &rights) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");


 priv->mevp = mevent_add_disabled(be->fd, EVF_READ, cb, param);
 if (priv->mevp == ((void*)0)) {
  WPRINTF(("Could not register event\n"));
  goto error;
 }

 return (0);

error:
 tap_cleanup(be);
 return (-1);
}
