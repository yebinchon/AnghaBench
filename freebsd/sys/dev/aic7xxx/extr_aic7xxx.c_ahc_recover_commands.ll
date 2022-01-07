; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_recover_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_recover_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.scb = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [72 x i8] c"%s: Timedout SCBs already complete. Interrupts may not be functioning.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: Recovery Initiated\0A\00", align 1
@LASTPHASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"SCB 0x%x - timed out\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"sg[%d] - Addr 0x%x : Length %d\0A\00", align 1
@AHC_SG_LEN_MASK = common dso_local global i32 0, align 4
@SCB_DEVICE_RESET = common dso_local global i32 0, align 4
@SCB_ABORT = common dso_local global i32 0, align 4
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"%s: Issued Channel %c Bus Reset. %d SCBs aborted\0A\00", align 1
@timedout_links = common dso_local global i32 0, align 4
@SCB_TIMEDOUT = common dso_local global i32 0, align 4
@SCBPTR = common dso_local global i32 0, align 4
@SCB_TAG = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@NOT_IDENTIFIED = common dso_local global i64 0, align 8
@SCB_TARGET_SCB = common dso_local global i32 0, align 4
@ROLE_TARGET = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@HOST_MSG = common dso_local global i64 0, align 8
@SCSISIGO = common dso_local global i32 0, align 4
@ATNO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"BDR message in message buffer\0A\00", align 1
@P_BUSFREE = common dso_local global i64 0, align 8
@SSTAT1 = common dso_local global i32 0, align 4
@REQINIT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [56 x i8] c"%s: Connection stuck awaiting busfree or Identify Msg.\0A\00", align 1
@SSTAT0 = common dso_local global i32 0, align 4
@TARGET = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"%s: Hung target selection\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Timed-out target SCB but bus idle\00", align 1
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@SEARCH_COUNT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i64 0, align 8
@DISCONNECTED = common dso_local global i64 0, align 8
@AHC_PAGESCBS = common dso_local global i32 0, align 4
@SCB_CONTROL = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@SEARCH_COMPLETE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Queuing a BDR SCB\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"SCB %d: Immediate reset.  Flags = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_recover_commands(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca %struct.scb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.scb*, align 8
  %14 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %16 = call i32 @ahc_pause_and_flushwork(%struct.ahc_softc* %15)
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %17, i32 0, i32 1
  %19 = call i64 @LIST_EMPTY(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %23 = call i8* @ahc_name(%struct.ahc_softc* %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %26 = call i32 @ahc_unpause(%struct.ahc_softc* %25)
  br label %399

27:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %29 = call i8* @ahc_name(%struct.ahc_softc* %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %32 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %31)
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %34 = load i32, i32* @LASTPHASE, align 4
  %35 = call i64 @ahc_inb(%struct.ahc_softc* %33, i32 %34)
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %163, %108, %27
  %37 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %37, i32 0, i32 1
  %39 = call %struct.scb* @LIST_FIRST(i32* %38)
  store %struct.scb* %39, %struct.scb** %3, align 8
  %40 = icmp ne %struct.scb* %39, null
  br i1 %40, label %41, label %374

41:                                               ; preds = %36
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %43 = load %struct.scb*, %struct.scb** %3, align 8
  %44 = call i32 @SCB_GET_TARGET(%struct.ahc_softc* %42, %struct.scb* %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %46 = load %struct.scb*, %struct.scb** %3, align 8
  %47 = call signext i8 @SCB_GET_CHANNEL(%struct.ahc_softc* %45, %struct.scb* %46)
  store i8 %47, i8* %12, align 1
  %48 = load %struct.scb*, %struct.scb** %3, align 8
  %49 = call i32 @SCB_GET_LUN(%struct.scb* %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %51 = load %struct.scb*, %struct.scb** %3, align 8
  %52 = call i32 @ahc_print_path(%struct.ahc_softc* %50, %struct.scb* %51)
  %53 = load %struct.scb*, %struct.scb** %3, align 8
  %54 = getelementptr inbounds %struct.scb, %struct.scb* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.scb*, %struct.scb** %3, align 8
  %60 = getelementptr inbounds %struct.scb, %struct.scb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %91, %63
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.scb*, %struct.scb** %3, align 8
  %67 = getelementptr inbounds %struct.scb, %struct.scb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.scb*, %struct.scb** %3, align 8
  %73 = getelementptr inbounds %struct.scb, %struct.scb* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.scb*, %struct.scb** %3, align 8
  %81 = getelementptr inbounds %struct.scb, %struct.scb* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AHC_SG_LEN_MASK, align 4
  %89 = and i32 %87, %88
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %79, i32 %89)
  br label %91

91:                                               ; preds = %70
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %64

94:                                               ; preds = %64
  br label %95

95:                                               ; preds = %94, %41
  %96 = load %struct.scb*, %struct.scb** %3, align 8
  %97 = getelementptr inbounds %struct.scb, %struct.scb* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %100 = load i32, i32* @SCB_ABORT, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %95
  %105 = load %struct.scb*, %struct.scb** %3, align 8
  %106 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %107 = call i32 @aic_set_transaction_status(%struct.scb* %105, i32 %106)
  br label %108

108:                                              ; preds = %355, %225, %162, %104
  %109 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %110 = load i8, i8* %12, align 1
  %111 = load i32, i32* @TRUE, align 4
  %112 = call i32 @ahc_reset_channel(%struct.ahc_softc* %109, i8 signext %110, i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %114 = call i8* @ahc_name(%struct.ahc_softc* %113)
  %115 = load i8, i8* %12, align 1
  %116 = sext i8 %115 to i32
  %117 = load i32, i32* %4, align 4
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %114, i32 %116, i32 %117)
  br label %36

119:                                              ; preds = %95
  %120 = load %struct.scb*, %struct.scb** %3, align 8
  %121 = load i32, i32* @timedout_links, align 4
  %122 = call i32 @LIST_REMOVE(%struct.scb* %120, i32 %121)
  %123 = load i32, i32* @SCB_TIMEDOUT, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.scb*, %struct.scb** %3, align 8
  %126 = getelementptr inbounds %struct.scb, %struct.scb* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %130 = load i32, i32* @SCBPTR, align 4
  %131 = call i64 @ahc_inb(%struct.ahc_softc* %129, i32 %130)
  store i64 %131, i64* %8, align 8
  %132 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %133 = load i32, i32* @SCB_TAG, align 4
  %134 = call i64 @ahc_inb(%struct.ahc_softc* %132, i32 %133)
  store i64 %134, i64* %7, align 8
  %135 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %136 = load i32, i32* @SEQ_FLAGS, align 4
  %137 = call i64 @ahc_inb(%struct.ahc_softc* %135, i32 %136)
  %138 = load i64, i64* @NOT_IDENTIFIED, align 8
  %139 = and i64 %137, %138
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %214

141:                                              ; preds = %119
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %144 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %143, i32 0, i32 2
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %142, %147
  br i1 %148, label %149, label %214

149:                                              ; preds = %141
  %150 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %151 = load i64, i64* %7, align 8
  %152 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %150, i64 %151)
  store %struct.scb* %152, %struct.scb** %13, align 8
  %153 = load %struct.scb*, %struct.scb** %13, align 8
  %154 = load %struct.scb*, %struct.scb** %3, align 8
  %155 = icmp ne %struct.scb* %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %158 = load %struct.scb*, %struct.scb** %3, align 8
  %159 = load %struct.scb*, %struct.scb** %13, align 8
  %160 = call i64 @ahc_other_scb_timeout(%struct.ahc_softc* %157, %struct.scb* %158, %struct.scb* %159)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %108

163:                                              ; preds = %156
  br label %36

164:                                              ; preds = %149
  %165 = load %struct.scb*, %struct.scb** %3, align 8
  %166 = getelementptr inbounds %struct.scb, %struct.scb* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SCB_TARGET_SCB, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %164
  %172 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %173 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %174 = load %struct.scb*, %struct.scb** %3, align 8
  %175 = call i32 @SCB_GET_TARGET(%struct.ahc_softc* %173, %struct.scb* %174)
  %176 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %177 = load %struct.scb*, %struct.scb** %3, align 8
  %178 = call signext i8 @SCB_GET_CHANNEL(%struct.ahc_softc* %176, %struct.scb* %177)
  %179 = load %struct.scb*, %struct.scb** %3, align 8
  %180 = call i32 @SCB_GET_LUN(%struct.scb* %179)
  %181 = load %struct.scb*, %struct.scb** %3, align 8
  %182 = getelementptr inbounds %struct.scb, %struct.scb* %181, i32 0, i32 2
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @ROLE_TARGET, align 4
  %187 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %188 = call i32 @ahc_abort_scbs(%struct.ahc_softc* %172, i32 %175, i8 signext %178, i32 %180, i32 %185, i32 %186, i32 %187)
  store i32 1, i32* %5, align 4
  br label %374

189:                                              ; preds = %164
  %190 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %191 = load %struct.scb*, %struct.scb** %13, align 8
  %192 = call i32 @ahc_set_recoveryscb(%struct.ahc_softc* %190, %struct.scb* %191)
  %193 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %194 = load i32, i32* @MSG_OUT, align 4
  %195 = load i64, i64* @HOST_MSG, align 8
  %196 = call i32 @ahc_outb(%struct.ahc_softc* %193, i32 %194, i64 %195)
  %197 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %198 = load i32, i32* @SCSISIGO, align 4
  %199 = load i64, i64* %6, align 8
  %200 = load i64, i64* @ATNO, align 8
  %201 = or i64 %199, %200
  %202 = call i32 @ahc_outb(%struct.ahc_softc* %197, i32 %198, i64 %201)
  %203 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %204 = load %struct.scb*, %struct.scb** %13, align 8
  %205 = call i32 @ahc_print_path(%struct.ahc_softc* %203, %struct.scb* %204)
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %207 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %208 = load %struct.scb*, %struct.scb** %13, align 8
  %209 = getelementptr inbounds %struct.scb, %struct.scb* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  %212 = load %struct.scb*, %struct.scb** %3, align 8
  %213 = call i32 @aic_scb_timer_reset(%struct.scb* %212, i32 2000)
  br label %373

214:                                              ; preds = %141, %119
  %215 = load i64, i64* %6, align 8
  %216 = load i64, i64* @P_BUSFREE, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %214
  %219 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %220 = load i32, i32* @SSTAT1, align 4
  %221 = call i64 @ahc_inb(%struct.ahc_softc* %219, i32 %220)
  %222 = load i64, i64* @REQINIT, align 8
  %223 = and i64 %221, %222
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %227 = call i8* @ahc_name(%struct.ahc_softc* %226)
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i8* %227)
  br label %108

229:                                              ; preds = %218, %214
  %230 = load i64, i64* %6, align 8
  %231 = load i64, i64* @P_BUSFREE, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %229
  %234 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %235 = load i32, i32* @SSTAT0, align 4
  %236 = call i64 @ahc_inb(%struct.ahc_softc* %234, i32 %235)
  %237 = load i64, i64* @TARGET, align 8
  %238 = and i64 %236, %237
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %233
  %241 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %242 = call i8* @ahc_name(%struct.ahc_softc* %241)
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %242)
  store i32 1, i32* %5, align 4
  br label %374

