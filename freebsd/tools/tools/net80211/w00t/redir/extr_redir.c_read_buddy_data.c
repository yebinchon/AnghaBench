
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue {int id; int len; scalar_t__ live; struct queue* next; TYPE_1__* wh; } ;
struct params {int buddy_got; struct queue* q; int state; int tap; scalar_t__ buddy_data; } ;
struct iovec {char* iov_base; int iov_len; } ;
typedef int mac ;
typedef int iov ;
struct TYPE_2__ {int* i_fc; int i_addr3; int i_addr1; int i_addr2; } ;


 int IEEE80211_FC1_DIR_TODS ;
 int S_START ;
 int assert (int) ;
 int buddy_get (struct params*,int) ;
 int err (int,char*) ;
 int exit (int) ;
 int memcpy (char*,int ,int) ;
 int ntohs (int ) ;
 int printf (char*,...) ;
 int send_queue (struct params*) ;
 int writev (int ,struct iovec*,int) ;

void read_buddy_data(struct params *p)
{
 unsigned short *ptr = (unsigned short*) p->buddy_data;
 int id, len, rem;
 struct queue *q = p->q;
 struct queue *last = p->q;
 char mac[12];
 struct iovec iov[2];

 id = ntohs(*ptr++);
 len = ntohs(*ptr++);

 rem = len + 4 - p->buddy_got;

 assert(rem > 0);
 if (!buddy_get(p, rem))
  return;





 p->buddy_got = 0;


 if (!q)
  return;
 if (!q->live)
  return;


 if (q->id != id) {
  printf("Diff ID\n");
  return;
 }

 rem = q->len - sizeof(*q->wh) - 4 - 4;
 if (rem != len) {
  printf("Diff len\n");
  return;
 }


 if (q->wh->i_fc[1] & IEEE80211_FC1_DIR_TODS) {
  memcpy(mac, q->wh->i_addr3, 6);
  memcpy(&mac[6], q->wh->i_addr2, 6);
 } else {
  memcpy(mac, q->wh->i_addr1, 6);
  memcpy(&mac[6], q->wh->i_addr3, 6);
 }
 iov[0].iov_base = mac;
 iov[0].iov_len = sizeof(mac);
 iov[1].iov_base = (char*)ptr + 8 - 2;
 iov[1].iov_len = len - 8 + 2;

 rem = writev(p->tap, iov, sizeof(iov)/sizeof(struct iovec));
 if (rem == -1)
  err(1, "writev()");
 if (rem != (14+(len-8))) {
  printf("Short write %d\n", rem);
  exit(1);
 }


 q->live = 0;
 if (q->next) {

  p->q = q->next;

  while (last) {
   if (!last->next) {
    last->next = q;
    q->next = 0;
    break;
   }
   last = last->next;
  }
 }


 p->state = S_START;
 if (p->q->live)
  send_queue(p);
}
