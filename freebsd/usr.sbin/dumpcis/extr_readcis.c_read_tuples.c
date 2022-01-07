
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tuple_list {struct tuple_list* next; } ;
struct tuple {int length; int data; } ;
typedef int off_t ;


 int CIS_LINKTARGET ;
 int CIS_LONGLINK_A ;
 int CIS_LONGLINK_C ;
 int CIS_NOLINK ;
 int MDF_ATTR ;
 scalar_t__ ck_linktarget (int,int,int) ;
 struct tuple* find_tuple_in_list (struct tuple_list*,int ) ;
 int printf (char*,...) ;
 void* read_one_tuplelist (int,int,int) ;
 struct tuple_list* tlist ;
 scalar_t__ tpl32 (int ) ;

__attribute__((used)) static struct tuple_list *
read_tuples(int fd)
{
 struct tuple_list *tl = 0, *last_tl;
 struct tuple *tp;
 int flag;
 off_t offs;

 tlist = 0;
 last_tl = tlist = read_one_tuplelist(fd, MDF_ATTR, (off_t) 0);


 do {
  flag = MDF_ATTR;
  tp = find_tuple_in_list(last_tl, CIS_LONGLINK_A);
  if (tp == ((void*)0)) {
   flag = 0;
   tp = find_tuple_in_list(last_tl, CIS_LONGLINK_C);
  }

  if (tp == ((void*)0) || tp->length != 4)
   break;

  offs = (uint32_t)tpl32(tp->data);







  if (offs > 0 && offs < 32 * 1024 && ck_linktarget(fd, offs, flag)) {
   tl = read_one_tuplelist(fd, flag, offs);
   last_tl->next = tl;
   last_tl = tl;
  }
 } while (tl);





 if (find_tuple_in_list(tlist, CIS_NOLINK) == 0 &&
     find_tuple_in_list(tlist, CIS_LINKTARGET) == 0 &&
     ck_linktarget(fd, (off_t) 0, 0)) {



  tlist->next = read_one_tuplelist(fd, 0, 0);
 }
 return (tlist);
}
