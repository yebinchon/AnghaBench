; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_setup_initiator_msgout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_setup_initiator_msgout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32*, i32, i64, i64 }
%struct.ahc_devinfo = type { i32 }
%struct.scb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SCB_DEVICE_RESET = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@MSG_IDENTIFYFLAG = common dso_local global i32 0, align 4
@DISCENB = common dso_local global i32 0, align 4
@MSG_IDENTIFY_DISCFLAG = common dso_local global i32 0, align 4
@TAG_ENB = common dso_local global i32 0, align 4
@SCB_TAG_TYPE = common dso_local global i32 0, align 4
@MSG_BUS_DEV_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Bus Device Reset Message Sent\0A\00", align 1
@SCSISEQ = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i32 0, align 4
@SCB_ABORT = common dso_local global i32 0, align 4
@MSG_ABORT_TAG = common dso_local global i32 0, align 4
@MSG_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Abort%s Message Sent\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" Tag\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SCB_AUTO_NEGOTIATE = common dso_local global i32 0, align 4
@SCB_NEGOTIATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"ahc_intr: AWAITING_MSG for an SCB that does not have a waiting message\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"SCSIID = %x, target_mask = %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"SCB = %d, SCB Control = %x, MSG_OUT = %x SCB flags = %x\00", align 1
@SCB_CONTROL = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i32 0, align 4
@MSG_TYPE_INITIATOR_MSGOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.scb*)* @ahc_setup_initiator_msgout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_setup_initiator_msgout(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1, %struct.scb* %2) #0 {
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca %struct.ahc_devinfo*, align 8
  %6 = alloca %struct.scb*, align 8
  %7 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %5, align 8
  store %struct.scb* %2, %struct.scb** %6, align 8
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.scb*, %struct.scb** %6, align 8
  %13 = getelementptr inbounds %struct.scb, %struct.scb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %99

18:                                               ; preds = %3
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %20 = load i32, i32* @MSG_OUT, align 4
  %21 = call i32 @ahc_inb(%struct.ahc_softc* %19, i32 %20)
  %22 = load i32, i32* @MSG_IDENTIFYFLAG, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %99

24:                                               ; preds = %18
  %25 = load i32, i32* @MSG_IDENTIFYFLAG, align 4
  %26 = load %struct.scb*, %struct.scb** %6, align 8
  %27 = call i32 @SCB_GET_LUN(%struct.scb* %26)
  %28 = or i32 %25, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.scb*, %struct.scb** %6, align 8
  %30 = getelementptr inbounds %struct.scb, %struct.scb* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DISCENB, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i32, i32* @MSG_IDENTIFY_DISCFLAG, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %24
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %42, i32* %50, align 4
  %51 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.scb*, %struct.scb** %6, align 8
  %56 = getelementptr inbounds %struct.scb, %struct.scb* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TAG_ENB, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %98

63:                                               ; preds = %41
  %64 = load %struct.scb*, %struct.scb** %6, align 8
  %65 = getelementptr inbounds %struct.scb, %struct.scb* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TAG_ENB, align 4
  %70 = load i32, i32* @SCB_TAG_TYPE, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %74 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %77 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 %72, i32* %80, align 4
  %81 = load %struct.scb*, %struct.scb** %6, align 8
  %82 = getelementptr inbounds %struct.scb, %struct.scb* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %87 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %90 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %85, i32* %93, align 4
  %94 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %95 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 2
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %63, %41
  br label %99

99:                                               ; preds = %98, %18, %3
  %100 = load %struct.scb*, %struct.scb** %6, align 8
  %101 = getelementptr inbounds %struct.scb, %struct.scb* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %99
  %107 = load i32, i32* @MSG_BUS_DEV_RESET, align 4
  %108 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %109 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %112 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32 %107, i32* %115, align 4
  %116 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %117 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %117, align 8
  %120 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %121 = load %struct.scb*, %struct.scb** %6, align 8
  %122 = call i32 @ahc_print_path(%struct.ahc_softc* %120, %struct.scb* %121)
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %124 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %125 = load i32, i32* @SCSISEQ, align 4
  %126 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %127 = load i32, i32* @SCSISEQ, align 4
  %128 = call i32 @ahc_inb(%struct.ahc_softc* %126, i32 %127)
  %129 = load i32, i32* @ENSELO, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  %132 = call i32 @ahc_outb(%struct.ahc_softc* %124, i32 %125, i32 %131)
  br label %240

133:                                              ; preds = %99
  %134 = load %struct.scb*, %struct.scb** %6, align 8
  %135 = getelementptr inbounds %struct.scb, %struct.scb* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SCB_ABORT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %197

