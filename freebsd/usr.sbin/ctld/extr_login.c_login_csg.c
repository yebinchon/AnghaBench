
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {scalar_t__ pdu_bhs; } ;
struct iscsi_bhs_login_request {int bhslr_flags; } ;



__attribute__((used)) static int
login_csg(const struct pdu *request)
{
 struct iscsi_bhs_login_request *bhslr;

 bhslr = (struct iscsi_bhs_login_request *)request->pdu_bhs;

 return ((bhslr->bhslr_flags & 0x0C) >> 2);
}
