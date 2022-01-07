; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_search_qinfifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_search_qinfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i64, i32, i64*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i32** }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.scb = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@AHC_QUEUE_REGS = common dso_local global i32 0, align 4
@SNSCB_QOFF = common dso_local global i32 0, align 4
@QINPOS = common dso_local global i32 0, align 4
@NEXT_QUEUED_SCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"qinpos = %d, SCB index = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Loop 1\0A\00", align 1
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@SCB_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Inactive SCB in qinfifo\0A\00", align 1
@HNSCB_QOFF = common dso_local global i32 0, align 4
@KERNEL_QINPOS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"found = %d, qinstart = %d, qinfifionext = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"First/Second Qinfifo fixup\0A\00", align 1
@SCBPTR = common dso_local global i32 0, align 4
@WAITING_SCBH = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@SCB_TAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"Waiting List inconsistency. SCB index == %d, yet numscbs == %d.\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"for safety\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"scb_index = %d, next = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Waiting List traversal\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Inactive SCB in Wait List\0A\00", align 1
@SCB_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_search_qinfifo(%struct.ahc_softc* %0, i32 %1, i8 signext %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ahc_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scb*, align 8
  %18 = alloca %struct.scb*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8 %2, i8* %11, align 1
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %21, align 8
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %36 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AHC_QUEUE_REGS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %26, align 4
  %42 = load i32, i32* %26, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %8
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %46 = load i32, i32* @SNSCB_QOFF, align 4
  %47 = call i64 @ahc_inb(%struct.ahc_softc* %45, i32 %46)
  store i64 %47, i64* %19, align 8
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %49 = load i32, i32* @SNSCB_QOFF, align 4
  %50 = load i64, i64* %19, align 8
  %51 = call i32 @ahc_outb(%struct.ahc_softc* %48, i32 %49, i64 %50)
  br label %56

52:                                               ; preds = %8
  %53 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %54 = load i32, i32* @QINPOS, align 4
  %55 = call i64 @ahc_inb(%struct.ahc_softc* %53, i32 %54)
  store i64 %55, i64* %19, align 8
  br label %56

56:                                               ; preds = %52, %44
  %57 = load i64, i64* %19, align 8
  store i64 %57, i64* %20, align 8
  store i32 0, i32* %25, align 4
  store %struct.scb* null, %struct.scb** %18, align 8
  %58 = load i32, i32* %16, align 4
  %59 = icmp eq i32 %58, 130
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %62 = call i32 @ahc_freeze_untagged_queues(%struct.ahc_softc* %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i64, i64* %20, align 8
  %65 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %66 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %68 = load i32, i32* @NEXT_QUEUED_SCB, align 4
  %69 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %70 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %69, i32 0, i32 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @ahc_outb(%struct.ahc_softc* %67, i32 %68, i64 %75)
  br label %77

77:                                               ; preds = %162, %63
  %78 = load i64, i64* %20, align 8
  %79 = load i64, i64* %21, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %165

81:                                               ; preds = %77
  %82 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %83 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %84 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %20, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %82, i64 %88)
  store %struct.scb* %89, %struct.scb** %17, align 8
  %90 = load %struct.scb*, %struct.scb** %17, align 8
  %91 = icmp eq %struct.scb* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %81
  %93 = load i64, i64* %20, align 8
  %94 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %95 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %20, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %93, i64 %99)
  %101 = call i32 @panic(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %92, %81
  %103 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %104 = load %struct.scb*, %struct.scb** %17, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i8, i8* %11, align 1
  %107 = load i32, i32* %12, align 4
  %108 = load i64, i64* %13, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i64 @ahc_match_scb(%struct.ahc_softc* %103, %struct.scb* %104, i32 %105, i8 signext %106, i32 %107, i64 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %156

112:                                              ; preds = %102
  %113 = load i32, i32* %25, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %25, align 4
  %115 = load i32, i32* %16, align 4
  switch i32 %115, label %155 [
    i32 130, label %116
    i32 128, label %148
    i32 129, label %149
  ]

116:                                              ; preds = %112
  %117 = load %struct.scb*, %struct.scb** %17, align 8
  %118 = call i32 @aic_get_transaction_status(%struct.scb* %117)
  store i32 %118, i32* %27, align 4
  %119 = load i32, i32* %27, align 4
  %120 = load i32, i32* @CAM_REQ_INPROG, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.scb*, %struct.scb** %17, align 8
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @aic_set_transaction_status(%struct.scb* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %116
  %127 = load %struct.scb*, %struct.scb** %17, align 8
  %128 = call i32 @aic_get_transaction_status(%struct.scb* %127)
  store i32 %128, i32* %28, align 4
  %129 = load i32, i32* %28, align 4
  %130 = load i32, i32* @CAM_REQ_CMP, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load %struct.scb*, %struct.scb** %17, align 8
  %134 = call i32 @aic_freeze_scb(%struct.scb* %133)
  br label %135

135:                                              ; preds = %132, %126
  %136 = load %struct.scb*, %struct.scb** %17, align 8
  %137 = getelementptr inbounds %struct.scb, %struct.scb* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @SCB_ACTIVE, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %135
  %145 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %146 = load %struct.scb*, %struct.scb** %17, align 8
  %147 = call i32 @ahc_done(%struct.ahc_softc* %145, %struct.scb* %146)
  br label %148

148:                                              ; preds = %112, %144
  br label %155

149:                                              ; preds = %112
  %150 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %151 = load %struct.scb*, %struct.scb** %18, align 8
  %152 = load %struct.scb*, %struct.scb** %17, align 8
  %153 = call i32 @ahc_qinfifo_requeue(%struct.ahc_softc* %150, %struct.scb* %151, %struct.scb* %152)
  %154 = load %struct.scb*, %struct.scb** %17, align 8
  store %struct.scb* %154, %struct.scb** %18, align 8
  br label %155

155:                                              ; preds = %112, %149, %148
  br label %162

156:                                              ; preds = %102
  %157 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %158 = load %struct.scb*, %struct.scb** %18, align 8
  %159 = load %struct.scb*, %struct.scb** %17, align 8
  %160 = call i32 @ahc_qinfifo_requeue(%struct.ahc_softc* %157, %struct.scb* %158, %struct.scb* %159)
  %161 = load %struct.scb*, %struct.scb** %17, align 8
  store %struct.scb* %161, %struct.scb** %18, align 8
  br label %162

162:                                              ; preds = %156, %155
  %163 = load i64, i64* %20, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %20, align 8
  br label %77

165:                                              ; preds = %77
  %166 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %167 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @AHC_QUEUE_REGS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %174 = load i32, i32* @HNSCB_QOFF, align 4
  %175 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %176 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @ahc_outb(%struct.ahc_softc* %173, i32 %174, i64 %177)
  br label %186

179:                                              ; preds = %165
  %180 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %181 = load i32, i32* @KERNEL_QINPOS, align 4
  %182 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %183 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @ahc_outb(%struct.ahc_softc* %180, i32 %181, i64 %184)
  br label %186

186:                                              ; preds = %179, %172
  %187 = load i32, i32* %16, align 4
  %188 = icmp ne i32 %187, 129
  br i1 %188, label %189, label %283

189:                                              ; preds = %186
  %190 = load i32, i32* %25, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %283

192:                                              ; preds = %189
  %193 = load i64, i64* %19, align 8
  %194 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %195 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %193, %196
  br i1 %197, label %198, label %283

198:                                              ; preds = %192
  %199 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %200 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %201 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %200, i32 0, i32 2
  %202 = load i64*, i64** %201, align 8
  %203 = load i64, i64* %19, align 8
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %199, i64 %205)
  store %struct.scb* %206, %struct.scb** %17, align 8
  %207 = load %struct.scb*, %struct.scb** %17, align 8
  %208 = icmp eq %struct.scb* %207, null
  br i1 %208, label %209, label %217

209:                                              ; preds = %198
  %210 = load i32, i32* %25, align 4
  %211 = load i64, i64* %19, align 8
  %212 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %213 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %210, i64 %211, i64 %214)
  %216 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %217

217:                                              ; preds = %209, %198
  %218 = load %struct.scb*, %struct.scb** %17, align 8
  %219 = getelementptr inbounds %struct.scb, %struct.scb* %218, i32 0, i32 1
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %22, align 8
  %223 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %224 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %223, i32 0, i32 3
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i32**, i32*** %226, align 8
  %228 = load %struct.scb*, %struct.scb** %17, align 8
  %229 = getelementptr inbounds %struct.scb, %struct.scb* %228, i32 0, i32 1
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds i32*, i32** %227, i64 %232
  store i32* null, i32** %233, align 8
  %234 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %235 = load %struct.scb*, %struct.scb** %17, align 8
  %236 = call i32 @ahc_swap_with_next_hscb(%struct.ahc_softc* %234, %struct.scb* %235)
  %237 = load i64, i64* %22, align 8
  %238 = load %struct.scb*, %struct.scb** %17, align 8
  %239 = getelementptr inbounds %struct.scb, %struct.scb* %238, i32 0, i32 1
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  store i64 %237, i64* %241, align 8
  %242 = load %struct.scb*, %struct.scb** %17, align 8
  %243 = getelementptr inbounds %struct.scb, %struct.scb* %242, i32 0, i32 1
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %248 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %247, i32 0, i32 2
  %249 = load i64*, i64** %248, align 8
  %250 = load i64, i64* %19, align 8
  %251 = getelementptr inbounds i64, i64* %249, i64 %250
  store i64 %246, i64* %251, align 8
  %252 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %253 = load i32, i32* @NEXT_QUEUED_SCB, align 4
  %254 = load %struct.scb*, %struct.scb** %17, align 8
  %255 = getelementptr inbounds %struct.scb, %struct.scb* %254, i32 0, i32 1
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @ahc_outb(%struct.ahc_softc* %252, i32 %253, i64 %258)
  %260 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %261 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = sub i64 %262, 1
  store i64 %263, i64* %21, align 8
  %264 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %265 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %266 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %265, i32 0, i32 2
  %267 = load i64*, i64** %266, align 8
  %268 = load i64, i64* %21, align 8
  %269 = getelementptr inbounds i64, i64* %267, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %264, i64 %270)
  store %struct.scb* %271, %struct.scb** %17, align 8
  %272 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %273 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %272, i32 0, i32 4
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.scb*, %struct.scb** %17, align 8
  %280 = getelementptr inbounds %struct.scb, %struct.scb* %279, i32 0, i32 1
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  store i64 %278, i64* %282, align 8
  br label %283

