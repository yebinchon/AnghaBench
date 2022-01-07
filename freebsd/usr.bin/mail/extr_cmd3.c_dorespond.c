
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {int dummy; } ;
struct message {int dummy; } ;
struct header {void* h_inreplyto; int h_replyto; int * h_smopts; int * h_bcc; struct name* h_cc; int * h_subject; struct name* h_to; } ;


 int GCC ;
 int GTO ;
 char** altnames ;
 struct name* cat (struct name*,struct name*) ;
 struct name* delname (struct name*,char*) ;
 struct message* dot ;
 struct name* elide (struct name*) ;
 struct name* extract (char*,int ) ;
 void* hfield (char*,struct message*) ;
 int mail1 (struct header*,int) ;
 struct message* message ;
 char* myname ;
 void* nameof (struct message*,int) ;
 int printf (char*) ;
 int * reedit (int *) ;
 void* skin (void*) ;
 int touch (struct message*) ;
 int value (char*) ;

int
dorespond(int *msgvec)
{
 struct message *mp;
 char *cp, *rcv, *replyto;
 char **ap;
 struct name *np;
 struct header head;

 if (msgvec[1] != 0) {
  printf("Sorry, can't reply to multiple messages at once\n");
  return (1);
 }
 mp = &message[msgvec[0] - 1];
 touch(mp);
 dot = mp;
 if ((rcv = skin(hfield("from", mp))) == ((void*)0))
  rcv = skin(nameof(mp, 1));
 if ((replyto = skin(hfield("reply-to", mp))) != ((void*)0))
  np = extract(replyto, GTO);
 else if ((cp = skin(hfield("to", mp))) != ((void*)0))
  np = extract(cp, GTO);
 else
  np = ((void*)0);
 np = elide(np);




 np = delname(np, myname);
 if (altnames)
  for (ap = altnames; *ap != ((void*)0); ap++)
   np = delname(np, *ap);
 if (np != ((void*)0) && replyto == ((void*)0))
  np = cat(np, extract(rcv, GTO));
 else if (np == ((void*)0)) {
  if (replyto != ((void*)0))
   printf("Empty reply-to field -- replying to author\n");
  np = extract(rcv, GTO);
 }
 head.h_to = np;
 if ((head.h_subject = hfield("subject", mp)) == ((void*)0))
  head.h_subject = hfield("subj", mp);
 head.h_subject = reedit(head.h_subject);
 if (replyto == ((void*)0) && (cp = skin(hfield("cc", mp))) != ((void*)0)) {
  np = elide(extract(cp, GCC));
  np = delname(np, myname);
  if (altnames != 0)
   for (ap = altnames; *ap != ((void*)0); ap++)
    np = delname(np, *ap);
  head.h_cc = np;
 } else
  head.h_cc = ((void*)0);
 head.h_bcc = ((void*)0);
 head.h_smopts = ((void*)0);
 head.h_replyto = value("REPLYTO");
 head.h_inreplyto = skin(hfield("message-id", mp));
 mail1(&head, 1);
 return (0);
}
