
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct blame_origin {int path; TYPE_2__* commit; struct blame_origin* previous; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 char* oid_to_hex (int *) ;
 int printf (char*,...) ;
 int stdout ;
 int write_name_quoted (int ,int ,char) ;

__attribute__((used)) static void write_filename_info(struct blame_origin *suspect)
{
 if (suspect->previous) {
  struct blame_origin *prev = suspect->previous;
  printf("previous %s ", oid_to_hex(&prev->commit->object.oid));
  write_name_quoted(prev->path, stdout, '\n');
 }
 printf("filename ");
 write_name_quoted(suspect->path, stdout, '\n');
}