140:                                              ; preds = %133
  %141 = load %struct.scb*, %struct.scb** %6, align 8
  %142 = getelementptr inbounds %struct.scb, %struct.scb* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @TAG_ENB, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %140
  %150 = load i32, i32* @MSG_ABORT_TAG, align 4
  %151 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %152 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %155 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = getelementptr inbounds i32, i32* %153, i64 %156
  store i32 %150, i32* %158, align 4
  br label %169

159:                                              ; preds = %140
  %160 = load i32, i32* @MSG_ABORT, align 4
  %161 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %162 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %165 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %165, align 8
  %168 = getelementptr inbounds i32, i32* %163, i64 %166
  store i32 %160, i32* %168, align 4
  br label %169

169:                                              ; preds = %159, %149
  %170 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %171 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %175 = load %struct.scb*, %struct.scb** %6, align 8
  %176 = call i32 @ahc_print_path(%struct.ahc_softc* %174, %struct.scb* %175)
  %177 = load %struct.scb*, %struct.scb** %6, align 8
  %178 = getelementptr inbounds %struct.scb, %struct.scb* %177, i32 0, i32 1
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @TAG_ENB, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %186)
  %188 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %189 = load i32, i32* @SCSISEQ, align 4
  %190 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %191 = load i32, i32* @SCSISEQ, align 4
  %192 = call i32 @ahc_inb(%struct.ahc_softc* %190, i32 %191)
  %193 = load i32, i32* @ENSELO, align 4
  %194 = xor i32 %193, -1
  %195 = and i32 %192, %194
  %196 = call i32 @ahc_outb(%struct.ahc_softc* %188, i32 %189, i32 %195)
  br label %239

197:                                              ; preds = %133
  %198 = load %struct.scb*, %struct.scb** %6, align 8
  %199 = getelementptr inbounds %struct.scb, %struct.scb* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @SCB_AUTO_NEGOTIATE, align 4
  %202 = load i32, i32* @SCB_NEGOTIATE, align 4
  %203 = or i32 %201, %202
  %204 = and i32 %200, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %197
  %207 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %208 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %5, align 8
  %209 = call i32 @ahc_build_transfer_msg(%struct.ahc_softc* %207, %struct.ahc_devinfo* %208)
  br label %238

210:                                              ; preds = %197
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0))
  %212 = load %struct.scb*, %struct.scb** %6, align 8
  %213 = getelementptr inbounds %struct.scb, %struct.scb* %212, i32 0, i32 1
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %5, align 8
  %218 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %216, i32 %219)
  %221 = load %struct.scb*, %struct.scb** %6, align 8
  %222 = getelementptr inbounds %struct.scb, %struct.scb* %221, i32 0, i32 1
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.scb*, %struct.scb** %6, align 8
  %227 = getelementptr inbounds %struct.scb, %struct.scb* %226, i32 0, i32 1
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %232 = load i32, i32* @MSG_OUT, align 4
  %233 = call i32 @ahc_inb(%struct.ahc_softc* %231, i32 %232)
  %234 = load %struct.scb*, %struct.scb** %6, align 8
  %235 = getelementptr inbounds %struct.scb, %struct.scb* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %225, i32 %230, i32 %233, i32 %236)
  br label %238

238:                                              ; preds = %210, %206
  br label %239

239:                                              ; preds = %238, %169
  br label %240

240:                                              ; preds = %239, %106
  %241 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %242 = load i32, i32* @SCB_CONTROL, align 4
  %243 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %244 = load i32, i32* @SCB_CONTROL, align 4
  %245 = call i32 @ahc_inb(%struct.ahc_softc* %243, i32 %244)
  %246 = load i32, i32* @MK_MESSAGE, align 4
  %247 = xor i32 %246, -1
  %248 = and i32 %245, %247
  %249 = call i32 @ahc_outb(%struct.ahc_softc* %241, i32 %242, i32 %248)
  %250 = load i32, i32* @MK_MESSAGE, align 4
  %251 = xor i32 %250, -1
  %252 = load %struct.scb*, %struct.scb** %6, align 8
  %253 = getelementptr inbounds %struct.scb, %struct.scb* %252, i32 0, i32 1
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, %251
  store i32 %257, i32* %255, align 4
  %258 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %259 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %258, i32 0, i32 2
  store i64 0, i64* %259, align 8
  %260 = load i32, i32* @MSG_TYPE_INITIATOR_MSGOUT, align 4
  %261 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %262 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 8
  ret void
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @ahc_print_path(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_build_transfer_msg(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @panic(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
