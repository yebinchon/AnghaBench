
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;


 int AF_UNIX ;
 int SERVER_PATH ;
 int memset (struct sockaddr_un*,int ,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void
assign_address(struct sockaddr_un *serveraddr)
{
 memset(serveraddr, 0, sizeof(*serveraddr));
 serveraddr->sun_family = AF_UNIX;
 strcpy(serveraddr->sun_path, SERVER_PATH);
}
