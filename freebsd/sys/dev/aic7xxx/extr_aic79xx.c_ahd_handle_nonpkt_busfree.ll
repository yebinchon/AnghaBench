; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_handle_nonpkt_busfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_handle_nonpkt_busfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32*, i32 }
%struct.ahd_devinfo = type { i32, i32, i32 }
%struct.scb = type { i32, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ahd_tmode_tstate = type { i32 }
%struct.TYPE_12__ = type { i8* }

@LASTPHASE = common dso_local global i32 0, align 4
@SAVED_SCSIID = common dso_local global i32 0, align 4
@SAVED_LUN = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@NOT_IDENTIFIED = common dso_local global i64 0, align 8
@MSG_FLAG_EXPECT_PPR_BUSFREE = common dso_local global i32 0, align 4
@P_MESGOUT = common dso_local global i64 0, align 8
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@AHDMSG_1B = common dso_local global i32 0, align 4
@MSG_ABORT_TAG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MSG_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Abort for unidentified connection completed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SCB %d - Abort%s Completed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" Tag\00", align 1
@SCB_CMDPHASE_ABORT = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"found == 0x%x\0A\00", align 1
@MSG_BUS_DEV_RESET = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_BDR_SENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Bus Device Reset\00", align 1
@AHDMSG_EXT = common dso_local global i32 0, align 4
@MSG_EXT_PPR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHD_TRANS_CUR = common dso_local global i32 0, align 4
@MSG_EXT_WDTR = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@MSG_EXT_SDTR = common dso_local global i32 0, align 4
@MSG_FLAG_EXPECT_IDE_BUSFREE = common dso_local global i32 0, align 4
@MSG_INITIATOR_DET_ERR = common dso_local global i32 0, align 4
@MSG_FLAG_EXPECT_QASREJ_BUSFREE = common dso_local global i32 0, align 4
@MSG_MESSAGE_REJECT = common dso_local global i32 0, align 4
@P_MESGIN = common dso_local global i64 0, align 8
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@MSG_FLAG_IU_REQ_CHANGED = common dso_local global i32 0, align 4
@TAG_ENB = common dso_local global i32 0, align 4
@CAM_UNEXP_BUSFREE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Unexpected busfree %s, %d SCBs aborted, PRGMCNT == 0x%x\0A\00", align 1
@PRGMCNT = common dso_local global i32 0, align 4
@P_BUSFREE = common dso_local global i64 0, align 8
@AHD_SHOW_MESSAGES = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@XPT_RESET_DEV = common dso_local global i64 0, align 8
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*)* @ahd_handle_nonpkt_busfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_handle_nonpkt_busfree(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.ahd_devinfo, align 4
  %5 = alloca %struct.scb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ahd_initiator_tinfo*, align 8
  %18 = alloca %struct.ahd_tmode_tstate*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %22 = load i32, i32* @LASTPHASE, align 4
  %23 = call i64 @ahd_inb(%struct.ahd_softc* %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %25 = load i32, i32* @SAVED_SCSIID, align 4
  %26 = call i64 @ahd_inb(%struct.ahd_softc* %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %28 = load i32, i32* @SAVED_LUN, align 4
  %29 = call i64 @ahd_inb(%struct.ahd_softc* %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @SCSIID_TARGET(%struct.ahd_softc* %30, i64 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @SCSIID_OUR_ID(i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* @ROLE_INITIATOR, align 4
  %39 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %4, i64 %35, i64 %36, i64 %37, i8 signext 65, i32 %38)
  store i32 1, i32* %13, align 4
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %41 = call i64 @ahd_get_scbptr(%struct.ahd_softc* %40)
  store i64 %41, i64* %11, align 8
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %42, i64 %43)
  store %struct.scb* %44, %struct.scb** %5, align 8
  %45 = load %struct.scb*, %struct.scb** %5, align 8
  %46 = icmp ne %struct.scb* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %1
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %49 = load i32, i32* @SEQ_FLAGS, align 4
  %50 = call i64 @ahd_inb(%struct.ahd_softc* %48, i32 %49)
  %51 = load i64, i64* @NOT_IDENTIFIED, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store %struct.scb* null, %struct.scb** %5, align 8
  br label %55

55:                                               ; preds = %54, %47, %1
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MSG_FLAG_EXPECT_PPR_BUSFREE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @P_MESGOUT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %293

67:                                               ; preds = %55
  %68 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %68, i64* %14, align 8
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %70 = load i32, i32* @AHDMSG_1B, align 4
  %71 = load i32, i32* @MSG_ABORT_TAG, align 4
  %72 = load i32, i32* @TRUE, align 4
  %73 = call i64 @ahd_sent_msg(%struct.ahd_softc* %69, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %67
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %77 = load i32, i32* @AHDMSG_1B, align 4
  %78 = load i32, i32* @MSG_ABORT, align 4
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i64 @ahd_sent_msg(%struct.ahd_softc* %76, i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %144

82:                                               ; preds = %75, %67
  %83 = load %struct.scb*, %struct.scb** %5, align 8
  %84 = icmp eq %struct.scb* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %87 = call i32 @ahd_print_devinfo(%struct.ahd_softc* %86, %struct.ahd_devinfo* %4)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %404

89:                                               ; preds = %82
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %16, align 4
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %101 = load %struct.scb*, %struct.scb** %5, align 8
  %102 = call i32 @ahd_print_path(%struct.ahd_softc* %100, %struct.scb* %101)
  %103 = load %struct.scb*, %struct.scb** %5, align 8
  %104 = call i32 @SCB_GET_TAG(%struct.scb* %103)
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @MSG_ABORT_TAG, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %104, i8* %109)
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @MSG_ABORT_TAG, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %89
  %115 = load %struct.scb*, %struct.scb** %5, align 8
  %116 = call i32 @SCB_GET_TAG(%struct.scb* %115)
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %14, align 8
  br label %118

118:                                              ; preds = %114, %89
  %119 = load %struct.scb*, %struct.scb** %5, align 8
  %120 = getelementptr inbounds %struct.scb, %struct.scb* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SCB_CMDPHASE_ABORT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load %struct.scb*, %struct.scb** %5, align 8
  %127 = call i32 @SCB_GET_TAG(%struct.scb* %126)
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %14, align 8
  %129 = load %struct.scb*, %struct.scb** %5, align 8
  %130 = getelementptr inbounds %struct.scb, %struct.scb* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %125, %118
  %135 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load i64, i64* %14, align 8
  %139 = load i32, i32* @ROLE_INITIATOR, align 4
  %140 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %141 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %135, i64 %136, i8 signext 65, i64 %137, i64 %138, i32 %139, i32 %140)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  store i32 0, i32* %13, align 4
  br label %292

144:                                              ; preds = %75
  %145 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %146 = load i32, i32* @AHDMSG_1B, align 4
  %147 = load i32, i32* @MSG_BUS_DEV_RESET, align 4
  %148 = load i32, i32* @TRUE, align 4
  %149 = call i64 @ahd_sent_msg(%struct.ahd_softc* %145, i32 %146, i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %153 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %154 = load i32, i32* @CAM_BDR_SENT, align 4
  %155 = call i32 @ahd_handle_devreset(%struct.ahd_softc* %152, %struct.ahd_devinfo* %4, i32 %153, i32 %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store i32 0, i32* %13, align 4
  br label %291

156:                                              ; preds = %144
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %158 = load i32, i32* @AHDMSG_EXT, align 4
  %159 = load i32, i32* @MSG_EXT_PPR, align 4
  %160 = load i32, i32* @FALSE, align 4
  %161 = call i64 @ahd_sent_msg(%struct.ahd_softc* %157, i32 %158, i32 %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %209

163:                                              ; preds = %156
  %164 = load i64, i64* %12, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %209

166:                                              ; preds = %163
  %167 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %168 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %4, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %4, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %4, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %167, i32 %169, i32 %171, i32 %173, %struct.ahd_tmode_tstate** %18)
  store %struct.ahd_initiator_tinfo* %174, %struct.ahd_initiator_tinfo** %17, align 8
  %175 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %17, align 8
  %176 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %166
  %183 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %184 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %185 = load i32, i32* @AHD_TRANS_CUR, align 4
  %186 = load i32, i32* @TRUE, align 4
  %187 = call i32 @ahd_set_width(%struct.ahd_softc* %183, %struct.ahd_devinfo* %4, i32 %184, i32 %185, i32 %186)
  %188 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %189 = load i32, i32* @AHD_TRANS_CUR, align 4
  %190 = load i32, i32* @TRUE, align 4
  %191 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %188, %struct.ahd_devinfo* %4, i32 0, i32 0, i32 0, i32 %189, i32 %190)
  br label %208

192:                                              ; preds = %166
  %193 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %17, align 8
  %194 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  store i32 2, i32* %195, align 4
  %196 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %17, align 8
  %197 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  store i32 2, i32* %198, align 8
  %199 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %17, align 8
  %200 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  store i64 0, i64* %201, align 8
  %202 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %203 = load %struct.scb*, %struct.scb** %5, align 8
  %204 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %202, %struct.scb* %203)
  %205 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %206 = load %struct.scb*, %struct.scb** %5, align 8
  %207 = call i32 @ahd_qinfifo_requeue_tail(%struct.ahd_softc* %205, %struct.scb* %206)
  store i32 0, i32* %13, align 4
  br label %208

208:                                              ; preds = %192, %182
  br label %290

209:                                              ; preds = %163, %156
  %210 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %211 = load i32, i32* @AHDMSG_EXT, align 4
  %212 = load i32, i32* @MSG_EXT_WDTR, align 4
  %213 = load i32, i32* @FALSE, align 4
  %214 = call i64 @ahd_sent_msg(%struct.ahd_softc* %210, i32 %211, i32 %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %209
  %217 = load i64, i64* %12, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %216
  %220 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %221 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %222 = load i32, i32* @AHD_TRANS_CUR, align 4
  %223 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @TRUE, align 4
  %226 = call i32 @ahd_set_width(%struct.ahd_softc* %220, %struct.ahd_devinfo* %4, i32 %221, i32 %224, i32 %225)
  %227 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %228 = load %struct.scb*, %struct.scb** %5, align 8
  %229 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %227, %struct.scb* %228)
  %230 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %231 = load %struct.scb*, %struct.scb** %5, align 8
  %232 = call i32 @ahd_qinfifo_requeue_tail(%struct.ahd_softc* %230, %struct.scb* %231)
  store i32 0, i32* %13, align 4
  br label %289

233:                                              ; preds = %216, %209
  %234 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %235 = load i32, i32* @AHDMSG_EXT, align 4
  %236 = load i32, i32* @MSG_EXT_SDTR, align 4
  %237 = load i32, i32* @FALSE, align 4
  %238 = call i64 @ahd_sent_msg(%struct.ahd_softc* %234, i32 %235, i32 %236, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %256

240:                                              ; preds = %233
  %241 = load i64, i64* %12, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %256

243:                                              ; preds = %240
  %244 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %245 = load i32, i32* @AHD_TRANS_CUR, align 4
  %246 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @TRUE, align 4
  %249 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %244, %struct.ahd_devinfo* %4, i32 0, i32 0, i32 0, i32 %247, i32 %248)
  %250 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %251 = load %struct.scb*, %struct.scb** %5, align 8
  %252 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %250, %struct.scb* %251)
  %253 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %254 = load %struct.scb*, %struct.scb** %5, align 8
  %255 = call i32 @ahd_qinfifo_requeue_tail(%struct.ahd_softc* %253, %struct.scb* %254)
  store i32 0, i32* %13, align 4
  br label %288

256:                                              ; preds = %240, %233
  %257 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %258 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @MSG_FLAG_EXPECT_IDE_BUSFREE, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %256
  %264 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %265 = load i32, i32* @AHDMSG_1B, align 4
  %266 = load i32, i32* @MSG_INITIATOR_DET_ERR, align 4
  %267 = load i32, i32* @TRUE, align 4
  %268 = call i64 @ahd_sent_msg(%struct.ahd_softc* %264, i32 %265, i32 %266, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %263
  store i32 0, i32* %13, align 4
  br label %287

271:                                              ; preds = %263, %256
  %272 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %273 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @MSG_FLAG_EXPECT_QASREJ_BUSFREE, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %271
  %279 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %280 = load i32, i32* @AHDMSG_1B, align 4
  %281 = load i32, i32* @MSG_MESSAGE_REJECT, align 4
  %282 = load i32, i32* @TRUE, align 4
  %283 = call i64 @ahd_sent_msg(%struct.ahd_softc* %279, i32 %280, i32 %281, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %278
  store i32 0, i32* %13, align 4
  br label %286

286:                                              ; preds = %285, %278, %271
  br label %287

287:                                              ; preds = %286, %270
  br label %288

288:                                              ; preds = %287, %243
  br label %289

289:                                              ; preds = %288, %219
  br label %290

290:                                              ; preds = %289, %208
  br label %291

291:                                              ; preds = %290, %151
  br label %292

292:                                              ; preds = %291, %134
  br label %293

293:                                              ; preds = %292, %55
  %294 = load i32, i32* %13, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %345

296:                                              ; preds = %293
  %297 = load i64, i64* %6, align 8
  %298 = load i64, i64* @P_MESGIN, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %304, label %300

300:                                              ; preds = %296
  %301 = load i64, i64* %6, align 8
  %302 = load i64, i64* @P_MESGOUT, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %345

304:                                              ; preds = %300, %296
  %305 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %306 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @MSG_FLAG_EXPECT_PPR_BUSFREE, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %345

311:                                              ; preds = %304
  %312 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %313 = load %struct.scb*, %struct.scb** %5, align 8
  %314 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %312, %struct.scb* %313)
  %315 = load %struct.scb*, %struct.scb** %5, align 8
  %316 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %317 = call i32 @aic_set_transaction_status(%struct.scb* %315, i32 %316)
  %318 = load %struct.scb*, %struct.scb** %5, align 8
  %319 = call i32 @aic_freeze_scb(%struct.scb* %318)
  %320 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %321 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @MSG_FLAG_IU_REQ_CHANGED, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %340

326:                                              ; preds = %311
  %327 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %328 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %329 = load %struct.scb*, %struct.scb** %5, align 8
  %330 = call i64 @SCB_GET_TARGET(%struct.ahd_softc* %328, %struct.scb* %329)
  %331 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %332 = load %struct.scb*, %struct.scb** %5, align 8
  %333 = call signext i8 @SCB_GET_CHANNEL(%struct.ahd_softc* %331, %struct.scb* %332)
  %334 = load %struct.scb*, %struct.scb** %5, align 8
  %335 = call i64 @SCB_GET_LUN(%struct.scb* %334)
  %336 = load i64, i64* @SCB_LIST_NULL, align 8
  %337 = load i32, i32* @ROLE_INITIATOR, align 4
  %338 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %339 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %327, i64 %330, i8 signext %333, i64 %335, i64 %336, i32 %337, i32 %338)
  br label %344

340:                                              ; preds = %311
  %341 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %342 = load %struct.scb*, %struct.scb** %5, align 8
  %343 = call i32 @ahd_done(%struct.ahd_softc* %341, %struct.scb* %342)
  br label %344

344:                                              ; preds = %340, %326
  store i32 0, i32* %13, align 4
  br label %345

345:                                              ; preds = %344, %304, %300, %293
  %346 = load i32, i32* %13, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %403

348:                                              ; preds = %345
  store i32 0, i32* %19, align 4
  %349 = load %struct.scb*, %struct.scb** %5, align 8
  %350 = icmp ne %struct.scb* %349, null
  br i1 %350, label %351, label %378

351:                                              ; preds = %348
  %352 = load %struct.scb*, %struct.scb** %5, align 8
  %353 = getelementptr inbounds %struct.scb, %struct.scb* %352, i32 0, i32 1
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @TAG_ENB, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %351
  %361 = load %struct.scb*, %struct.scb** %5, align 8
  %362 = call i32 @SCB_GET_TAG(%struct.scb* %361)
  %363 = sext i32 %362 to i64
  store i64 %363, i64* %20, align 8
  br label %366

364:                                              ; preds = %351
  %365 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %365, i64* %20, align 8
  br label %366

366:                                              ; preds = %364, %360
  %367 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %368 = load %struct.scb*, %struct.scb** %5, align 8
  %369 = call i32 @ahd_print_path(%struct.ahd_softc* %367, %struct.scb* %368)
  %370 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %371 = load i64, i64* %9, align 8
  %372 = load %struct.scb*, %struct.scb** %5, align 8
  %373 = call i64 @SCB_GET_LUN(%struct.scb* %372)
  %374 = load i64, i64* %20, align 8
  %375 = load i32, i32* @ROLE_INITIATOR, align 4
  %376 = load i32, i32* @CAM_UNEXP_BUSFREE, align 4
  %377 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %370, i64 %371, i8 signext 65, i64 %373, i64 %374, i32 %375, i32 %376)
  store i32 %377, i32* %19, align 4
  br label %382

378:                                              ; preds = %348
  %379 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %380 = call i8* @ahd_name(%struct.ahd_softc* %379)
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %380)
  br label %382

382:                                              ; preds = %378, %366
  %383 = load i64, i64* %6, align 8
  %384 = call %struct.TYPE_12__* @ahd_lookup_phase_entry(i64 %383)
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 0
  %386 = load i8*, i8** %385, align 8
  %387 = load i32, i32* %19, align 4
  %388 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %389 = load i32, i32* @PRGMCNT, align 4
  %390 = call i32 @ahd_inw(%struct.ahd_softc* %388, i32 %389)
  %391 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i8* %386, i32 %387, i32 %390)
  %392 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %393 = call i32 @AHD_UNCORRECTABLE_ERROR(%struct.ahd_softc* %392)
  %394 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %395 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %394)
  %396 = load i64, i64* %6, align 8
  %397 = load i64, i64* @P_BUSFREE, align 8
  %398 = icmp ne i64 %396, %397
  br i1 %398, label %399, label %402

