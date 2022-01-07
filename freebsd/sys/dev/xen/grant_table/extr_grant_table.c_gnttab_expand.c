
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int GREFS_PER_GRANT_FRAME ;
 int gnttab_map (unsigned int,unsigned int) ;
 int grow_gnttab_list (unsigned int) ;
 unsigned int howmany (unsigned int,int ) ;
 unsigned int max_nr_grant_frames () ;
 unsigned int nr_grant_frames ;

__attribute__((used)) static int
gnttab_expand(unsigned int req_entries)
{
 int error;
 unsigned int cur, extra;

 cur = nr_grant_frames;
 extra = howmany(req_entries, GREFS_PER_GRANT_FRAME);
 if (cur + extra > max_nr_grant_frames())
  return (ENOSPC);

 error = gnttab_map(cur, cur + extra - 1);
 if (!error)
  error = grow_gnttab_list(extra);

 return (error);
}
