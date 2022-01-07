
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int create_temp_file (struct object_id*) ;
 int die (char*,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int puts (int ) ;
 int strcmp (char const*,char*) ;
 int usage (char*) ;

int cmd_unpack_file(int argc, const char **argv, const char *prefix)
{
 struct object_id oid;

 if (argc != 2 || !strcmp(argv[1], "-h"))
  usage("git unpack-file <sha1>");
 if (get_oid(argv[1], &oid))
  die("Not a valid object name %s", argv[1]);

 git_config(git_default_config, ((void*)0));

 puts(create_temp_file(&oid));
 return 0;
}
