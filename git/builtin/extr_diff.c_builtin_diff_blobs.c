
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int diffopt; } ;
struct object_array_entry {unsigned int mode; TYPE_1__* item; } ;
struct TYPE_2__ {int oid; } ;


 unsigned int S_IFINVALID ;
 int S_IFREG ;
 int blob_path (struct object_array_entry*) ;
 int builtin_diff_usage ;
 unsigned int canon_mode (int) ;
 int diff_flush (int *) ;
 int diffcore_std (int *) ;
 int stuff_change (int *,unsigned int,unsigned int,int *,int *,int,int,int ,int ) ;
 int usage (int ) ;

__attribute__((used)) static int builtin_diff_blobs(struct rev_info *revs,
         int argc, const char **argv,
         struct object_array_entry **blob)
{
 const unsigned mode = canon_mode(S_IFREG | 0644);

 if (argc > 1)
  usage(builtin_diff_usage);

 if (blob[0]->mode == S_IFINVALID)
  blob[0]->mode = mode;

 if (blob[1]->mode == S_IFINVALID)
  blob[1]->mode = mode;

 stuff_change(&revs->diffopt,
       blob[0]->mode, blob[1]->mode,
       &blob[0]->item->oid, &blob[1]->item->oid,
       1, 1,
       blob_path(blob[0]), blob_path(blob[1]));
 diffcore_std(&revs->diffopt);
 diff_flush(&revs->diffopt);
 return 0;
}
