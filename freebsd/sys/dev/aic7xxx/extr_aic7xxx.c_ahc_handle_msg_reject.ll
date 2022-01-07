; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_handle_msg_reject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_handle_msg_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ahc_softc = type { i32, %struct.scb_tailq*, i64, i64 }
%struct.scb_tailq = type { i32 }
%struct.ahc_devinfo = type { i32, i32, i32, i64, i32 }
%struct.scb = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ahc_initiator_tinfo = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.ahc_tmode_tstate = type { i32 }

@SCB_TAG = common dso_local global i32 0, align 4
@LAST_MSG = common dso_local global i32 0, align 4
@AHCMSG_EXT = common dso_local global i32 0, align 4
@MSG_EXT_PPR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"(%s:%c:%d:%d): PPR Rejected. Trying WDTR/SDTR\0A\00", align 1
@MSG_EXT_WDTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"(%s:%c:%d:%d): refuses WIDE negotiation.  Using 8bit transfers\0A\00", align 1
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHC_TRANS_ACTIVE = common dso_local global i32 0, align 4
@AHC_TRANS_GOAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MSG_EXT_SDTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"(%s:%c:%d:%d): refuses synchronous negotiation. Using asynchronous transfers\0A\00", align 1
@MSG_SIMPLE_TASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"(%s:%c:%d:%d): refuses tagged commands.  Performing non-tagged I/O\0A\00", align 1
@AHC_QUEUE_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [85 x i8] c"(%s:%c:%d:%d): refuses %s tagged commands.  Performing simple queue tagged I/O only\0A\00", align 1
@MSG_ORDERED_TASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"head of queue\00", align 1
@AHC_QUEUE_BASIC = common dso_local global i32 0, align 4
@SCB_CONTROL = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@MSG_IDENTIFYFLAG = common dso_local global i32 0, align 4
@AHC_SCB_BTT = common dso_local global i32 0, align 4
@links = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SCB_UNTAGGEDQ = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@SEARCH_COMPLETE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"%s:%c:%d: Message reject for %x -- ignored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*, %struct.ahc_devinfo*)* @ahc_handle_msg_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_handle_msg_reject(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.ahc_devinfo*, align 8
  %5 = alloca %struct.scb*, align 8
  %6 = alloca %struct.ahc_initiator_tinfo*, align 8
  %7 = alloca %struct.ahc_tmode_tstate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scb_tailq*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %4, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %15 = load i32, i32* @SCB_TAG, align 4
  %16 = call i32 @ahc_inb(%struct.ahc_softc* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %17, i32 %18)
  store %struct.scb* %19, %struct.scb** %5, align 8
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %21 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %25 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %28 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %20, i32 %23, i32 %26, i32 %29, %struct.ahc_tmode_tstate** %7)
  store %struct.ahc_initiator_tinfo* %30, %struct.ahc_initiator_tinfo** %6, align 8
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %32 = load i32, i32* @LAST_MSG, align 4
  %33 = call i32 @ahc_inb(%struct.ahc_softc* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %35 = load i32, i32* @AHCMSG_EXT, align 4
  %36 = load i32, i32* @MSG_EXT_PPR, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i64 @ahc_sent_msg(%struct.ahc_softc* %34, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %2
  %41 = load i64, i64* @bootverbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %45 = call i8* @ahc_name(%struct.ahc_softc* %44)
  %46 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %47 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %50 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %53 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %48, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %43, %40
  %57 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %6, align 8
  %58 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %6, align 8
  %61 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 2, i32* %62, align 8
  %63 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %6, align 8
  %64 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 2, i32* %65, align 8
  %66 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %71 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %72 = call i32 @ahc_build_transfer_msg(%struct.ahc_softc* %70, %struct.ahc_devinfo* %71)
  %73 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  store i32 1, i32* %10, align 4
  br label %303

75:                                               ; preds = %2
  %76 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %77 = load i32, i32* @AHCMSG_EXT, align 4
  %78 = load i32, i32* @MSG_EXT_WDTR, align 4
  %79 = load i32, i32* @FALSE, align 4
  %80 = call i64 @ahc_sent_msg(%struct.ahc_softc* %76, i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %123

82:                                               ; preds = %75
  %83 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %84 = call i8* @ahc_name(%struct.ahc_softc* %83)
  %85 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %86 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %89 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %92 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %84, i32 %87, i32 %90, i32 %93)
  %95 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %96 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %97 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %98 = load i32, i32* @AHC_TRANS_ACTIVE, align 4
  %99 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @TRUE, align 4
  %102 = call i32 @ahc_set_width(%struct.ahc_softc* %95, %struct.ahc_devinfo* %96, i32 %97, i32 %100, i32 %101)
  %103 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %6, align 8
  %104 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %6, align 8
  %108 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %106, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %82
  %113 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %116 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %118 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %119 = call i32 @ahc_build_transfer_msg(%struct.ahc_softc* %117, %struct.ahc_devinfo* %118)
  %120 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %121 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  store i32 1, i32* %10, align 4
  br label %122

122:                                              ; preds = %112, %82
  br label %302

123:                                              ; preds = %75
  %124 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %125 = load i32, i32* @AHCMSG_EXT, align 4
  %126 = load i32, i32* @MSG_EXT_SDTR, align 4
  %127 = load i32, i32* @FALSE, align 4
  %128 = call i64 @ahc_sent_msg(%struct.ahc_softc* %124, i32 %125, i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %123
  %131 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %132 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %133 = load i32, i32* @AHC_TRANS_ACTIVE, align 4
  %134 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @TRUE, align 4
  %137 = call i32 @ahc_set_syncrate(%struct.ahc_softc* %131, %struct.ahc_devinfo* %132, i32* null, i32 0, i32 0, i32 0, i32 %135, i32 %136)
  %138 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %139 = call i8* @ahc_name(%struct.ahc_softc* %138)
  %140 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %141 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %144 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %147 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i8*, i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i8* %139, i32 %142, i32 %145, i32 %148)
  br label %301

150:                                              ; preds = %123
  %151 = load %struct.scb*, %struct.scb** %5, align 8
  %152 = getelementptr inbounds %struct.scb, %struct.scb* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MSG_SIMPLE_TASK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %289

159:                                              ; preds = %150
  %160 = load %struct.scb*, %struct.scb** %5, align 8
  %161 = getelementptr inbounds %struct.scb, %struct.scb* %160, i32 0, i32 0
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @MSG_SIMPLE_TASK, align 4
  %166 = and i32 %164, %165
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @MSG_SIMPLE_TASK, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %187

170:                                              ; preds = %159
  %171 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %172 = call i8* @ahc_name(%struct.ahc_softc* %171)
  %173 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %174 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %177 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %180 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i8* %172, i32 %175, i32 %178, i32 %181)
  %183 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %184 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %185 = load i32, i32* @AHC_QUEUE_NONE, align 4
  %186 = call i32 @ahc_set_tags(%struct.ahc_softc* %183, %struct.ahc_devinfo* %184, i32 %185)
  store i32 -36, i32* %12, align 4
  br label %209

187:                                              ; preds = %159
  %188 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %189 = call i8* @ahc_name(%struct.ahc_softc* %188)
  %190 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %191 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %194 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %197 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @MSG_ORDERED_TASK, align 4
  %201 = icmp eq i32 %199, %200
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)
  %204 = call i32 (i8*, i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i8* %189, i32 %192, i32 %195, i32 %198, i8* %203)
  %205 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %206 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %207 = load i32, i32* @AHC_QUEUE_BASIC, align 4
  %208 = call i32 @ahc_set_tags(%struct.ahc_softc* %205, %struct.ahc_devinfo* %206, i32 %207)
  store i32 -4, i32* %12, align 4
  br label %209