283:                                              ; preds = %217, %192, %189, %186
  %284 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %285 = load i32, i32* @SCBPTR, align 4
  %286 = call i64 @ahc_inb(%struct.ahc_softc* %284, i32 %285)
  store i64 %286, i64* %24, align 8
  %287 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %288 = load i32, i32* @WAITING_SCBH, align 4
  %289 = call i64 @ahc_inb(%struct.ahc_softc* %287, i32 %288)
  store i64 %289, i64* %22, align 8
  %290 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %290, i64* %23, align 8
  br label %291

291:                                              ; preds = %394, %283
  %292 = load i64, i64* %22, align 8
  %293 = load i64, i64* @SCB_LIST_NULL, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %395

295:                                              ; preds = %291
  %296 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %297 = load i32, i32* @SCBPTR, align 4
  %298 = load i64, i64* %22, align 8
  %299 = call i32 @ahc_outb(%struct.ahc_softc* %296, i32 %297, i64 %298)
  %300 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %301 = load i32, i32* @SCB_TAG, align 4
  %302 = call i64 @ahc_inb(%struct.ahc_softc* %300, i32 %301)
  store i64 %302, i64* %29, align 8
  %303 = load i64, i64* %29, align 8
  %304 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %305 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %304, i32 0, i32 3
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp uge i64 %303, %308
  br i1 %309, label %310, label %321

