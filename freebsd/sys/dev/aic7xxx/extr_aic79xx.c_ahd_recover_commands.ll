; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_recover_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_recover_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"%s: Recovery Initiated - Card was %spaused\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"%s: Timedout SCBs already complete. Interrupts may not be functioning.\0A\00", align 1
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@LASTPHASE = common dso_local global i32 0, align 4
@P_BUSFREE = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@NOT_IDENTIFIED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"SCB %d - timed out\0A\00", align 1
@SCB_DEVICE_RESET = common dso_local global i32 0, align 4
@SCB_ABORT = common dso_local global i32 0, align 4
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"%s: Issued Channel %c Bus Reset. %d SCBs aborted\0A\00", align 1
@timedout_links = common dso_local global i32 0, align 4
@SCB_TIMEDOUT = common dso_local global i32 0, align 4
@SCB_RECOVERY_SCB = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@HOST_MSG = common dso_local global i32 0, align 4
@SCSISIGO = common dso_local global i32 0, align 4
@ATNO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"BDR message in message buffer\0A\00", align 1
@SCSIPHASE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"%s: Connection stuck awaiting busfree or Identify Msg.\0A\00", align 1
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@SEARCH_COUNT = common dso_local global i32 0, align 4
@SIU_TASKMGMT_ABORT_TASK = common dso_local global i32 0, align 4
@SCB_PACKETIZED = common dso_local global i32 0, align 4
@SCB_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i32 0, align 4
@DISCONNECTED = common dso_local global i32 0, align 4
@SCB_CONTROL = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@SEARCH_COMPLETE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"Queuing a BDR SCB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_recover_commands(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.scb*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %13 = call i32 @ahd_is_paused(%struct.ahd_softc* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %15 = call i8* @ahd_name(%struct.ahd_softc* %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %19)
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %22 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %21)
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %24 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %23)
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %26 = call i32 @ahd_pause_and_flushwork(%struct.ahd_softc* %25)
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %27, i32 0, i32 0
  %29 = call i64 @LIST_EMPTY(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %33 = call i8* @ahd_name(%struct.ahd_softc* %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %36 = call i32 @ahd_unpause(%struct.ahd_softc* %35)
  br label %290

37:                                               ; preds = %1
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %39 = load i32, i32* @AHD_MODE_SCSI, align 4
  %40 = load i32, i32* @AHD_MODE_SCSI, align 4
  %41 = call i32 @ahd_set_modes(%struct.ahd_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %43 = load i32, i32* @LASTPHASE, align 4
  %44 = call i32 @ahd_inb(%struct.ahd_softc* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %46 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %45)
  store i32 %46, i32* %7, align 4
  store %struct.scb* null, %struct.scb** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @P_BUSFREE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %37
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %52 = load i32, i32* @SEQ_FLAGS, align 4
  %53 = call i32 @ahd_inb(%struct.ahd_softc* %51, i32 %52)
  %54 = load i32, i32* @NOT_IDENTIFIED, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50, %37
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %58, i32 %59)
  store %struct.scb* %60, %struct.scb** %4, align 8
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %270, %128, %94, %61
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %63, i32 0, i32 0
  %65 = call %struct.scb* @LIST_FIRST(i32* %64)
  store %struct.scb* %65, %struct.scb** %3, align 8
  %66 = icmp ne %struct.scb* %65, null
  br i1 %66, label %67, label %271

67:                                               ; preds = %62
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %69 = load %struct.scb*, %struct.scb** %3, align 8
  %70 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %68, %struct.scb* %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %72 = load %struct.scb*, %struct.scb** %3, align 8
  %73 = call signext i8 @SCB_GET_CHANNEL(%struct.ahd_softc* %71, %struct.scb* %72)
  store i8 %73, i8* %11, align 1
  %74 = load %struct.scb*, %struct.scb** %3, align 8
  %75 = call i32 @SCB_GET_LUN(%struct.scb* %74)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %77 = load %struct.scb*, %struct.scb** %3, align 8
  %78 = call i32 @ahd_print_path(%struct.ahd_softc* %76, %struct.scb* %77)
  %79 = load %struct.scb*, %struct.scb** %3, align 8
  %80 = call i32 @SCB_GET_TAG(%struct.scb* %79)
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load %struct.scb*, %struct.scb** %3, align 8
  %83 = getelementptr inbounds %struct.scb, %struct.scb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %86 = load i32, i32* @SCB_ABORT, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %67
  %91 = load %struct.scb*, %struct.scb** %3, align 8
  %92 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %93 = call i32 @aic_set_transaction_status(%struct.scb* %91, i32 %92)
  br label %94

94:                                               ; preds = %185, %165, %127, %90
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %96 = load i8, i8* %11, align 1
  %97 = load i32, i32* @TRUE, align 4
  %98 = call i32 @ahd_reset_channel(%struct.ahd_softc* %95, i8 signext %96, i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %100 = call i8* @ahd_name(%struct.ahd_softc* %99)
  %101 = load i8, i8* %11, align 1
  %102 = sext i8 %101 to i32
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %100, i32 %102, i32 %103)
  br label %62

105:                                              ; preds = %67
  %106 = load %struct.scb*, %struct.scb** %3, align 8
  %107 = load i32, i32* @timedout_links, align 4
  %108 = call i32 @LIST_REMOVE(%struct.scb* %106, i32 %107)
  %109 = load i32, i32* @SCB_TIMEDOUT, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.scb*, %struct.scb** %3, align 8
  %112 = getelementptr inbounds %struct.scb, %struct.scb* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.scb*, %struct.scb** %4, align 8
  %116 = icmp ne %struct.scb* %115, null
  br i1 %116, label %117, label %156

117:                                              ; preds = %105
  %118 = load %struct.scb*, %struct.scb** %4, align 8
  %119 = load %struct.scb*, %struct.scb** %3, align 8
  %120 = icmp ne %struct.scb* %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %123 = load %struct.scb*, %struct.scb** %3, align 8
  %124 = load %struct.scb*, %struct.scb** %4, align 8
  %125 = call i64 @ahd_other_scb_timeout(%struct.ahd_softc* %122, %struct.scb* %123, %struct.scb* %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %94

128:                                              ; preds = %121
  br label %62

129:                                              ; preds = %117
  %130 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %131 = load %struct.scb*, %struct.scb** %4, align 8
  %132 = call i32 @ahd_set_recoveryscb(%struct.ahd_softc* %130, %struct.scb* %131)
  %133 = load i32, i32* @SCB_RECOVERY_SCB, align 4
  %134 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.scb*, %struct.scb** %4, align 8
  %137 = getelementptr inbounds %struct.scb, %struct.scb* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %141 = load i32, i32* @MSG_OUT, align 4
  %142 = load i32, i32* @HOST_MSG, align 4
  %143 = call i32 @ahd_outb(%struct.ahd_softc* %140, i32 %141, i32 %142)
  %144 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %145 = load i32, i32* @SCSISIGO, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @ATNO, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @ahd_outb(%struct.ahd_softc* %144, i32 %145, i32 %148)
  %150 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %151 = load %struct.scb*, %struct.scb** %4, align 8
  %152 = call i32 @ahd_print_path(%struct.ahd_softc* %150, %struct.scb* %151)
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %154 = load %struct.scb*, %struct.scb** %3, align 8
  %155 = call i32 @aic_scb_timer_reset(%struct.scb* %154, i32 2000)
  br label %271

156:                                              ; preds = %105
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @P_BUSFREE, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %162 = load i32, i32* @SCSIPHASE, align 4
  %163 = call i32 @ahd_inb(%struct.ahd_softc* %161, i32 %162)
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %167 = call i8* @ahd_name(%struct.ahd_softc* %166)
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i8* %167)
  br label %94

169:                                              ; preds = %160, %156
  %170 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i8, i8* %11, align 1
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.scb*, %struct.scb** %3, align 8
  %175 = call i32 @SCB_GET_TAG(%struct.scb* %174)
  %176 = load i32, i32* @ROLE_INITIATOR, align 4
  %177 = load i32, i32* @SEARCH_COUNT, align 4
  %178 = call i64 @ahd_search_qinfifo(%struct.ahd_softc* %170, i32 %171, i8 signext %172, i32 %173, i32 %175, i32 %176, i32 0, i32 %177)
  %179 = icmp sgt i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %169
  %181 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %182 = load %struct.scb*, %struct.scb** %3, align 8
  %183 = call i64 @ahd_other_scb_timeout(%struct.ahd_softc* %181, %struct.scb* %182, %struct.scb* null)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %94

186:                                              ; preds = %180
  br label %268

187:                                              ; preds = %169
  %188 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %189 = load %struct.scb*, %struct.scb** %3, align 8
  %190 = call i32 @ahd_set_recoveryscb(%struct.ahd_softc* %188, %struct.scb* %189)
  %191 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %192 = load %struct.scb*, %struct.scb** %3, align 8
  %193 = getelementptr inbounds %struct.scb, %struct.scb* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  %196 = load %struct.scb*, %struct.scb** %3, align 8
  %197 = getelementptr inbounds %struct.scb, %struct.scb* %196, i32 0, i32 1
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 3
  store i64 0, i64* %199, align 8
  %200 = load %struct.scb*, %struct.scb** %3, align 8
  %201 = getelementptr inbounds %struct.scb, %struct.scb* %200, i32 0, i32 1
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 2
  store i64 0, i64* %203, align 8
  %204 = load i32, i32* @SIU_TASKMGMT_ABORT_TASK, align 4
  %205 = load %struct.scb*, %struct.scb** %3, align 8
  %206 = getelementptr inbounds %struct.scb, %struct.scb* %205, i32 0, i32 1
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  store i32 %204, i32* %208, align 8
  %209 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %210 = load %struct.scb*, %struct.scb** %3, align 8
  %211 = call i32 @SCB_GET_TAG(%struct.scb* %210)
  %212 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %209, i32 %211)
  %213 = load %struct.scb*, %struct.scb** %3, align 8
  %214 = getelementptr inbounds %struct.scb, %struct.scb* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @SCB_PACKETIZED, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %187
  %220 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %221 = load i32, i32* @SCB_TASK_MANAGEMENT, align 4
  %222 = load %struct.scb*, %struct.scb** %3, align 8
  %223 = getelementptr inbounds %struct.scb, %struct.scb* %222, i32 0, i32 1
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @ahd_outb(%struct.ahd_softc* %220, i32 %221, i32 %226)
  br label %246

228:                                              ; preds = %187
  %229 = load i32, i32* @MK_MESSAGE, align 4
  %230 = load i32, i32* @DISCONNECTED, align 4
  %231 = or i32 %229, %230
  %232 = load %struct.scb*, %struct.scb** %3, align 8
  %233 = getelementptr inbounds %struct.scb, %struct.scb* %232, i32 0, i32 1
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %231
  store i32 %237, i32* %235, align 4
  %238 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %239 = load i32, i32* @SCB_CONTROL, align 4
  %240 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %241 = load i32, i32* @SCB_CONTROL, align 4
  %242 = call i32 @ahd_inb(%struct.ahd_softc* %240, i32 %241)
  %243 = load i32, i32* @MK_MESSAGE, align 4
  %244 = or i32 %242, %243
  %245 = call i32 @ahd_outb(%struct.ahd_softc* %238, i32 %239, i32 %244)
  br label %246

246:                                              ; preds = %228, %219
  %247 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %248 = load i32, i32* %9, align 4
  %249 = load i8, i8* %11, align 1
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* @SCB_LIST_NULL, align 4
  %252 = load i32, i32* @ROLE_INITIATOR, align 4
  %253 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %254 = load i32, i32* @SEARCH_COMPLETE, align 4
  %255 = call i64 @ahd_search_qinfifo(%struct.ahd_softc* %247, i32 %248, i8 signext %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254)
  %256 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %257 = load %struct.scb*, %struct.scb** %3, align 8
  %258 = call i32 @ahd_qinfifo_requeue_tail(%struct.ahd_softc* %256, %struct.scb* %257)
  %259 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %259, i32 %260)
  %262 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %263 = load %struct.scb*, %struct.scb** %3, align 8
  %264 = call i32 @ahd_print_path(%struct.ahd_softc* %262, %struct.scb* %263)
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %266 = load %struct.scb*, %struct.scb** %3, align 8
  %267 = call i32 @aic_scb_timer_reset(%struct.scb* %266, i32 2000)
  br label %271

