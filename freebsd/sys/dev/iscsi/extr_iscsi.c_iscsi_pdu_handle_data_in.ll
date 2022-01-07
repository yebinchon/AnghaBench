; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_data_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_data_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.iscsi_bhs_data_in = type { i32, i64, i32, i32, i32 }
%struct.iscsi_outstanding = type { i64, %union.ccb* }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i64, i64, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.iscsi_session = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"bad itt 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"data out of order; expected offset %zd, got %zd\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"oversize data segment (%zd bytes at offset %zd, buffer is %d)\00", align 1
@BHSDI_FLAGS_S = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"freezing devq\00", align 1
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"received > csio->dxfer_len\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"underflow mismatch: target indicates %d, we calculated %zd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @iscsi_pdu_handle_data_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_pdu_handle_data_in(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.iscsi_bhs_data_in*, align 8
  %4 = alloca %struct.iscsi_outstanding*, align 8
  %5 = alloca %struct.iscsi_session*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.ccb_scsiio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %11 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %12 = call %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu* %11)
  store %struct.iscsi_session* %12, %struct.iscsi_session** %5, align 8
  %13 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %14 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.iscsi_bhs_data_in*
  store %struct.iscsi_bhs_data_in* %16, %struct.iscsi_bhs_data_in** %3, align 8
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %18 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.iscsi_outstanding* @iscsi_outstanding_find(%struct.iscsi_session* %17, i32 %20)
  store %struct.iscsi_outstanding* %21, %struct.iscsi_outstanding** %4, align 8
  %22 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %23 = icmp eq %struct.iscsi_outstanding* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %26 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %25, i32 0, i32 1
  %27 = load %union.ccb*, %union.ccb** %26, align 8
  %28 = icmp eq %union.ccb* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %24, %1
  %30 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %31 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %32 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = call i32 (%struct.iscsi_session*, i8*, i64, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %37 = call i32 @icl_pdu_free(%struct.icl_pdu* %36)
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %39 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %38)
  %40 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %41 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %40)
  br label %251

42:                                               ; preds = %24
  %43 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %44 = call i64 @icl_pdu_data_segment_length(%struct.icl_pdu* %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %49 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %48)
  %50 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %51 = call i32 @icl_pdu_free(%struct.icl_pdu* %50)
  br label %251

52:                                               ; preds = %42
  %53 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %54 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ntohl(i32 %55)
  %57 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %58 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %52
  %62 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %63 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %64 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %67 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ntohl(i32 %68)
  %70 = call i32 (%struct.iscsi_session*, i8*, i64, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %69)
  %71 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %72 = call i32 @icl_pdu_free(%struct.icl_pdu* %71)
  %73 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %74 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %73)
  %75 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %76 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %75)
  br label %251

77:                                               ; preds = %52
  %78 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %79 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %78, i32 0, i32 1
  %80 = load %union.ccb*, %union.ccb** %79, align 8
  store %union.ccb* %80, %union.ccb** %6, align 8
  %81 = load %union.ccb*, %union.ccb** %6, align 8
  %82 = bitcast %union.ccb* %81 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %82, %struct.ccb_scsiio** %7, align 8
  %83 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %84 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %85, %86
  %88 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %89 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %87, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %77
  %93 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %96 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %99 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (%struct.iscsi_session*, i8*, i64, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %93, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %94, i64 %97, i64 %100)
  %102 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %103 = call i32 @icl_pdu_free(%struct.icl_pdu* %102)
  %104 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %105 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %104)
  %106 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %107 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %106)
  br label %251

108:                                              ; preds = %77
  %109 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %110 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %114 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %118 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %9, align 8
  %120 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %121 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @BHSDI_FLAGS_S, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %108
  %127 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %128 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %129 = call i32 @iscsi_outstanding_remove(%struct.iscsi_session* %127, %struct.iscsi_outstanding* %128)
  br label %130

130:                                              ; preds = %126, %108
  %131 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %132 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %131)
  %133 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %134 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %135 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = add i64 %136, %137
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @icl_pdu_get_data(%struct.icl_pdu* %133, i32 0, i64 %138, i64 %139)
  %141 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %142 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @BHSDI_FLAGS_S, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %130
  %148 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %149 = call i32 @icl_pdu_free(%struct.icl_pdu* %148)
  br label %251

150:                                              ; preds = %130
  %151 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %152 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i32, i32* @CAM_REQ_CMP, align 4
  %157 = load %union.ccb*, %union.ccb** %6, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_3__*
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  br label %188

160:                                              ; preds = %150
  %161 = load %union.ccb*, %union.ccb** %6, align 8
  %162 = bitcast %union.ccb* %161 to %struct.TYPE_3__*
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %166 = and i32 %164, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %160
  %169 = load %union.ccb*, %union.ccb** %6, align 8
  %170 = bitcast %union.ccb* %169 to %struct.TYPE_3__*
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @xpt_freeze_devq(i32 %172, i32 1)
  %174 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %175 = call i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session* %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %176

176:                                              ; preds = %168, %160
  %177 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %178 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %179 = or i32 %177, %178
  %180 = load %union.ccb*, %union.ccb** %6, align 8
  %181 = bitcast %union.ccb* %180 to %struct.TYPE_3__*
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %184 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %187 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %186, i32 0, i32 1
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %176, %155
  %189 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %190 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @CAM_DIR_MASK, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* @CAM_DIR_IN, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %246

197:                                              ; preds = %188
  %198 = load i64, i64* %9, align 8
  %199 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %200 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ule i64 %198, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @KASSERT(i32 %203, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %205 = load i64, i64* %9, align 8
  %206 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %207 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ult i64 %205, %208
  br i1 %209, label %210, label %245

210:                                              ; preds = %197
  %211 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %212 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @ntohl(i32 %213)
  %215 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %216 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %215, i32 0, i32 2
  store i64 %214, i64* %216, align 8
  %217 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %218 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %221 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* %9, align 8
  %224 = sub i64 %222, %223
  %225 = icmp ne i64 %219, %224
  br i1 %225, label %226, label %237

226:                                              ; preds = %210
  %227 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %228 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %229 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %232 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* %9, align 8
  %235 = sub i64 %233, %234
  %236 = call i32 (%struct.iscsi_session*, i8*, i64, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %227, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i64 %230, i64 %235)
  br label %237

237:                                              ; preds = %226, %210
  %238 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %239 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %9, align 8
  %242 = sub i64 %240, %241
  %243 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %244 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %243, i32 0, i32 2
  store i64 %242, i64* %244, align 8
  br label %245

245:                                              ; preds = %237, %197
  br label %246

246:                                              ; preds = %245, %188
  %247 = load %union.ccb*, %union.ccb** %6, align 8
  %248 = call i32 @xpt_done(%union.ccb* %247)
  %249 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %250 = call i32 @icl_pdu_free(%struct.icl_pdu* %249)
  br label %251

251:                                              ; preds = %246, %147, %92, %61, %47, %29
  ret void
}

declare dso_local %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local %struct.iscsi_outstanding* @iscsi_outstanding_find(%struct.iscsi_session*, i32) #1

declare dso_local i32 @ISCSI_SESSION_WARN(%struct.iscsi_session*, i8*, i64, ...) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

declare dso_local i32 @iscsi_session_reconnect(%struct.iscsi_session*) #1

declare dso_local i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session*) #1

declare dso_local i64 @icl_pdu_data_segment_length(%struct.icl_pdu*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @iscsi_outstanding_remove(%struct.iscsi_session*, %struct.iscsi_outstanding*) #1

declare dso_local i32 @icl_pdu_get_data(%struct.icl_pdu*, i32, i64, i64) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
