
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_POLICY_EXTERNALIZE (int ,struct label*,char*,char*,size_t) ;
 int pipe ;

int
mac_pipe_externalize_label(struct label *label, char *elements,
    char *outbuf, size_t outbuflen)
{
 int error;

 MAC_POLICY_EXTERNALIZE(pipe, label, elements, outbuf, outbuflen);

 return (error);
}
