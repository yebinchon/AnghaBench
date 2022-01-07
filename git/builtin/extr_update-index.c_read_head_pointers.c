
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int head_oid ;
 int merge_head_oid ;
 scalar_t__ read_ref (char*,int *) ;
 int stderr ;

__attribute__((used)) static void read_head_pointers(void)
{
 if (read_ref("HEAD", &head_oid))
  die("No HEAD -- no initial commit yet?");
 if (read_ref("MERGE_HEAD", &merge_head_oid)) {
  fprintf(stderr, "Not in the middle of a merge.\n");
  exit(0);
 }
}