244:                                              ; preds = %233, %229
  %245 = load %struct.scb*, %struct.scb** %3, align 8
  %246 = getelementptr inbounds %struct.scb, %struct.scb* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @SCB_TARGET_SCB, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %244
  %252 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %244
  %254 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %255 = load i32, i32* %9, align 4
  %256 = load i8, i8* %12, align 1
  %257 = load i32, i32* %10, align 4
  %258 = load %struct.scb*, %struct.scb** %3, align 8
  %259 = getelementptr inbounds %struct.scb, %struct.scb* %258, i32 0, i32 2
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @ROLE_INITIATOR, align 4
  %264 = load i32, i32* @SEARCH_COUNT, align 4
  %265 = call i64 @ahc_search_qinfifo(%struct.ahc_softc* %254, i32 %255, i8 signext %256, i32 %257, i32 %262, i32 %263, i32 0, i32 %264)
  %266 = icmp sgt i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %253
  %268 = load i32, i32* @FALSE, align 4
  store i32 %268, i32* %14, align 4
  br label %271

269:                                              ; preds = %253
  %270 = load i32, i32* @TRUE, align 4
  store i32 %270, i32* %14, align 4
  br label %271

271:                                              ; preds = %269, %267
  %272 = load i32, i32* %14, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %355

274:                                              ; preds = %271
  %275 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %276 = load %struct.scb*, %struct.scb** %3, align 8
  %277 = call i32 @ahc_set_recoveryscb(%struct.ahc_softc* %275, %struct.scb* %276)
  %278 = load i64, i64* @MK_MESSAGE, align 8
  %279 = load i64, i64* @DISCONNECTED, align 8
  %280 = or i64 %278, %279
  %281 = load %struct.scb*, %struct.scb** %3, align 8
  %282 = getelementptr inbounds %struct.scb, %struct.scb* %281, i32 0, i32 2
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = or i64 %285, %280
  store i64 %286, i64* %284, align 8
  %287 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %288 = load %struct.scb*, %struct.scb** %3, align 8
  %289 = getelementptr inbounds %struct.scb, %struct.scb* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 4
  %292 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %293 = load i32, i32* %9, align 4
  %294 = load i8, i8* %12, align 1
  %295 = load i32, i32* %10, align 4
  %296 = load %struct.scb*, %struct.scb** %3, align 8
  %297 = getelementptr inbounds %struct.scb, %struct.scb* %296, i32 0, i32 2
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @TRUE, align 4
  %302 = load i32, i32* @TRUE, align 4
  %303 = load i32, i32* @FALSE, align 4
  %304 = call i32 @ahc_search_disc_list(%struct.ahc_softc* %292, i32 %293, i8 signext %294, i32 %295, i32 %300, i32 %301, i32 %302, i32 %303)
  %305 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %306 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @AHC_PAGESCBS, align 4
  %309 = and i32 %307, %308
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %329

