
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_fp; } ;


 int fo_kqfilter (int ,struct knote*) ;

__attribute__((used)) static int
filt_fileattach(struct knote *kn)
{

 return (fo_kqfilter(kn->kn_fp, kn));
}
