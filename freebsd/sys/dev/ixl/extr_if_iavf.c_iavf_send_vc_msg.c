
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iavf_sc {int dummy; } ;


 int IAVF_FLAGS ;
 int iavf_dbg_vc (struct iavf_sc*,char*,int ,int ,int) ;
 int ixl_vc_send_cmd (struct iavf_sc*,int ) ;

__attribute__((used)) static int
iavf_send_vc_msg(struct iavf_sc *sc, u32 op)
{
 int error = 0;

 error = ixl_vc_send_cmd(sc, op);
 if (error != 0)
  iavf_dbg_vc(sc, "Error sending %b: %d\n", op, IAVF_FLAGS, error);

 return (error);
}