311:                                              ; preds = %274
  %312 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %313 = load i32, i32* @SCBPTR, align 4
  %314 = load %struct.scb*, %struct.scb** %3, align 8
  %315 = getelementptr inbounds %struct.scb, %struct.scb* %314, i32 0, i32 2
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = sext i32 %318 to i64
  %320 = call i32 @ahc_outb(%struct.ahc_softc* %312, i32 %313, i64 %319)
  %321 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %322 = load i32, i32* @SCB_CONTROL, align 4
  %323 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %324 = load i32, i32* @SCB_CONTROL, align 4
  %325 = call i64 @ahc_inb(%struct.ahc_softc* %323, i32 %324)
  %326 = load i64, i64* @MK_MESSAGE, align 8
  %327 = or i64 %325, %326
  %328 = call i32 @ahc_outb(%struct.ahc_softc* %321, i32 %322, i64 %327)
  br label %329

329:                                              ; preds = %311, %274
  %330 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %331 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %332 = load %struct.scb*, %struct.scb** %3, align 8
  %333 = call i32 @SCB_GET_TARGET(%struct.ahc_softc* %331, %struct.scb* %332)
  %334 = load i8, i8* %12, align 1
  %335 = load %struct.scb*, %struct.scb** %3, align 8
  %336 = call i32 @SCB_GET_LUN(%struct.scb* %335)
  %337 = load i32, i32* @SCB_LIST_NULL, align 4
  %338 = load i32, i32* @ROLE_INITIATOR, align 4
  %339 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %340 = load i32, i32* @SEARCH_COMPLETE, align 4
  %341 = call i64 @ahc_search_qinfifo(%struct.ahc_softc* %330, i32 %333, i8 signext %334, i32 %336, i32 %337, i32 %338, i32 %339, i32 %340)
  %342 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %343 = load %struct.scb*, %struct.scb** %3, align 8
  %344 = call i32 @ahc_print_path(%struct.ahc_softc* %342, %struct.scb* %343)
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %346 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %347 = load %struct.scb*, %struct.scb** %3, align 8
  %348 = call i32 @ahc_qinfifo_requeue_tail(%struct.ahc_softc* %346, %struct.scb* %347)
  %349 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %350 = load i32, i32* @SCBPTR, align 4
  %351 = load i64, i64* %8, align 8
  %352 = call i32 @ahc_outb(%struct.ahc_softc* %349, i32 %350, i64 %351)
  %353 = load %struct.scb*, %struct.scb** %3, align 8
  %354 = call i32 @aic_scb_timer_reset(%struct.scb* %353, i32 2000)
  br label %371

