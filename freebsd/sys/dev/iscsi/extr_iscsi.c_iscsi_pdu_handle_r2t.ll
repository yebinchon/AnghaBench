; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_r2t.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_r2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64, i32 }
%struct.iscsi_session = type { i64 }
%struct.iscsi_bhs_r2t = type { i32, i32, i32, i32, i32 }
%struct.iscsi_bhs_data_out = type { i32, i8*, i8*, i32, i32, i32, i32 }
%struct.iscsi_outstanding = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"bad itt 0x%x; reconnecting\00", align 1
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"received R2T for read command; reconnecting\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"target requested invalid offset %zd, buffer is is %d; reconnecting\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"target requested invalid length %zd, buffer is %d; reconnecting\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"target requested invalid length/offset %zd, buffer is %d; reconnecting\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@ISCSI_BHS_OPCODE_SCSI_DATA_OUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to allocate memory; reconnecting\00", align 1
@BHSDO_FLAGS_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @iscsi_pdu_handle_r2t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_pdu_handle_r2t(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.icl_pdu*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.iscsi_bhs_r2t*, align 8
  %6 = alloca %struct.iscsi_bhs_data_out*, align 8
  %7 = alloca %struct.iscsi_outstanding*, align 8
  %8 = alloca %struct.ccb_scsiio*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %13 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %14 = call %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu* %13)
  store %struct.iscsi_session* %14, %struct.iscsi_session** %4, align 8
  %15 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %16 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.iscsi_bhs_r2t*
  store %struct.iscsi_bhs_r2t* %18, %struct.iscsi_bhs_r2t** %5, align 8
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %20 = load %struct.iscsi_bhs_r2t*, %struct.iscsi_bhs_r2t** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_bhs_r2t, %struct.iscsi_bhs_r2t* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.iscsi_outstanding* @iscsi_outstanding_find(%struct.iscsi_session* %19, i32 %22)
  store %struct.iscsi_outstanding* %23, %struct.iscsi_outstanding** %7, align 8
  %24 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %7, align 8
  %25 = icmp eq %struct.iscsi_outstanding* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp eq %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26, %1
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %33 = load %struct.iscsi_bhs_r2t*, %struct.iscsi_bhs_r2t** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_bhs_r2t, %struct.iscsi_bhs_r2t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %38 = call i32 @icl_pdu_free(%struct.icl_pdu* %37)
  %39 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %40 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %39)
  br label %234

41:                                               ; preds = %26
  %42 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %7, align 8
  %43 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store %struct.ccb_scsiio* %45, %struct.ccb_scsiio** %8, align 8
  %46 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %47 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CAM_DIR_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @CAM_DIR_OUT, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %41
  %55 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %56 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %58 = call i32 @icl_pdu_free(%struct.icl_pdu* %57)
  %59 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %60 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %59)
  br label %234

61:                                               ; preds = %41
  %62 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %7, align 8
  %63 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.iscsi_bhs_r2t*, %struct.iscsi_bhs_r2t** %5, align 8
  %65 = getelementptr inbounds %struct.iscsi_bhs_r2t, %struct.iscsi_bhs_r2t* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ntohl(i32 %66)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %70 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ugt i64 %68, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %61
  %74 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %77 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %74, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %75, i64 %78)
  %80 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %81 = call i32 @icl_pdu_free(%struct.icl_pdu* %80)
  %82 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %83 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %82)
  br label %234

84:                                               ; preds = %61
  %85 = load %struct.iscsi_bhs_r2t*, %struct.iscsi_bhs_r2t** %5, align 8
  %86 = getelementptr inbounds %struct.iscsi_bhs_r2t, %struct.iscsi_bhs_r2t* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ntohl(i32 %87)
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %84
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %94 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ugt i64 %92, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %91, %84
  %98 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %101 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %98, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %99, i64 %102)
  %104 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %105 = call i32 @icl_pdu_free(%struct.icl_pdu* %104)
  %106 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %107 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %106)
  br label %234

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %230, %108
  %110 = load i64, i64* %11, align 8
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %113 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ugt i64 %111, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %118 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %10, align 8
  br label %120

120:                                              ; preds = %116, %109
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %121, %122
  %124 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %125 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ugt i64 %123, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %120
  %129 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %10, align 8
  %132 = add i64 %130, %131
  %133 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %134 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %129, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i64 %132, i64 %135)
  %137 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %138 = call i32 @icl_pdu_free(%struct.icl_pdu* %137)
  %139 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %140 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %139)
  br label %234

141:                                              ; preds = %120
  %142 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %143 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @M_NOWAIT, align 4
  %146 = call %struct.icl_pdu* @icl_pdu_new(i32 %144, i32 %145)
  store %struct.icl_pdu* %146, %struct.icl_pdu** %3, align 8
  %147 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %148 = icmp eq %struct.icl_pdu* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %141
  %150 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %151 = call i32 @icl_pdu_free(%struct.icl_pdu* %150)
  %152 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %153 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %152)
  br label %234

