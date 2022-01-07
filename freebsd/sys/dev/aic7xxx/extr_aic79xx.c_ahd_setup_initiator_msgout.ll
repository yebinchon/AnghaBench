; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_setup_initiator_msgout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_setup_initiator_msgout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32*, i8*, i64, i64, i32 }
%struct.ahd_devinfo = type { i32 }
%struct.scb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MSG_FLAG_PACKETIZED = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@HOST_MSG = common dso_local global i64 0, align 8
@MSG_TYPE_INITIATOR_MSGOUT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [63 x i8] c"%s: WARNING. No pending message for I_T msgin.  Issuing NO-OP\0A\00", align 1
@MSG_NOOP = common dso_local global i32 0, align 4
@SCB_DEVICE_RESET = common dso_local global i32 0, align 4
@SCB_PACKETIZED = common dso_local global i32 0, align 4
@MSG_IDENTIFYFLAG = common dso_local global i64 0, align 8
@DISCENB = common dso_local global i32 0, align 4
@MSG_IDENTIFY_DISCFLAG = common dso_local global i32 0, align 4
@TAG_ENB = common dso_local global i32 0, align 4
@SCB_TAG_TYPE = common dso_local global i32 0, align 4
@MSG_BUS_DEV_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Bus Device Reset Message Sent\0A\00", align 1
@SCSISEQ0 = common dso_local global i32 0, align 4
@SCB_ABORT = common dso_local global i32 0, align 4
@MSG_ABORT_TAG = common dso_local global i32 0, align 4
@MSG_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Abort%s Message Sent\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" Tag\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SCB_AUTO_NEGOTIATE = common dso_local global i32 0, align 4
@SCB_NEGOTIATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [72 x i8] c"ahd_intr: AWAITING_MSG for an SCB that does not have a waiting message\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"SCSIID = %x, target_mask = %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"SCB = %d, SCB Control = %x:%x, MSG_OUT = %x SCB flags = %x\00", align 1
@SCB_CONTROL = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i32 0, align 4
@AHD_SHOW_MESSAGES = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.scb*)* @ahd_setup_initiator_msgout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_setup_initiator_msgout(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1, %struct.scb* %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.ahd_devinfo*, align 8
  %6 = alloca %struct.scb*, align 8
  %7 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %5, align 8
  store %struct.scb* %2, %struct.scb** %6, align 8
  %8 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %13 = call i64 @ahd_currently_packetized(%struct.ahd_softc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @MSG_FLAG_PACKETIZED, align 4
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %28 = load i32, i32* @MSG_OUT, align 4
  %29 = call i64 @ahd_inb(%struct.ahd_softc* %27, i32 %28)
  %30 = load i64, i64* @HOST_MSG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %34 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %35, i32* %43, align 4
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load i8*, i8** @MSG_TYPE_INITIATOR_MSGOUT, align 8
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %331

51:                                               ; preds = %26, %21
  %52 = load %struct.scb*, %struct.scb** %6, align 8
  %53 = icmp eq %struct.scb* %52, null
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %56 = call i8* @ahd_name(%struct.ahd_softc* %55)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %59 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %58)
  %60 = load i32, i32* @MSG_NOOP, align 4
  %61 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %62 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %65 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %60, i32* %68, align 4
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %70 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load i8*, i8** @MSG_TYPE_INITIATOR_MSGOUT, align 8
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %75 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %331

76:                                               ; preds = %51
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.scb*, %struct.scb** %6, align 8
  %79 = getelementptr inbounds %struct.scb, %struct.scb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %170

84:                                               ; preds = %77
  %85 = load %struct.scb*, %struct.scb** %6, align 8
  %86 = getelementptr inbounds %struct.scb, %struct.scb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SCB_PACKETIZED, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %170

91:                                               ; preds = %84
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %93 = load i32, i32* @MSG_OUT, align 4
  %94 = call i64 @ahd_inb(%struct.ahd_softc* %92, i32 %93)
  %95 = load i64, i64* @MSG_IDENTIFYFLAG, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %170

97:                                               ; preds = %91
  %98 = load i64, i64* @MSG_IDENTIFYFLAG, align 8
  %99 = load %struct.scb*, %struct.scb** %6, align 8
  %100 = call i64 @SCB_GET_LUN(%struct.scb* %99)
  %101 = or i64 %98, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %7, align 4
  %103 = load %struct.scb*, %struct.scb** %6, align 8
  %104 = getelementptr inbounds %struct.scb, %struct.scb* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @DISCENB, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %97
  %112 = load i32, i32* @MSG_IDENTIFY_DISCFLAG, align 4
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %111, %97
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %118 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %121 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %116, i32* %124, align 4
  %125 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %126 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load %struct.scb*, %struct.scb** %6, align 8
  %130 = getelementptr inbounds %struct.scb, %struct.scb* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @TAG_ENB, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %169

137:                                              ; preds = %115
  %138 = load %struct.scb*, %struct.scb** %6, align 8
  %139 = getelementptr inbounds %struct.scb, %struct.scb* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @TAG_ENB, align 4
  %144 = load i32, i32* @SCB_TAG_TYPE, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %148 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %151 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %151, align 8
  %154 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %146, i32* %154, align 4
  %155 = load %struct.scb*, %struct.scb** %6, align 8
  %156 = call i32 @SCB_GET_TAG(%struct.scb* %155)
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %158 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %161 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* %161, align 8
  %164 = getelementptr inbounds i32, i32* %159, i64 %162
  store i32 %156, i32* %164, align 4
  %165 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %166 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 2
  store i64 %168, i64* %166, align 8
  br label %169

169:                                              ; preds = %137, %115
  br label %170

170:                                              ; preds = %169, %91, %84, %77
  %171 = load %struct.scb*, %struct.scb** %6, align 8
  %172 = getelementptr inbounds %struct.scb, %struct.scb* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %200

177:                                              ; preds = %170
  %178 = load i32, i32* @MSG_BUS_DEV_RESET, align 4
  %179 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %180 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %183 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %183, align 8
  %186 = getelementptr inbounds i32, i32* %181, i64 %184
  store i32 %178, i32* %186, align 4
  %187 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %188 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %188, align 8
  %191 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %192 = load %struct.scb*, %struct.scb** %6, align 8
  %193 = call i32 @ahd_print_path(%struct.ahd_softc* %191, %struct.scb* %192)
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %195 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %196 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %195)
  %197 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %198 = load i32, i32* @SCSISEQ0, align 4
  %199 = call i32 @ahd_outb(%struct.ahd_softc* %197, i32 %198, i32 0)
  br label %308