355:                                              ; preds = %271
  %356 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %357 = load %struct.scb*, %struct.scb** %3, align 8
  %358 = call i32 @ahc_set_recoveryscb(%struct.ahc_softc* %356, %struct.scb* %357)
  %359 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %360 = load %struct.scb*, %struct.scb** %3, align 8
  %361 = call i32 @ahc_print_path(%struct.ahc_softc* %359, %struct.scb* %360)
  %362 = load %struct.scb*, %struct.scb** %3, align 8
  %363 = getelementptr inbounds %struct.scb, %struct.scb* %362, i32 0, i32 2
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.scb*, %struct.scb** %3, align 8
  %368 = getelementptr inbounds %struct.scb, %struct.scb* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %366, i32 %369)
  br label %108

371:                                              ; preds = %329
  br label %372

372:                                              ; preds = %371
  br label %373

373:                                              ; preds = %372, %189
  br label %374

374:                                              ; preds = %373, %240, %171, %36
  br label %375

375:                                              ; preds = %380, %374
  %376 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %377 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %376, i32 0, i32 1
  %378 = call %struct.scb* @LIST_FIRST(i32* %377)
  store %struct.scb* %378, %struct.scb** %3, align 8
  %379 = icmp ne %struct.scb* %378, null
  br i1 %379, label %380, label %390

