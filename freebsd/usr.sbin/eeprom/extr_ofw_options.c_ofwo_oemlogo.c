
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofwo_extabent {char* ex_prop; } ;


 int EX_IOERR ;
 int EX_OK ;
 int EX_USAGE ;
 int OFWO_LOGO ;
 int O_RDONLY ;
 int SEEK_END ;
 int close (int) ;
 int errx (int ,char*) ;
 int lseek (int,int ,int ) ;
 int ofw_optnode (int) ;
 int ofw_setprop (int,int ,char*,char*,int) ;
 int ofwo_printprop (char*,char const*,int) ;
 int open (char const*,int ) ;
 int printf (char*,char*) ;
 int read (int,char*,int) ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
ofwo_oemlogo(const struct ofwo_extabent *exent, int fd, const void *buf,
    int buflen, const char *val)
{
 int lfd;
 char logo[OFWO_LOGO + 1];

 if (val) {
  if (val[0] == '\0')
   ofw_setprop(fd, ofw_optnode(fd), exent->ex_prop, "", 1);
  else {
   if ((lfd = open(val, O_RDONLY)) == -1) {
    warn("could not open '%s'", val);
    return (EX_USAGE);
   }
   if (read(lfd, logo, OFWO_LOGO) != OFWO_LOGO ||
       lseek(lfd, 0, SEEK_END) != OFWO_LOGO) {
    close(lfd);
    warnx("logo '%s' has wrong size.", val);
    return (EX_USAGE);
   }
   close(lfd);
   logo[OFWO_LOGO] = '\0';
   if (ofw_setprop(fd, ofw_optnode(fd), exent->ex_prop,
       logo, OFWO_LOGO + 1) != OFWO_LOGO)
    errx(EX_IOERR, "writing logo failed.");
  }
 } else
  if (buflen != 0)
   printf("%s: <logo data>\n", exent->ex_prop);
  else
   ofwo_printprop(exent->ex_prop, (const char *)buf,
       buflen);
 return (EX_OK);
}