200:                                              ; preds = %170
  %201 = load %struct.scb*, %struct.scb** %6, align 8
  %202 = getelementptr inbounds %struct.scb, %struct.scb* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @SCB_ABORT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %260

207:                                              ; preds = %200
  %208 = load %struct.scb*, %struct.scb** %6, align 8
  %209 = getelementptr inbounds %struct.scb, %struct.scb* %208, i32 0, i32 1
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @TAG_ENB, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %207
  %217 = load i32, i32* @MSG_ABORT_TAG, align 4
  %218 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %219 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %222 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, 1
  store i64 %224, i64* %222, align 8
  %225 = getelementptr inbounds i32, i32* %220, i64 %223
  store i32 %217, i32* %225, align 4
  br label %236

226:                                              ; preds = %207
  %227 = load i32, i32* @MSG_ABORT, align 4
  %228 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %229 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %232 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %232, align 8
  %235 = getelementptr inbounds i32, i32* %230, i64 %233
  store i32 %227, i32* %235, align 4
  br label %236

236:                                              ; preds = %226, %216
  %237 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %238 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* %238, align 8
  %241 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %242 = load %struct.scb*, %struct.scb** %6, align 8
  %243 = call i32 @ahd_print_path(%struct.ahd_softc* %241, %struct.scb* %242)
  %244 = load %struct.scb*, %struct.scb** %6, align 8
  %245 = getelementptr inbounds %struct.scb, %struct.scb* %244, i32 0, i32 1
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @TAG_ENB, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %253)
  %255 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %256 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %255)
  %257 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %258 = load i32, i32* @SCSISEQ0, align 4
  %259 = call i32 @ahd_outb(%struct.ahd_softc* %257, i32 %258, i32 0)
  br label %307

