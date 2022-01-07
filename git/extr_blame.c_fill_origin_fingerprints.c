
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fingerprint {int dummy; } ;
struct TYPE_2__ {int ptr; int size; } ;
struct blame_origin {int num_lines; TYPE_1__ file; scalar_t__ fingerprints; } ;


 int find_line_starts (int**,int ,int ) ;
 int free (int*) ;
 int get_line_fingerprints (scalar_t__,int ,int*,int ,int ) ;
 scalar_t__ xcalloc (int,int ) ;

__attribute__((used)) static void fill_origin_fingerprints(struct blame_origin *o)
{
 int *line_starts;

 if (o->fingerprints)
  return;
 o->num_lines = find_line_starts(&line_starts, o->file.ptr,
     o->file.size);
 o->fingerprints = xcalloc(sizeof(struct fingerprint), o->num_lines);
 get_line_fingerprints(o->fingerprints, o->file.ptr, line_starts,
         0, o->num_lines);
 free(line_starts);
}
