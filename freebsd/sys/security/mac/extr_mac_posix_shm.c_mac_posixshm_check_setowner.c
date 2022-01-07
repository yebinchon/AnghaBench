
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int dummy; } ;
struct shmfd {int shm_label; } ;
typedef int gid_t ;


 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct shmfd*,int ,int ) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct shmfd*,int ,int ,int ) ;
 int posixshm_check_setowner ;

int
mac_posixshm_check_setowner(struct ucred *cred, struct shmfd *shmfd, uid_t uid,
    gid_t gid)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(posixshm_check_setowner, cred, shmfd,
     shmfd->shm_label, uid, gid);
 MAC_CHECK_PROBE4(posixshm_check_setowner, error, cred, shmfd,
     uid, gid);

 return (error);
}
