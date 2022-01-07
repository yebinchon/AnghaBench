
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dumpreg {scalar_t__ addr; } ;
struct ath_diag {char* ad_name; int ad_out_size; scalar_t__ ad_out_data; int ad_id; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int revs; } ;


 int AF_INET ;
 char* ATH_DEFAULT ;
 int HAL_DIAG_REVS ;
 int SIOCGATHDIAG ;
 int SOCK_DGRAM ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,char*) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ ioctl (int,int ,struct ath_diag*) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,char*,int) ;
 struct dumpreg* reglookup (char*) ;
 int regread (int,struct ath_diag*,scalar_t__) ;
 int regwrite (int,struct ath_diag*,scalar_t__,scalar_t__) ;
 int socket (int ,int ,int ) ;
 TYPE_1__ state ;
 char* strchr (char*,char) ;
 int strncpy (char*,char const*,int) ;
 scalar_t__ strtoul (char*,char**,int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct ath_diag atd;
 const char *ifname;
 char *eptr;
 int c, s;

 s = socket(AF_INET, SOCK_DGRAM, 0);
 if (s < 0)
  err(1, "socket");
 ifname = getenv("ATH");
 if (!ifname)
  ifname = ATH_DEFAULT;

 while ((c = getopt(argc, argv, "i:")) != -1)
  switch (c) {
  case 'i':
   ifname = optarg;
   break;
  default:
   usage();

  }
 strncpy(atd.ad_name, ifname, sizeof (atd.ad_name));

 atd.ad_id = HAL_DIAG_REVS;
 atd.ad_out_data = (caddr_t) &state.revs;
 atd.ad_out_size = sizeof(state.revs);
 if (ioctl(s, SIOCGATHDIAG, &atd) < 0)
  err(1, atd.ad_name);

 argc -= optind;
 argv += optind;

 for (; argc > 0; argc--, argv++) {
  char *cp;
  const struct dumpreg *dr;
  uint32_t reg;

  cp = strchr(argv[0], '=');
  if (cp != ((void*)0))
   *cp++ = '\0';
  dr = reglookup(argv[0]);
  if (dr == ((void*)0)) {
   errno = 0;
   reg = (uint32_t) strtoul(argv[0], &eptr, 0);
   if (argv[0] == eptr || eptr[0] != '\0')
    errx(1, "invalid register \"%s\"", argv[0]);
  } else
   reg = dr->addr;
  if (cp != ((void*)0))
   regwrite(s, &atd, reg, (uint32_t) strtoul(cp, ((void*)0), 0));
  printf("%s = %08x\n", argv[0], regread(s, &atd, reg));
 }
 return 0;
}