380:                                              ; preds = %375
  %381 = load %struct.scb*, %struct.scb** %3, align 8
  %382 = load i32, i32* @timedout_links, align 4
  %383 = call i32 @LIST_REMOVE(%struct.scb* %381, i32 %382)
  %384 = load i32, i32* @SCB_TIMEDOUT, align 4
  %385 = xor i32 %384, -1
  %386 = load %struct.scb*, %struct.scb** %3, align 8
  %387 = getelementptr inbounds %struct.scb, %struct.scb* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = and i32 %388, %385
  store i32 %389, i32* %387, align 4
  br label %375

390:                                              ; preds = %375
  %391 = load i32, i32* %5, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %395 = call i32 @ahc_restart(%struct.ahc_softc* %394)
  br label %399

396:                                              ; preds = %390
  %397 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %398 = call i32 @ahc_unpause(%struct.ahc_softc* %397)
  br label %399

399:                                              ; preds = %21, %396, %393
  ret void
}

declare dso_local i32 @ahc_pause_and_flushwork(%struct.ahc_softc*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_dump_card_state(%struct.ahc_softc*) #1

declare dso_local i64 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local %struct.scb* @LIST_FIRST(i32*) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local signext i8 @SCB_GET_CHANNEL(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @ahc_print_path(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @aic_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahc_reset_channel(%struct.ahc_softc*, i8 signext, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.scb*, i32) #1

declare dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc*, i64) #1

declare dso_local i64 @ahc_other_scb_timeout(%struct.ahc_softc*, %struct.scb*, %struct.scb*) #1

declare dso_local i32 @ahc_abort_scbs(%struct.ahc_softc*, i32, i8 signext, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_set_recoveryscb(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i64) #1

declare dso_local i32 @aic_scb_timer_reset(%struct.scb*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ahc_search_qinfifo(%struct.ahc_softc*, i32, i8 signext, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_search_disc_list(%struct.ahc_softc*, i32, i8 signext, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_qinfifo_requeue_tail(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_restart(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
