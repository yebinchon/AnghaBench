
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int dummy; } ;
struct header {char* h_inreplyto; int h_replyto; int * h_smopts; int * h_bcc; int * h_cc; int * h_subject; int * h_to; } ;


 int GTO ;
 int * cat (int *,int ) ;
 struct message* dot ;
 int extract (char*,int ) ;
 void* hfield (char*,struct message*) ;
 int mail1 (struct header*,int) ;
 struct message* message ;
 void* nameof (struct message*,int) ;
 int * reedit (int *) ;
 char* skin (void*) ;
 int touch (struct message*) ;
 int value (char*) ;

int
doRespond(int msgvec[])
{
 struct header head;
 struct message *mp;
 int *ap;
 char *cp, *mid;

 head.h_to = ((void*)0);
 for (ap = msgvec; *ap != 0; ap++) {
  mp = &message[*ap - 1];
  touch(mp);
  dot = mp;
  if ((cp = skin(hfield("from", mp))) == ((void*)0))
   cp = skin(nameof(mp, 2));
  head.h_to = cat(head.h_to, extract(cp, GTO));
  mid = skin(hfield("message-id", mp));
 }
 if (head.h_to == ((void*)0))
  return (0);
 mp = &message[msgvec[0] - 1];
 if ((head.h_subject = hfield("subject", mp)) == ((void*)0))
  head.h_subject = hfield("subj", mp);
 head.h_subject = reedit(head.h_subject);
 head.h_cc = ((void*)0);
 head.h_bcc = ((void*)0);
 head.h_smopts = ((void*)0);
 head.h_replyto = value("REPLYTO");
 head.h_inreplyto = mid;
 mail1(&head, 1);
 return (0);
}
