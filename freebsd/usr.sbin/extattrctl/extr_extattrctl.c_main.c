
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UFS_EXTATTR_CMD_DISABLE ;
 int UFS_EXTATTR_CMD_ENABLE ;
 int UFS_EXTATTR_CMD_START ;
 int UFS_EXTATTR_CMD_STOP ;
 int extattr_string_to_namespace (char*,int*) ;
 int extattrctl (char*,int ,char*,int,char*) ;
 int initattr (int,char**) ;
 int perror (char*) ;
 int showattr (int,char**) ;
 int strcmp (char*,char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int error = 0, attrnamespace;

 if (argc < 2)
  usage();

 if (!strcmp(argv[1], "start")) {
  if (argc != 3)
   usage();
  error = extattrctl(argv[2], UFS_EXTATTR_CMD_START, ((void*)0), 0,
      ((void*)0));
  if (error) {
   perror("extattrctl start");
   return (-1);
  }
 } else if (!strcmp(argv[1], "stop")) {
  if (argc != 3)
   usage();
  error = extattrctl(argv[2], UFS_EXTATTR_CMD_STOP, ((void*)0), 0,
     ((void*)0));
  if (error) {
   perror("extattrctl stop");
   return (-1);
  }
 } else if (!strcmp(argv[1], "enable")) {
  if (argc != 6)
   usage();
  error = extattr_string_to_namespace(argv[3], &attrnamespace);
  if (error) {
   perror("extattrctl enable");
   return (-1);
  }
  error = extattrctl(argv[2], UFS_EXTATTR_CMD_ENABLE, argv[5],
      attrnamespace, argv[4]);
  if (error) {
   perror("extattrctl enable");
   return (-1);
  }
 } else if (!strcmp(argv[1], "disable")) {
  if (argc != 5)
   usage();
  error = extattr_string_to_namespace(argv[3], &attrnamespace);
  if (error) {
   perror("extattrctl disable");
   return (-1);
  }
  error = extattrctl(argv[2], UFS_EXTATTR_CMD_DISABLE, ((void*)0),
      attrnamespace, argv[4]);
  if (error) {
   perror("extattrctl disable");
   return (-1);
  }
 } else if (!strcmp(argv[1], "initattr")) {
  argc -= 2;
  argv += 2;
  error = initattr(argc, argv);
  if (error)
   return (-1);
 } else if (!strcmp(argv[1], "showattr")) {
  argc -= 2;
  argv += 2;
  error = showattr(argc, argv);
  if (error)
   return (-1);
 } else
  usage();

 return (0);
}
