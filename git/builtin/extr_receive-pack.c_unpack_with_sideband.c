
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shallow_info {int dummy; } ;
struct async {int in; int proc; } ;
typedef int muxer ;


 int KEEPALIVE_AFTER_NUL ;
 int copy_to_sideband ;
 int finish_async (struct async*) ;
 int memset (struct async*,int ,int) ;
 scalar_t__ start_async (struct async*) ;
 char const* unpack (int,struct shallow_info*) ;
 int use_keepalive ;
 int use_sideband ;

__attribute__((used)) static const char *unpack_with_sideband(struct shallow_info *si)
{
 struct async muxer;
 const char *ret;

 if (!use_sideband)
  return unpack(0, si);

 use_keepalive = KEEPALIVE_AFTER_NUL;
 memset(&muxer, 0, sizeof(muxer));
 muxer.proc = copy_to_sideband;
 muxer.in = -1;
 if (start_async(&muxer))
  return ((void*)0);

 ret = unpack(muxer.in, si);

 finish_async(&muxer);
 return ret;
}