310:                                              ; preds = %295
  %311 = load i64, i64* %29, align 8
  %312 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %313 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %312, i32 0, i32 3
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i64 %311, i64 %316)
  %318 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %319 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %318)
  %320 = call i32 @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %321

321:                                              ; preds = %310, %295
  %322 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %323 = load i64, i64* %29, align 8
  %324 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %322, i64 %323)
  store %struct.scb* %324, %struct.scb** %17, align 8
  %325 = load %struct.scb*, %struct.scb** %17, align 8
  %326 = icmp eq %struct.scb* %325, null
  br i1 %326, label %327, label %332

327:                                              ; preds = %321
  %328 = load i64, i64* %29, align 8
  %329 = load i64, i64* %22, align 8
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %328, i64 %329)
  %331 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %332

332:                                              ; preds = %327, %321
  %333 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %334 = load %struct.scb*, %struct.scb** %17, align 8
  %335 = load i32, i32* %10, align 4
  %336 = load i8, i8* %11, align 1
  %337 = load i32, i32* %12, align 4
  %338 = load i64, i64* @SCB_LIST_NULL, align 8
  %339 = load i32, i32* %14, align 4
  %340 = call i64 @ahc_match_scb(%struct.ahc_softc* %333, %struct.scb* %334, i32 %335, i8 signext %336, i32 %337, i64 %338, i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %389

342:                                              ; preds = %332
  %343 = load i32, i32* %25, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %25, align 4
  %345 = load i32, i32* %16, align 4
  switch i32 %345, label %388 [
    i32 130, label %346
    i32 128, label %378
    i32 129, label %383
  ]

346:                                              ; preds = %342
  %347 = load %struct.scb*, %struct.scb** %17, align 8
  %348 = call i32 @aic_get_transaction_status(%struct.scb* %347)
  store i32 %348, i32* %30, align 4
  %349 = load i32, i32* %30, align 4
  %350 = load i32, i32* @CAM_REQ_INPROG, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %356

352:                                              ; preds = %346
  %353 = load %struct.scb*, %struct.scb** %17, align 8
  %354 = load i32, i32* %15, align 4
  %355 = call i32 @aic_set_transaction_status(%struct.scb* %353, i32 %354)
  br label %356

356:                                              ; preds = %352, %346
  %357 = load %struct.scb*, %struct.scb** %17, align 8
  %358 = call i32 @aic_get_transaction_status(%struct.scb* %357)
  store i32 %358, i32* %31, align 4
  %359 = load i32, i32* %31, align 4
  %360 = load i32, i32* @CAM_REQ_CMP, align 4
  %361 = icmp ne i32 %359, %360
  br i1 %361, label %362, label %365

362:                                              ; preds = %356
  %363 = load %struct.scb*, %struct.scb** %17, align 8
  %364 = call i32 @aic_freeze_scb(%struct.scb* %363)
  br label %365

365:                                              ; preds = %362, %356
  %366 = load %struct.scb*, %struct.scb** %17, align 8
  %367 = getelementptr inbounds %struct.scb, %struct.scb* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @SCB_ACTIVE, align 4
  %370 = and i32 %368, %369
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %365
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %374

374:                                              ; preds = %372, %365
  %375 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %376 = load %struct.scb*, %struct.scb** %17, align 8
  %377 = call i32 @ahc_done(%struct.ahc_softc* %375, %struct.scb* %376)
  br label %378

378:                                              ; preds = %342, %374
  %379 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %380 = load i64, i64* %22, align 8
  %381 = load i64, i64* %23, align 8
  %382 = call i64 @ahc_rem_wscb(%struct.ahc_softc* %379, i64 %380, i64 %381)
  store i64 %382, i64* %22, align 8
  br label %388

383:                                              ; preds = %342
  %384 = load i64, i64* %22, align 8
  store i64 %384, i64* %23, align 8
  %385 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %386 = load i32, i32* @SCB_NEXT, align 4
  %387 = call i64 @ahc_inb(%struct.ahc_softc* %385, i32 %386)
  store i64 %387, i64* %22, align 8
  br label %388

388:                                              ; preds = %342, %383, %378
  br label %394

389:                                              ; preds = %332
  %390 = load i64, i64* %22, align 8
  store i64 %390, i64* %23, align 8
  %391 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %392 = load i32, i32* @SCB_NEXT, align 4
  %393 = call i64 @ahc_inb(%struct.ahc_softc* %391, i32 %392)
  store i64 %393, i64* %22, align 8
  br label %394

394:                                              ; preds = %389, %388
  br label %291

395:                                              ; preds = %291
  %396 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %397 = load i32, i32* @SCBPTR, align 4
  %398 = load i64, i64* %24, align 8
  %399 = call i32 @ahc_outb(%struct.ahc_softc* %396, i32 %397, i64 %398)
  %400 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %401 = load i32, i32* %10, align 4
  %402 = load i8, i8* %11, align 1
  %403 = load i32, i32* %12, align 4
  %404 = load i32, i32* %15, align 4
  %405 = load i32, i32* %16, align 4
  %406 = call i64 @ahc_search_untagged_queues(%struct.ahc_softc* %400, i32* null, i32 %401, i8 signext %402, i32 %403, i32 %404, i32 %405)
  %407 = load i32, i32* %25, align 4
  %408 = sext i32 %407 to i64
  %409 = add nsw i64 %408, %406
  %410 = trunc i64 %409 to i32
  store i32 %410, i32* %25, align 4
  %411 = load i32, i32* %16, align 4
  %412 = icmp eq i32 %411, 130
  br i1 %412, label %413, label %416

413:                                              ; preds = %395
  %414 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %415 = call i32 @ahc_release_untagged_queues(%struct.ahc_softc* %414)
  br label %416

416:                                              ; preds = %413, %395
  %417 = load i32, i32* %25, align 4
  ret i32 %417
}

declare dso_local i64 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i64) #1

declare dso_local i32 @ahc_freeze_untagged_queues(%struct.ahc_softc*) #1

declare dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ahc_match_scb(%struct.ahc_softc*, %struct.scb*, i32, i8 signext, i32, i64, i32) #1

declare dso_local i32 @aic_get_transaction_status(%struct.scb*) #1

declare dso_local i32 @aic_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @aic_freeze_scb(%struct.scb*) #1

declare dso_local i32 @ahc_done(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_qinfifo_requeue(%struct.ahc_softc*, %struct.scb*, %struct.scb*) #1

declare dso_local i32 @ahc_swap_with_next_hscb(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_dump_card_state(%struct.ahc_softc*) #1

declare dso_local i64 @ahc_rem_wscb(%struct.ahc_softc*, i64, i64) #1

declare dso_local i64 @ahc_search_untagged_queues(%struct.ahc_softc*, i32*, i32, i8 signext, i32, i32, i32) #1

declare dso_local i32 @ahc_release_untagged_queues(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
