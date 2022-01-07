
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int c_cflag; } ;


 int CLOCAL ;
 int CODESET ;
 int DELIMITERS ;
 int EOF ;
 scalar_t__ FREQUENCY ;
 int F_GETFL ;
 int F_SETFL ;
 int GETOPTOPTS ;
 int LC_CTYPE ;
 int O_NONBLOCK ;
 int O_WRONLY ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 char* SPEAKER ;
 int TCSANOW ;
 int TIOCMGET ;
 int TIOCMSET ;
 int TIOCM_RTS ;
 char* USAGE ;
 int _IONBF ;
 void* atoi (scalar_t__) ;
 int cdot_clock ;
 int cpm ;
 int decode (char*) ;
 scalar_t__ device ;
 int dot_clock ;
 int eflag ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fcntl (int,int ,...) ;
 int fdecode (int ) ;
 scalar_t__ freq ;
 int getchar () ;
 int getopt (int,char**,int ) ;
 int hightab ;
 int ioctl (int,int ,int*) ;
 int iso8859_1tab ;
 int iso8859_7tab ;
 int koi8rtab ;
 int lflag ;
 int line ;
 int morse (int) ;
 char* nl_langinfo (int ) ;
 TYPE_1__ ntty ;
 int olflags ;
 int open (char*,int,...) ;
 scalar_t__ optarg ;
 scalar_t__ optind ;
 TYPE_1__ otty ;
 int pflag ;
 int printf (char*) ;
 int putchar (int) ;
 int rflag ;
 int * setlocale (int ,char*) ;
 int setvbuf (int ,int ,int ,int ) ;
 int sflag ;
 int sighandler ;
 int signal (int ,int ) ;
 int spkr ;
 int stdin ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 char* strtok (char*,int ) ;
 int tcgetattr (int,TYPE_1__*) ;
 int tcsetattr (int,int ,TYPE_1__*) ;
 int wpm ;

int
main(int argc, char *argv[])
{
 int ch, lflags;
 char *p, *codeset;

 while ((ch = getopt(argc, argv, GETOPTOPTS)) != -1)
  switch ((char) ch) {
  case 'c':
   cpm = atoi(optarg);
   break;
  case 'd':
   device = optarg;
   break;
  case 'e':
   eflag = 1;
   setvbuf(stdout, 0, _IONBF, 0);
   break;
  case 'f':
   freq = atoi(optarg);
   break;
  case 'l':
   lflag = 1;
   break;





  case 'r':
   rflag = 1;
   break;
  case 's':
   sflag = 1;
   break;
  case 'w':
   wpm = atoi(optarg);
   break;
  case '?':
  default:
   errx(1, USAGE);
  }
 if ((sflag && lflag) || (sflag && rflag) || (lflag && rflag)) {
  errx(1, "morse: only one of -l, -s, and -r allowed\n");
 }
 if ((pflag || device) && (sflag || lflag)) {
  errx(1, "morse: only one of -p, -d and -l, -s allowed\n");
 }
 if (cpm == 0) {
  cpm = wpm;
 }
 if ((pflag || device) && ((wpm < 1) || (wpm > 60) || (cpm < 1) || (cpm > 60))) {
  errx(1, "morse: insane speed\n");
 }
 if ((pflag || device) && (freq == 0)) {
  freq = FREQUENCY;
 }







 if (device) {
  if ((line = open(device, O_WRONLY | O_NONBLOCK)) == -1) {
   err(1, "open tty line");
  }
  if (tcgetattr(line, &otty) == -1) {
   err(1, "tcgetattr() failed");
  }
  ntty = otty;
  ntty.c_cflag |= CLOCAL;
  tcsetattr(line, TCSANOW, &ntty);
  lflags = fcntl(line, F_GETFL);
  lflags &= ~O_NONBLOCK;
  fcntl(line, F_SETFL, &lflags);
  ioctl(line, TIOCMGET, &lflags);
  lflags &= ~TIOCM_RTS;
  olflags = lflags;
  ioctl(line, TIOCMSET, &lflags);
  (void)signal(SIGHUP, sighandler);
  (void)signal(SIGINT, sighandler);
  (void)signal(SIGQUIT, sighandler);
  (void)signal(SIGTERM, sighandler);
 }
 if (pflag || device) {
  dot_clock = wpm / 2.4;
  dot_clock = 1 / dot_clock;
  dot_clock = dot_clock / 2;

  dot_clock = dot_clock * 100;

  cdot_clock = cpm / 2.4;
  cdot_clock = 1 / cdot_clock;
  cdot_clock = cdot_clock / 2;

  cdot_clock = cdot_clock * 100;
 }

 argc -= optind;
 argv += optind;

 if (setlocale(LC_CTYPE, "") != ((void*)0) &&
     *(codeset = nl_langinfo(CODESET)) != '\0') {
  if (strcmp(codeset, "KOI8-R") == 0)
   hightab = koi8rtab;
  else if (strcmp(codeset, "ISO8859-1") == 0 ||
    strcmp(codeset, "ISO8859-15") == 0)
   hightab = iso8859_1tab;
  else if (strcmp(codeset, "ISO8859-7") == 0)
   hightab = iso8859_7tab;
 }

 if (lflag) {
  printf("m");
 }
 if (rflag) {
  if (*argv) {
   do {
    p = strtok(*argv, DELIMITERS);
    if (p == ((void*)0)) {
     decode(*argv);
    }
    else {
     while (p) {
      decode(p);
      p = strtok(((void*)0), DELIMITERS);
     }
    }
   } while (*++argv);
   putchar('\n');
  } else {
   fdecode(stdin);
  }
 }
 else if (*argv) {
  do {
   for (p = *argv; *p; ++p) {
    if (eflag)
     putchar(*p);
    morse(*p);
   }
   if (eflag)
    putchar(' ');
   morse(' ');
  } while (*++argv);
 } else {
  while ((ch = getchar()) != EOF) {
   if (eflag)
    putchar(ch);
   morse(ch);
  }
 }
 if (device)
  tcsetattr(line, TCSANOW, &otty);
 exit(0);
}