260:                                              ; preds = %200
  %261 = load %struct.scb*, %struct.scb** %6, align 8
  %262 = getelementptr inbounds %struct.scb, %struct.scb* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @SCB_AUTO_NEGOTIATE, align 4
  %265 = load i32, i32* @SCB_NEGOTIATE, align 4
  %266 = or i32 %264, %265
  %267 = and i32 %263, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %260
  %270 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %271 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %272 = call i32 @ahd_build_transfer_msg(%struct.ahd_softc* %270, %struct.ahd_devinfo* %271)
  %273 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %274 = load i32, i32* @SCSISEQ0, align 4
  %275 = call i32 @ahd_outb(%struct.ahd_softc* %273, i32 %274, i32 0)
  br label %306

276:                                              ; preds = %260
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0))
  %278 = load %struct.scb*, %struct.scb** %6, align 8
  %279 = getelementptr inbounds %struct.scb, %struct.scb* %278, i32 0, i32 1
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %284 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %282, i32 %285)
  %287 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %288 = call i32 @AHD_FATAL_ERROR(%struct.ahd_softc* %287)
  %289 = load %struct.scb*, %struct.scb** %6, align 8
  %290 = call i32 @SCB_GET_TAG(%struct.scb* %289)
  %291 = load %struct.scb*, %struct.scb** %6, align 8
  %292 = getelementptr inbounds %struct.scb, %struct.scb* %291, i32 0, i32 1
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %297 = load i32, i32* @SCB_CONTROL, align 4
  %298 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %296, i32 %297)
  %299 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %300 = load i32, i32* @MSG_OUT, align 4
  %301 = call i64 @ahd_inb(%struct.ahd_softc* %299, i32 %300)
  %302 = load %struct.scb*, %struct.scb** %6, align 8
  %303 = getelementptr inbounds %struct.scb, %struct.scb* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @panic(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %290, i32 %295, i32 %298, i64 %301, i32 %304)
  br label %306

306:                                              ; preds = %276, %269
  br label %307

307:                                              ; preds = %306, %236
  br label %308

308:                                              ; preds = %307, %177
  %309 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %310 = load i32, i32* @SCB_CONTROL, align 4
  %311 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %312 = load i32, i32* @SCB_CONTROL, align 4
  %313 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %311, i32 %312)
  %314 = load i32, i32* @MK_MESSAGE, align 4
  %315 = xor i32 %314, -1
  %316 = and i32 %313, %315
  %317 = call i32 @ahd_outb(%struct.ahd_softc* %309, i32 %310, i32 %316)
  %318 = load i32, i32* @MK_MESSAGE, align 4
  %319 = xor i32 %318, -1
  %320 = load %struct.scb*, %struct.scb** %6, align 8
  %321 = getelementptr inbounds %struct.scb, %struct.scb* %320, i32 0, i32 1
  %322 = load %struct.TYPE_2__*, %struct.TYPE_2__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = and i32 %324, %319
  store i32 %325, i32* %323, align 4
  %326 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %327 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %326, i32 0, i32 3
  store i64 0, i64* %327, align 8
  %328 = load i8*, i8** @MSG_TYPE_INITIATOR_MSGOUT, align 8
  %329 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %330 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %329, i32 0, i32 2
  store i8* %328, i8** %330, align 8
  br label %331

331:                                              ; preds = %308, %54, %32
  ret void
}

declare dso_local i64 @ahd_currently_packetized(%struct.ahd_softc*) #1

declare dso_local i64 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i64 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_build_transfer_msg(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @AHD_FATAL_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @panic(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ahd_inb_scbram(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
