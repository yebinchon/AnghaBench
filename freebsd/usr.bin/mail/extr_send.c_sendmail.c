
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct header {int * h_inreplyto; int h_replyto; int * h_smopts; int * h_bcc; int * h_cc; int * h_subject; int h_to; } ;


 int GTO ;
 int extract (char*,int ) ;
 int mail1 (struct header*,int ) ;
 int value (char*) ;

int
sendmail(char *str)
{
 struct header head;

 head.h_to = extract(str, GTO);
 head.h_subject = ((void*)0);
 head.h_cc = ((void*)0);
 head.h_bcc = ((void*)0);
 head.h_smopts = ((void*)0);
 head.h_replyto = value("REPLYTO");
 head.h_inreplyto = ((void*)0);
 mail1(&head, 0);
 return (0);
}
