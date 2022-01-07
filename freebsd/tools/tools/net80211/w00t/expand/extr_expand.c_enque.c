
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int live; char* buf; int len; struct ieee80211_frame* wh; struct queue* next; } ;
struct params {struct queue* q; } ;
struct ieee80211_frame {int dummy; } ;


 int assert (struct queue*) ;
 int err (int,char*) ;
 scalar_t__ malloc (int) ;
 int memset (struct queue*,int ,int) ;
 int printf (char*,int) ;

void enque(struct params *p, char **buf, struct ieee80211_frame *wh, int len)
{
 struct queue *q = p->q;
 int qlen = 0;
 char *ret = ((void*)0);
 struct queue *last = ((void*)0);


 while (q) {
  if (q->live)
   qlen++;
  else {

   ret = q->buf;
   break;
  }

  last = q;
  q = q->next;
 }


 if (!q) {
  q = (struct queue*) malloc(sizeof(*q));
  if (!q)
   err(1, "malloc()");
  memset(q, 0, sizeof(*q));


  if (!p->q)
   p->q = q;
  else {
   assert(last);
   last->next = q;
  }
 }

 q->live = 1;
 q->buf = *buf;
 q->len = len;
 q->wh = wh;

 qlen++;

 if (qlen > 5)
  printf("Enque.  Size: %d\n", qlen);
 *buf = ret;
}
