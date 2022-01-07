
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mallinfo {int dummy; } ;
typedef int mstate ;
typedef int mspace ;


 int USAGE_ERROR_ACTION (int ,int ) ;
 struct mallinfo internal_mallinfo (int ) ;
 int ok_magic (int ) ;

struct mallinfo mspace_mallinfo(mspace msp) {
  mstate ms = (mstate)msp;
  if (!ok_magic(ms)) {
    USAGE_ERROR_ACTION(ms,ms);
  }
  return internal_mallinfo(ms);
}
