
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct payload_list {int dummy; } ;
struct dst_list {struct dst_list* dl_next; } ;


 struct dst_list* dl_head ;
 int rrenum_output (struct payload_list*,struct dst_list*) ;

__attribute__((used)) static void
rrenum_snd_eachdst(struct payload_list *pl)
{
 struct dst_list *dl;

 for (dl = dl_head; dl; dl = dl->dl_next) {
  rrenum_output(pl, dl);
 }
}
