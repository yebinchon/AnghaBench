
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {int dummy; } ;
struct header {char* h_subject; char* h_replyto; int * h_inreplyto; struct name* h_smopts; struct name* h_bcc; struct name* h_cc; struct name* h_to; } ;


 int mail1 (struct header*,int ) ;

int
mail(struct name *to, struct name *cc, struct name *bcc, struct name *smopts,
 char *subject, char *replyto)
{
 struct header head;

 head.h_to = to;
 head.h_subject = subject;
 head.h_cc = cc;
 head.h_bcc = bcc;
 head.h_smopts = smopts;
 head.h_replyto = replyto;
 head.h_inreplyto = ((void*)0);
 mail1(&head, 0);
 return (0);
}