268:                                              ; preds = %186
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269
  br label %62

271:                                              ; preds = %246, %129, %62
  br label %272

272:                                              ; preds = %277, %271
  %273 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %274 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %273, i32 0, i32 0
  %275 = call %struct.scb* @LIST_FIRST(i32* %274)
  store %struct.scb* %275, %struct.scb** %3, align 8
  %276 = icmp ne %struct.scb* %275, null
  br i1 %276, label %277, label %287

277:                                              ; preds = %272
  %278 = load %struct.scb*, %struct.scb** %3, align 8
  %279 = load i32, i32* @timedout_links, align 4
  %280 = call i32 @LIST_REMOVE(%struct.scb* %278, i32 %279)
  %281 = load i32, i32* @SCB_TIMEDOUT, align 4
  %282 = xor i32 %281, -1
  %283 = load %struct.scb*, %struct.scb** %3, align 8
  %284 = getelementptr inbounds %struct.scb, %struct.scb* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = and i32 %285, %282
  store i32 %286, i32* %284, align 8
  br label %272

287:                                              ; preds = %272
  %288 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %289 = call i32 @ahd_unpause(%struct.ahd_softc* %288)
  br label %290

290:                                              ; preds = %287, %31
  ret void
}

declare dso_local i32 @ahd_is_paused(%struct.ahd_softc*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_pause_and_flushwork(%struct.ahd_softc*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local %struct.scb* @LIST_FIRST(i32*) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local signext i8 @SCB_GET_CHANNEL(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @aic_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_reset_channel(%struct.ahd_softc*, i8 signext, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.scb*, i32) #1

declare dso_local i64 @ahd_other_scb_timeout(%struct.ahd_softc*, %struct.scb*, %struct.scb*) #1

declare dso_local i32 @ahd_set_recoveryscb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @aic_scb_timer_reset(%struct.scb*, i32) #1

declare dso_local i64 @ahd_search_qinfifo(%struct.ahd_softc*, i32, i8 signext, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_qinfifo_requeue_tail(%struct.ahd_softc*, %struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
