
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int dummy; } ;
struct iovec {int dummy; } ;
struct cmsgcred {int dummy; } ;


 size_t CMSG_SPACE (int) ;
 int SCM_CREDS ;
 int free (void*) ;
 void* malloc (size_t) ;
 int uc_logmsg (char*) ;
 scalar_t__ uc_message_sendn (int,struct msghdr*) ;
 int uc_msghdr_init_client (struct msghdr*,struct iovec*,void*,size_t,int ,int) ;
 scalar_t__ uc_socket_connect (int) ;
 scalar_t__ uc_sync_recv () ;

int
t_cmsgcred_client(int fd)
{
 struct msghdr msghdr;
 struct iovec iov[1];
 void *cmsg_data;
 size_t cmsg_size;
 int rv;

 if (uc_sync_recv() < 0)
  return (-2);

 rv = -2;

 cmsg_size = CMSG_SPACE(sizeof(struct cmsgcred));
 cmsg_data = malloc(cmsg_size);
 if (cmsg_data == ((void*)0)) {
  uc_logmsg("malloc");
  goto done;
 }
 uc_msghdr_init_client(&msghdr, iov, cmsg_data, cmsg_size,
     SCM_CREDS, sizeof(struct cmsgcred));

 if (uc_socket_connect(fd) < 0)
  goto done;

 if (uc_message_sendn(fd, &msghdr) < 0)
  goto done;

 rv = 0;
done:
 free(cmsg_data);
 return (rv);
}
