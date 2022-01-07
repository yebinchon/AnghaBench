
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct kevent {scalar_t__ ident; int fflags; } ;


 int EVFILT_VNODE ;
 int EV_ADD ;
 int EV_ENABLE ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int,int ,int,int,int ,int ) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int NOTE_ATTRIB ;
 int NOTE_DELETE ;
 int NOTE_EXTEND ;
 int NOTE_LINK ;
 int NOTE_RENAME ;
 int NOTE_REVOKE ;
 int NOTE_WRITE ;
 int O_RDONLY ;
 int assert (int) ;
 int close (scalar_t__) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 char* fgetln (int ,size_t*) ;
 int free (struct kevent*) ;
 int kevent (int,struct kevent*,int,struct kevent*,int,struct timespec*) ;
 int kqueue () ;
 struct kevent* malloc (int) ;
 int open (char*,int ) ;
 int printf (char*,char*) ;
 int stdin ;
 int system (char*) ;

int
kqueue_main(int argc, char **argv)
{
 char *line;
 int i, kq;
 size_t len;
 struct kevent *changes, event;

 if (argc < 2)
  return EXIT_FAILURE;

 argc--;
 argv++;

 changes = malloc(sizeof(struct kevent) * (argc - 1));
 if (changes == ((void*)0))
  errx(EXIT_FAILURE, "not enough memory");

 for (i = 0; i < argc; i++) {
  int fd;

  fd = open(argv[i], O_RDONLY);
  if (fd == -1)
   err(EXIT_FAILURE, "cannot open %s", argv[i]);

  EV_SET(&changes[i], fd, EVFILT_VNODE,
      EV_ADD | EV_ENABLE | EV_ONESHOT,
      NOTE_ATTRIB | NOTE_DELETE | NOTE_EXTEND | NOTE_LINK |
      NOTE_RENAME | NOTE_REVOKE | NOTE_WRITE,
      0, 0);
 }

 kq = kqueue();
 if (kq == -1)
  err(EXIT_FAILURE, "kqueue");

 while ((line = fgetln(stdin, &len)) != ((void*)0)) {
  int ec, nev;
  struct timespec to;

  to.tv_sec = 0;
  to.tv_nsec = 100000;

  (void)kevent(kq, changes, argc, &event, 1, &to);

  assert(len > 0);
  assert(line[len - 1] == '\n');
  line[len - 1] = '\0';
  ec = system(line);
  if (ec != EXIT_SUCCESS)
   errx(ec, "%s returned %d", line, ec);

  do {
   nev = kevent(kq, changes, argc, &event, 1, &to);
   if (nev == -1)
    err(EXIT_FAILURE, "kevent");
   else if (nev > 0) {
    for (i = 0; i < argc; i++)
     if (event.ident == changes[i].ident)
      break;

    if (event.fflags & NOTE_ATTRIB)
     printf("%s - NOTE_ATTRIB\n", argv[i]);
    if (event.fflags & NOTE_DELETE)
     printf("%s - NOTE_DELETE\n", argv[i]);
    if (event.fflags & NOTE_EXTEND)
     printf("%s - NOTE_EXTEND\n", argv[i]);
    if (event.fflags & NOTE_LINK)
     printf("%s - NOTE_LINK\n", argv[i]);
    if (event.fflags & NOTE_RENAME)
     printf("%s - NOTE_RENAME\n", argv[i]);
    if (event.fflags & NOTE_REVOKE)
     printf("%s - NOTE_REVOKE\n", argv[i]);
    if (event.fflags & NOTE_WRITE)
     printf("%s - NOTE_WRITE\n", argv[i]);
   }
  } while (nev > 0);
 }

 for (i = 0; i < argc; i++)
  close(changes[i].ident);
 free(changes);

 return EXIT_SUCCESS;
}