209:                                              ; preds = %187, %170
  %210 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %211 = load i32, i32* @SCB_CONTROL, align 4
  %212 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %213 = load i32, i32* @SCB_CONTROL, align 4
  %214 = call i32 @ahc_inb(%struct.ahc_softc* %212, i32 %213)
  %215 = load i32, i32* %12, align 4
  %216 = and i32 %214, %215
  %217 = call i32 @ahc_outb(%struct.ahc_softc* %210, i32 %211, i32 %216)
  %218 = load i32, i32* %12, align 4
  %219 = load %struct.scb*, %struct.scb** %5, align 8
  %220 = getelementptr inbounds %struct.scb, %struct.scb* %219, i32 0, i32 0
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, %218
  store i32 %224, i32* %222, align 4
  %225 = load %struct.scb*, %struct.scb** %5, align 8
  %226 = load i32, i32* @FALSE, align 4
  %227 = load i32, i32* @MSG_SIMPLE_TASK, align 4
  %228 = call i32 @aic_set_transaction_tag(%struct.scb* %225, i32 %226, i32 %227)
  %229 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %230 = load i32, i32* @MSG_OUT, align 4
  %231 = load i32, i32* @MSG_IDENTIFYFLAG, align 4
  %232 = call i32 @ahc_outb(%struct.ahc_softc* %229, i32 %230, i32 %231)
  %233 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %234 = call i32 @ahc_assert_atn(%struct.ahc_softc* %233)
  %235 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %236 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @AHC_SCB_BTT, align 4
  %239 = and i32 %237, %238
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %258

