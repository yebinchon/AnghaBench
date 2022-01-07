
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {long kn_id; scalar_t__ kn_data; } ;


 long NOTE_SIGNAL ;

__attribute__((used)) static int
filt_signal(struct knote *kn, long hint)
{

 if (hint & NOTE_SIGNAL) {
  hint &= ~NOTE_SIGNAL;

  if (kn->kn_id == hint)
   kn->kn_data++;
 }
 return (kn->kn_data != 0);
}