154:                                              ; preds = %141
  %155 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %156 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to %struct.iscsi_bhs_data_out*
  store %struct.iscsi_bhs_data_out* %158, %struct.iscsi_bhs_data_out** %6, align 8
  %159 = load i32, i32* @ISCSI_BHS_OPCODE_SCSI_DATA_OUT, align 4
  %160 = load %struct.iscsi_bhs_data_out*, %struct.iscsi_bhs_data_out** %6, align 8
  %161 = getelementptr inbounds %struct.iscsi_bhs_data_out, %struct.iscsi_bhs_data_out* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 4
  %162 = load %struct.iscsi_bhs_r2t*, %struct.iscsi_bhs_r2t** %5, align 8
  %163 = getelementptr inbounds %struct.iscsi_bhs_r2t, %struct.iscsi_bhs_r2t* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.iscsi_bhs_data_out*, %struct.iscsi_bhs_data_out** %6, align 8
  %166 = getelementptr inbounds %struct.iscsi_bhs_data_out, %struct.iscsi_bhs_data_out* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 8
  %167 = load %struct.iscsi_bhs_r2t*, %struct.iscsi_bhs_r2t** %5, align 8
  %168 = getelementptr inbounds %struct.iscsi_bhs_r2t, %struct.iscsi_bhs_r2t* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.iscsi_bhs_data_out*, %struct.iscsi_bhs_data_out** %6, align 8
  %171 = getelementptr inbounds %struct.iscsi_bhs_data_out, %struct.iscsi_bhs_data_out* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  %172 = load %struct.iscsi_bhs_r2t*, %struct.iscsi_bhs_r2t** %5, align 8
  %173 = getelementptr inbounds %struct.iscsi_bhs_r2t, %struct.iscsi_bhs_r2t* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.iscsi_bhs_data_out*, %struct.iscsi_bhs_data_out** %6, align 8
  %176 = getelementptr inbounds %struct.iscsi_bhs_data_out, %struct.iscsi_bhs_data_out* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  %177 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %7, align 8
  %178 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %178, align 8
  %181 = call i8* @htonl(i64 %179)
  %182 = load %struct.iscsi_bhs_data_out*, %struct.iscsi_bhs_data_out** %6, align 8
  %183 = getelementptr inbounds %struct.iscsi_bhs_data_out, %struct.iscsi_bhs_data_out* %182, i32 0, i32 2
  store i8* %181, i8** %183, align 8
  %184 = load i64, i64* %9, align 8
  %185 = call i8* @htonl(i64 %184)
  %186 = load %struct.iscsi_bhs_data_out*, %struct.iscsi_bhs_data_out** %6, align 8
  %187 = getelementptr inbounds %struct.iscsi_bhs_data_out, %struct.iscsi_bhs_data_out* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %189 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %190 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %9, align 8
  %193 = add i64 %191, %192
  %194 = load i64, i64* %10, align 8
  %195 = load i32, i32* @M_NOWAIT, align 4
  %196 = call i32 @icl_pdu_append_data(%struct.icl_pdu* %188, i64 %193, i64 %194, i32 %195)
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %154
  %200 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %201 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %200, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %202 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %203 = call i32 @icl_pdu_free(%struct.icl_pdu* %202)
  %204 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %205 = call i32 @icl_pdu_free(%struct.icl_pdu* %204)
  %206 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %207 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %206)
  br label %234

208:                                              ; preds = %154
  %209 = load i64, i64* %10, align 8
  %210 = load i64, i64* %9, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %9, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load i64, i64* %11, align 8
  %214 = sub i64 %213, %212
  store i64 %214, i64* %11, align 8
  %215 = load i64, i64* %11, align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %208
  %218 = load i32, i32* @BHSDO_FLAGS_F, align 4
  %219 = load %struct.iscsi_bhs_data_out*, %struct.iscsi_bhs_data_out** %6, align 8
  %220 = getelementptr inbounds %struct.iscsi_bhs_data_out, %struct.iscsi_bhs_data_out* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %224

223:                                              ; preds = %208
  br label %224

224:                                              ; preds = %223, %217
  %225 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %226 = call i32 @iscsi_pdu_queue_locked(%struct.icl_pdu* %225)
  %227 = load i64, i64* %11, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  br label %231

230:                                              ; preds = %224
  br label %109

231:                                              ; preds = %229
  %232 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %233 = call i32 @icl_pdu_free(%struct.icl_pdu* %232)
  br label %234

234:                                              ; preds = %231, %199, %149, %128, %97, %73, %54, %31
  ret void
}

declare dso_local %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local %struct.iscsi_outstanding* @iscsi_outstanding_find(%struct.iscsi_session*, i32) #1

declare dso_local i32 @ISCSI_SESSION_WARN(%struct.iscsi_session*, i8*, ...) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

declare dso_local i32 @iscsi_session_reconnect(%struct.iscsi_session*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local %struct.icl_pdu* @icl_pdu_new(i32, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @icl_pdu_append_data(%struct.icl_pdu*, i64, i64, i32) #1

declare dso_local i32 @iscsi_pdu_queue_locked(%struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
