#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* data_ptr; int dxfer_len; int /*<<< orphan*/  sense_data; int /*<<< orphan*/  sense_len; } ;
struct TYPE_4__ {int flags; } ;
union ccb {TYPE_3__ csio; TYPE_1__ ccb_h; } ;
typedef  scalar_t__ uint8_t ;
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct QBUFFER {int dummy; } ;
struct TYPE_5__ {int Length; void* ReturnCode; } ;
struct CMD_MESSAGE_FIELD {int* messagedatabuffer; TYPE_2__ cmdmessage; } ;
struct AdapterControlBlock {size_t rqbuf_firstindex; size_t rqbuf_lastindex; int* rqbuffer; int acb_flags; int wqbuf_lastindex; int wqbuf_firstindex; int* wqbuffer; int /*<<< orphan*/  qbuffer_lock; } ;
typedef  char int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int ACB_F_IOPDATA_OVERFLOW ; 
 int ACB_F_MESSAGE_RQBUFFER_CLEARED ; 
 int ACB_F_MESSAGE_WQBUFFER_CLEARED ; 
 int ACB_F_MESSAGE_WQBUFFER_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ARCMSR_MAX_QBUFFER ; 
#define  ARCMSR_MESSAGE_CLEAR_ALLQBUFFER 136 
#define  ARCMSR_MESSAGE_CLEAR_RQBUFFER 135 
#define  ARCMSR_MESSAGE_CLEAR_WQBUFFER 134 
 int ARCMSR_MESSAGE_FAIL ; 
#define  ARCMSR_MESSAGE_FLUSH_ADAPTER_CACHE 133 
#define  ARCMSR_MESSAGE_READ_RQBUFFER 132 
#define  ARCMSR_MESSAGE_REQUEST_RETURNCODE_3F 131 
 void* ARCMSR_MESSAGE_RETURNCODE_3F ; 
 void* ARCMSR_MESSAGE_RETURNCODE_OK ; 
#define  ARCMSR_MESSAGE_SAY_GOODBYE 130 
#define  ARCMSR_MESSAGE_SAY_HELLO 129 
 int ARCMSR_MESSAGE_SUCCESS ; 