241:                                              ; preds = %209
  %242 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %243 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %242, i32 0, i32 1
  %244 = load %struct.scb_tailq*, %struct.scb_tailq** %243, align 8
  %245 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %246 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.scb_tailq, %struct.scb_tailq* %244, i64 %247
  store %struct.scb_tailq* %248, %struct.scb_tailq** %13, align 8
  %249 = load %struct.scb_tailq*, %struct.scb_tailq** %13, align 8
  %250 = load %struct.scb*, %struct.scb** %5, align 8
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @links, i32 0, i32 0), align 4
  %252 = call i32 @TAILQ_INSERT_HEAD(%struct.scb_tailq* %249, %struct.scb* %250, i32 %251)
  %253 = load i32, i32* @SCB_UNTAGGEDQ, align 4
  %254 = load %struct.scb*, %struct.scb** %5, align 8
  %255 = getelementptr inbounds %struct.scb, %struct.scb* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 8
  br label %258

258:                                              ; preds = %241, %209
  %259 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %260 = load %struct.scb*, %struct.scb** %5, align 8
  %261 = getelementptr inbounds %struct.scb, %struct.scb* %260, i32 0, i32 0
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %266 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @BUILD_TCL(i32 %264, i32 %267)
  %269 = load %struct.scb*, %struct.scb** %5, align 8
  %270 = getelementptr inbounds %struct.scb, %struct.scb* %269, i32 0, i32 0
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @ahc_busy_tcl(%struct.ahc_softc* %259, i32 %268, i32 %273)
  %275 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %276 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %277 = load %struct.scb*, %struct.scb** %5, align 8
  %278 = call i32 @SCB_GET_TARGET(%struct.ahc_softc* %276, %struct.scb* %277)
  %279 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %280 = load %struct.scb*, %struct.scb** %5, align 8
  %281 = call i32 @SCB_GET_CHANNEL(%struct.ahc_softc* %279, %struct.scb* %280)
  %282 = load %struct.scb*, %struct.scb** %5, align 8
  %283 = call i32 @SCB_GET_LUN(%struct.scb* %282)
  %284 = load i32, i32* @SCB_LIST_NULL, align 4
  %285 = load i32, i32* @ROLE_INITIATOR, align 4
  %286 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %287 = load i32, i32* @SEARCH_COMPLETE, align 4
  %288 = call i32 @ahc_search_qinfifo(%struct.ahc_softc* %275, i32 %278, i32 %281, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287)
  br label %300

289:                                              ; preds = %150
  %290 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %291 = call i8* @ahc_name(%struct.ahc_softc* %290)
  %292 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %293 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %296 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %9, align 4
  %299 = call i32 (i8*, i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %291, i32 %294, i32 %297, i32 %298)
  br label %300

300:                                              ; preds = %289, %258
  br label %301

301:                                              ; preds = %300, %130
  br label %302

302:                                              ; preds = %301, %122
  br label %303

303:                                              ; preds = %302, %56
  %304 = load i32, i32* %10, align 4
  ret i32 %304
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc*, i32) #1

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i32, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i64 @ahc_sent_msg(%struct.ahc_softc*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, ...) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_build_transfer_msg(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @ahc_set_width(%struct.ahc_softc*, %struct.ahc_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahc_set_syncrate(%struct.ahc_softc*, %struct.ahc_devinfo*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_set_tags(%struct.ahc_softc*, %struct.ahc_devinfo*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @aic_set_transaction_tag(%struct.scb*, i32, i32) #1

declare dso_local i32 @ahc_assert_atn(%struct.ahc_softc*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct.scb_tailq*, %struct.scb*, i32) #1

declare dso_local i32 @ahc_busy_tcl(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @BUILD_TCL(i32, i32) #1

declare dso_local i32 @ahc_search_qinfifo(%struct.ahc_softc*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_CHANNEL(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
