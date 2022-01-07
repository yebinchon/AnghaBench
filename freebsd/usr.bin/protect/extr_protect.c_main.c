
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int idtype_t ;
typedef int id_t ;


 scalar_t__ ENOENT ;
 int PPROT_CLEAR ;
 int PPROT_DESCEND ;
 int PPROT_INHERIT ;
 int PPROT_SET ;
 int PROC_SPROTECT ;
 int P_PGID ;
 int P_PID ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int execvp (char*,char**) ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 int optarg ;
 scalar_t__ optind ;
 int parse_id (int ) ;
 int procctl (int ,int ,int ,int*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 idtype_t idtype;
 id_t id;
 int ch, flags;
 bool descend, inherit, idset;

 idtype = P_PID;
 id = getpid();
 flags = PPROT_SET;
 descend = inherit = idset = 0;
 while ((ch = getopt(argc, argv, "cdig:p:")) != -1)
  switch (ch) {
  case 'c':
   flags = PPROT_CLEAR;
   break;
  case 'd':
   descend = 1;
   break;
  case 'i':
   inherit = 1;
   break;
  case 'g':
   idtype = P_PGID;
   id = parse_id(optarg);
   idset = 1;
   break;
  case 'p':
   idtype = P_PID;
   id = parse_id(optarg);
   idset = 1;
   break;
  }
 argc -= optind;
 argv += optind;

 if ((idset && argc != 0) || (!idset && (argc == 0 || descend)))
  usage();

 if (descend)
  flags |= PPROT_DESCEND;
 if (inherit)
  flags |= PPROT_INHERIT;
 if (procctl(idtype, id, PROC_SPROTECT, &flags) == -1)
  err(1, "procctl");

 if (argc != 0) {
  errno = 0;
  execvp(*argv, argv);
  err(errno == ENOENT ? 127 : 126, "%s", *argv);
 }
 return (0);
}