#define  ARCMSR_MESSAGE_WRITE_WQBUFFER 128 
 int CAM_DATA_MASK ; 
 int CAM_DATA_VADDR ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*,struct QBUFFER*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 
 struct QBUFFER* FUNC5 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC6 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC7 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC8 (int*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct AdapterControlBlock *acb, union ccb *pccb)
{
	struct CMD_MESSAGE_FIELD *pcmdmessagefld;
	int retvalue = 0, transfer_len = 0;
	char *buffer;
	uint8_t *ptr = FUNC10(&pccb->csio);
	u_int32_t controlcode = (u_int32_t ) ptr[5] << 24 |
				(u_int32_t ) ptr[6] << 16 |
				(u_int32_t ) ptr[7] << 8  |
				(u_int32_t ) ptr[8];
					/* 4 bytes: Areca io control code */
	if ((pccb->ccb_h.flags & CAM_DATA_MASK) == CAM_DATA_VADDR) {
		buffer = pccb->csio.data_ptr;
		transfer_len = pccb->csio.dxfer_len;
	} else {
		retvalue = ARCMSR_MESSAGE_FAIL;
		goto message_out;
	}
	if (transfer_len > sizeof(struct CMD_MESSAGE_FIELD)) {
		retvalue = ARCMSR_MESSAGE_FAIL;
		goto message_out;
	}
	pcmdmessagefld = (struct CMD_MESSAGE_FIELD *) buffer;
	switch(controlcode) {
	case ARCMSR_MESSAGE_READ_RQBUFFER: {
			u_int8_t *pQbuffer;
			u_int8_t *ptmpQbuffer = pcmdmessagefld->messagedatabuffer;
			int32_t allxfer_len = 0;

			FUNC0(&acb->qbuffer_lock);
			while ((acb->rqbuf_firstindex != acb->rqbuf_lastindex)
				&& (allxfer_len < 1031)) {
				pQbuffer = &acb->rqbuffer[acb->rqbuf_firstindex];
				*ptmpQbuffer = *pQbuffer;
				acb->rqbuf_firstindex++;
				acb->rqbuf_firstindex %= ARCMSR_MAX_QBUFFER;
				ptmpQbuffer++;
				allxfer_len++;
			}
			if (acb->acb_flags & ACB_F_IOPDATA_OVERFLOW) {
				struct QBUFFER  *prbuffer;

				acb->acb_flags &= ~ACB_F_IOPDATA_OVERFLOW;
				prbuffer = FUNC5(acb);
				if(FUNC2(acb, prbuffer) == 0)
					acb->acb_flags |= ACB_F_IOPDATA_OVERFLOW;
			}
			pcmdmessagefld->cmdmessage.Length = allxfer_len;
			pcmdmessagefld->cmdmessage.ReturnCode = ARCMSR_MESSAGE_RETURNCODE_OK;
			retvalue = ARCMSR_MESSAGE_SUCCESS;
			FUNC1(&acb->qbuffer_lock);
		}
		break;
	case ARCMSR_MESSAGE_WRITE_WQBUFFER: {
			int32_t my_empty_len, user_len, wqbuf_firstindex, wqbuf_lastindex;
			u_int8_t *pQbuffer;
			u_int8_t *ptmpuserbuffer = pcmdmessagefld->messagedatabuffer;

			user_len = pcmdmessagefld->cmdmessage.Length;
			FUNC0(&acb->qbuffer_lock);
			wqbuf_lastindex = acb->wqbuf_lastindex;
			wqbuf_firstindex = acb->wqbuf_firstindex;
			if (wqbuf_lastindex != wqbuf_firstindex) {
				FUNC3(acb);
				/* has error report sensedata */
				if(pccb->csio.sense_len) {
				((u_int8_t *)&pccb->csio.sense_data)[0] = (0x1 << 7 | 0x70); 
				/* Valid,ErrorCode */
				((u_int8_t *)&pccb->csio.sense_data)[2] = 0x05; 
				/* FileMark,EndOfMedia,IncorrectLength,Reserved,SenseKey */
				((u_int8_t *)&pccb->csio.sense_data)[7] = 0x0A; 
				/* AdditionalSenseLength */
				((u_int8_t *)&pccb->csio.sense_data)[12] = 0x20; 
				/* AdditionalSenseCode */
				}
				retvalue = ARCMSR_MESSAGE_FAIL;
			} else {
				my_empty_len = (wqbuf_firstindex-wqbuf_lastindex - 1)
						&(ARCMSR_MAX_QBUFFER - 1);
				if (my_empty_len >= user_len) {
					while (user_len > 0) {
						pQbuffer = &acb->wqbuffer[acb->wqbuf_lastindex];
						*pQbuffer = *ptmpuserbuffer;
						acb->wqbuf_lastindex++;
						acb->wqbuf_lastindex %= ARCMSR_MAX_QBUFFER;
						ptmpuserbuffer++;
						user_len--;
					}
					if (acb->acb_flags & ACB_F_MESSAGE_WQBUFFER_CLEARED) {
						acb->acb_flags &=
						    ~ACB_F_MESSAGE_WQBUFFER_CLEARED;
						FUNC3(acb);
					}
				} else {
					/* has error report sensedata */
					if(pccb->csio.sense_len) {
					((u_int8_t *)&pccb->csio.sense_data)[0] = (0x1 << 7 | 0x70);
					/* Valid,ErrorCode */
					((u_int8_t *)&pccb->csio.sense_data)[2] = 0x05; 
					/* FileMark,EndOfMedia,IncorrectLength,Reserved,SenseKey */
					((u_int8_t *)&pccb->csio.sense_data)[7] = 0x0A; 
					/* AdditionalSenseLength */
					((u_int8_t *)&pccb->csio.sense_data)[12] = 0x20; 
					/* AdditionalSenseCode */
					}
					retvalue = ARCMSR_MESSAGE_FAIL;
				}
			}
			FUNC1(&acb->qbuffer_lock);
		}
		break;
	case ARCMSR_MESSAGE_CLEAR_RQBUFFER: {
			u_int8_t *pQbuffer = acb->rqbuffer;

			FUNC0(&acb->qbuffer_lock);
			if (acb->acb_flags & ACB_F_IOPDATA_OVERFLOW) {
				acb->acb_flags &= ~ACB_F_IOPDATA_OVERFLOW;
				FUNC6(acb);
			}
			acb->acb_flags |= ACB_F_MESSAGE_RQBUFFER_CLEARED;
			acb->rqbuf_firstindex = 0;
			acb->rqbuf_lastindex = 0;
			FUNC9(pQbuffer, 0, ARCMSR_MAX_QBUFFER);
			pcmdmessagefld->cmdmessage.ReturnCode =
			    ARCMSR_MESSAGE_RETURNCODE_OK;
			FUNC1(&acb->qbuffer_lock);
		}
		break;
	case ARCMSR_MESSAGE_CLEAR_WQBUFFER: {
			u_int8_t *pQbuffer = acb->wqbuffer;

			FUNC0(&acb->qbuffer_lock);
			if (acb->acb_flags & ACB_F_IOPDATA_OVERFLOW) {
				acb->acb_flags &= ~ACB_F_IOPDATA_OVERFLOW;
				FUNC6(acb);
			}
			acb->acb_flags |=
				(ACB_F_MESSAGE_WQBUFFER_CLEARED |
					ACB_F_MESSAGE_WQBUFFER_READ);
			acb->wqbuf_firstindex = 0;
			acb->wqbuf_lastindex = 0;
			FUNC9(pQbuffer, 0, ARCMSR_MAX_QBUFFER);
			pcmdmessagefld->cmdmessage.ReturnCode =
				ARCMSR_MESSAGE_RETURNCODE_OK;
			FUNC1(&acb->qbuffer_lock);
		}
		break;
	case ARCMSR_MESSAGE_CLEAR_ALLQBUFFER: {
			u_int8_t *pQbuffer;

			FUNC0(&acb->qbuffer_lock);
			if (acb->acb_flags & ACB_F_IOPDATA_OVERFLOW) {
				acb->acb_flags &= ~ACB_F_IOPDATA_OVERFLOW;
				FUNC6(acb);
			}
			acb->acb_flags |=
				(ACB_F_MESSAGE_WQBUFFER_CLEARED
				| ACB_F_MESSAGE_RQBUFFER_CLEARED
				| ACB_F_MESSAGE_WQBUFFER_READ);
			acb->rqbuf_firstindex = 0;
			acb->rqbuf_lastindex = 0;
			acb->wqbuf_firstindex = 0;
			acb->wqbuf_lastindex = 0;
			pQbuffer = acb->rqbuffer;
			FUNC9(pQbuffer, 0, sizeof (struct QBUFFER));
			pQbuffer = acb->wqbuffer;
			FUNC9(pQbuffer, 0, sizeof (struct QBUFFER));
			pcmdmessagefld->cmdmessage.ReturnCode = ARCMSR_MESSAGE_RETURNCODE_OK;
			FUNC1(&acb->qbuffer_lock);
		}
		break;
	case ARCMSR_MESSAGE_REQUEST_RETURNCODE_3F: {
			pcmdmessagefld->cmdmessage.ReturnCode = ARCMSR_MESSAGE_RETURNCODE_3F;
		}
		break;
	case ARCMSR_MESSAGE_SAY_HELLO: {
			int8_t *hello_string = "Hello! I am ARCMSR";

			FUNC8(pcmdmessagefld->messagedatabuffer, hello_string
				, (int16_t)FUNC11(hello_string));
			pcmdmessagefld->cmdmessage.ReturnCode = ARCMSR_MESSAGE_RETURNCODE_OK;
		}
		break;
	case ARCMSR_MESSAGE_SAY_GOODBYE:
		FUNC7(acb);
		break;
	case ARCMSR_MESSAGE_FLUSH_ADAPTER_CACHE:
		FUNC4(acb);
		break;
	default:
		retvalue = ARCMSR_MESSAGE_FAIL;
	}
message_out:
	return (retvalue);
}