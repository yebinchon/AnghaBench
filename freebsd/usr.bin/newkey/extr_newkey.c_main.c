
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {scalar_t__ pw_uid; } ;
struct hostent {char* h_name; } ;


 int HEXKEYBYTES ;
 int KEYCHECKSUMSIZE ;
 int MAXNETNAMELEN ;
 int YPDBPATH ;
 scalar_t__ chdir (int ) ;
 int err_string (int) ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int genkeys (char*,char*,char*) ;
 scalar_t__ geteuid () ;
 struct hostent* gethostbyname (char*) ;
 char* getpass (char*) ;
 struct passwd* getpwnam (char*) ;
 int host2netname (char*,char*,char*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int printf (char*,...) ;
 int setpublicmap (char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;
 int user2netname (char*,int,char*) ;
 int warn (char*,int ) ;
 int xdecrypt (char*,char*) ;
 int xencrypt (char*,char*) ;
 int yperr_string (int) ;

int
main(int argc, char *argv[])
{
 char name[MAXNETNAMELEN + 1];
 char public[HEXKEYBYTES + 1];
 char secret[HEXKEYBYTES + 1];
 char crypt1[HEXKEYBYTES + KEYCHECKSUMSIZE + 1];
 char crypt2[HEXKEYBYTES + KEYCHECKSUMSIZE + 1];
 int status;
 char *pass;
 struct passwd *pw;




 if (argc != 3 || !(strcmp(argv[1], "-u") == 0 ||
  strcmp(argv[1], "-h") == 0)) {
  usage();
 }
 if (geteuid() != 0)
  errx(1, "must be superuser");





 if (strcmp(argv[1], "-u") == 0) {
  pw = getpwnam(argv[2]);
  if (pw == ((void*)0))
   errx(1, "unknown user: %s", argv[2]);
  (void)user2netname(name, (int)pw->pw_uid, (char *)((void*)0));
 } else {






  (void)host2netname(name, argv[2], (char *)((void*)0));

 }

 (void)printf("Adding new key for %s.\n", name);
 pass = getpass("New password:");
 genkeys(public, secret, pass);

 memcpy(crypt1, secret, HEXKEYBYTES);
 memcpy(crypt1 + HEXKEYBYTES, secret, KEYCHECKSUMSIZE);
 crypt1[HEXKEYBYTES + KEYCHECKSUMSIZE] = 0;
 xencrypt(crypt1, pass);

 memcpy(crypt2, crypt1, HEXKEYBYTES + KEYCHECKSUMSIZE + 1);
 xdecrypt(crypt2, getpass("Retype password:"));
 if (memcmp(crypt2, crypt2 + HEXKEYBYTES, KEYCHECKSUMSIZE) != 0 ||
  memcmp(crypt2, secret, HEXKEYBYTES) != 0)
  errx(1, "password incorrect");




 if ((status = setpublicmap(name, public, crypt1))) {




  errx(1, "unable to update publickey database (%u): %s",
   status, err_string(status));

 }
 (void)printf("Your new key has been successfully stored away.\n");
 exit(0);

}