399:                                              ; preds = %382
  %400 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %401 = call i32 @ahd_force_renegotiation(%struct.ahd_softc* %400, %struct.ahd_devinfo* %4)
  br label %402

402:                                              ; preds = %399, %382
  br label %403

403:                                              ; preds = %402, %345
  store i32 1, i32* %2, align 4
  br label %404

404:                                              ; preds = %403, %85
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local i64 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i64 @SCSIID_TARGET(%struct.ahd_softc*, i64) #1

declare dso_local i64 @SCSIID_OUR_ID(i64) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i64, i64, i64, i8 signext, i32) #1

declare dso_local i64 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i64) #1

declare dso_local i64 @ahd_sent_msg(%struct.ahd_softc*, i32, i32, i32) #1

declare dso_local i32 @ahd_print_devinfo(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_abort_scbs(%struct.ahd_softc*, i64, i8 signext, i64, i64, i32, i32) #1

declare dso_local i32 @ahd_handle_devreset(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i8*, i32) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_freeze_devq(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_qinfifo_requeue_tail(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @aic_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @aic_freeze_scb(%struct.scb*) #1

declare dso_local i64 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local signext i8 @SCB_GET_CHANNEL(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i64 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @ahd_done(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local %struct.TYPE_12__* @ahd_lookup_phase_entry(i64) #1

declare dso_local i32 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local i32 @AHD_UNCORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_force_renegotiation(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
