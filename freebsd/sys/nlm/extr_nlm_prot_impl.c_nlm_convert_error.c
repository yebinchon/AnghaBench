
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nlm4_stats ;


 int EROFS ;
 int ESTALE ;
 int nlm4_failed ;
 int nlm4_rofs ;
 int nlm4_stale_fh ;

__attribute__((used)) static nlm4_stats
nlm_convert_error(int error)
{

 if (error == ESTALE)
  return nlm4_stale_fh;
 else if (error == EROFS)
  return nlm4_rofs;
 else
  return nlm4_failed;
}
