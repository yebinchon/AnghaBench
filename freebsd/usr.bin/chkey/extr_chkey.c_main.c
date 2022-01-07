
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {int pw_passwd; } ;
typedef int newline ;


 int HEXKEYBYTES ;
 int KEYCHECKSUMSIZE ;
 int MAXNETNAMELEN ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PKMAP ;
 int ROOTKEY ;
 int close (int) ;
 char* crypt (char*,int ) ;
 int domain ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int genkeys (char*,char*,char*) ;
 int getopt (int,char**,char*) ;
 char* getpass (char*) ;
 struct passwd* getpwuid (scalar_t__) ;
 scalar_t__ getuid () ;
 scalar_t__ host2netname (char*,int *,int *) ;
 scalar_t__ key_setsecret (char*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int open (int ,int,int ) ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 int setpublicmap (char*,char*,char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 int usage () ;
 scalar_t__ user2netname (char*,scalar_t__,int *) ;
 int warn (char*,int ) ;
 scalar_t__ write (int,char*,int) ;
 int xdecrypt (char*,char*) ;
 int xencrypt (char*,char*) ;
 int yp_get_default_domain (int *) ;
 scalar_t__ yp_master (int ,int ,char**) ;
 int yperr_string (int) ;
 struct passwd* ypgetpwuid (scalar_t__) ;

int
main(int argc, char **argv)
{
 char name[MAXNETNAMELEN+1];
 char public[HEXKEYBYTES + 1];
 char secret[HEXKEYBYTES + 1];
 char crypt1[HEXKEYBYTES + KEYCHECKSUMSIZE + 1];
 char crypt2[HEXKEYBYTES + KEYCHECKSUMSIZE + 1];
 int status;
 char *pass;
 struct passwd *pw;
 uid_t uid;
 int force = 0;
 int ch;







 while ((ch = getopt(argc, argv, "f")) != -1)
  switch(ch) {
  case 'f':
   force = 1;
   break;
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc != 0)
  usage();






 uid = getuid() ;
 if (uid == 0) {
  if (host2netname(name, ((void*)0), ((void*)0)) == 0)
   errx(1, "cannot convert hostname to netname");
 } else {
  if (user2netname(name, uid, ((void*)0)) == 0)
   errx(1, "cannot convert username to netname");
 }
 (void)printf("Generating new key for %s.\n", name);

 if (!force) {
  if (uid != 0) {



   pw = getpwuid(uid);

   if (pw == ((void*)0)) {




    errx(1,
   "no password entry found: can't change key");

   }
  } else {
   pw = getpwuid(0);
   if (pw == ((void*)0))
     errx(1, "no password entry found: can't change key");
  }
 }
 pass = getpass("Password:");







 force = 1;

 genkeys(public, secret, pass);

 memcpy(crypt1, secret, HEXKEYBYTES);
 memcpy(crypt1 + HEXKEYBYTES, secret, KEYCHECKSUMSIZE);
 crypt1[HEXKEYBYTES + KEYCHECKSUMSIZE] = 0;
 xencrypt(crypt1, pass);

 if (force) {
  memcpy(crypt2, crypt1, HEXKEYBYTES + KEYCHECKSUMSIZE + 1);
  xdecrypt(crypt2, getpass("Retype password:"));
  if (memcmp(crypt2, crypt2 + HEXKEYBYTES, KEYCHECKSUMSIZE) != 0
   || memcmp(crypt2, secret, HEXKEYBYTES) != 0)
   errx(1, "password incorrect");
 }




 status = setpublicmap(name, public, crypt1);
 if (status != 0) {




  errx(1, "unable to update publickey database");

 }

 if (uid == 0) {







  int fd;

  fd = open(ROOTKEY, O_WRONLY|O_TRUNC|O_CREAT, 0);
  if (fd < 0) {
   warn("%s", ROOTKEY);
  } else {
   char newline = '\n';

   if (write(fd, secret, strlen(secret)) < 0 ||
       write(fd, &newline, sizeof(newline)) < 0)
    warn("%s: write", ROOTKEY);
  }
  close(fd);
 }

 if (key_setsecret(secret) < 0)
  errx(1, "unable to login with new secret key");
 (void)printf("Done.\n");
 exit(0);

}
