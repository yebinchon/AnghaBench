
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_file {int * kf_path; } ;


 int arc4random () ;
 int strcpy (int *,char*) ;
 size_t strlen (int *) ;

__attribute__((used)) static inline void
vn_fill_junk(struct kinfo_file *kif)
{
 size_t len, olen;





 len = (arc4random() % (sizeof(kif->kf_path) - 2)) + 1;
 olen = strlen(kif->kf_path);
 if (len < olen)
  strcpy(&kif->kf_path[len - 1], "$");
 else
  for (; olen < len; olen++)
   strcpy(&kif->kf_path[olen], "A");
}
