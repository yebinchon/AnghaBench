; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_flush_qoutfifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_flush_qoutfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i64 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@LQISTAT2 = common dso_local global i64 0, align 8
@LQIGSAVAIL = common dso_local global i32 0, align 4
@GSFIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Warning - GSFIFO SCB %d invalid\0A\00", align 1
@SCB_SGPTR = common dso_local global i64 0, align 8
@SG_LIST_NULL = common dso_local global i32 0, align 4
@SG_FULL_RESID = common dso_local global i32 0, align 4
@SCB_RESIDUAL_SGPTR = common dso_local global i64 0, align 8
@SCB_SCSI_STATUS = common dso_local global i64 0, align 8
@SG_STATUS_VALID = common dso_local global i32 0, align 4
@SCB_TAG = common dso_local global i32 0, align 4
@SCB_NEXT_COMPLETE = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@COMPLETE_DMA_SCB_HEAD = common dso_local global i32 0, align 4
@COMPLETE_DMA_SCB_TAIL = common dso_local global i32 0, align 4
@AHD_MODE_CCHAN = common dso_local global i32 0, align 4
@CCSCBCTL = common dso_local global i64 0, align 8
@CCARREN = common dso_local global i32 0, align 4
@CCSCBEN = common dso_local global i32 0, align 4
@CCSCBDIR = common dso_local global i32 0, align 4
@ARRDONE = common dso_local global i32 0, align 4
@CCSCBDONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: Warning - DMA-up and complete SCB %d invalid\0A\00", align 1
@SCB_BASE = common dso_local global i64 0, align 8
@COMPLETE_ON_QFREEZE_HEAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: Warning - Complete Qfrz SCB %d invalid\0A\00", align 1
@COMPLETE_SCB_HEAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: Warning - Complete SCB %d invalid\0A\00", align 1
@AHD_UPDATE_PEND_CMDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_flush_qoutfifo(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.scb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %16 = call i32 @ahd_save_modes(%struct.ahd_softc* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %18 = load i32, i32* @AHD_MODE_SCSI, align 4
  %19 = load i32, i32* @AHD_MODE_SCSI, align 4
  %20 = call i32 @ahd_set_modes(%struct.ahd_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %22 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %157, %39, %1
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %25 = load i64, i64* @LQISTAT2, align 8
  %26 = call i32 @ahd_inb(%struct.ahd_softc* %24, i64 %25)
  %27 = load i32, i32* @LQIGSAVAIL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %158

30:                                               ; preds = %23
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %32 = load i32, i32* @GSFIFO, align 4
  %33 = call i32 @ahd_inw(%struct.ahd_softc* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %34, i32 %35)
  store %struct.scb* %36, %struct.scb** %3, align 8
  %37 = load %struct.scb*, %struct.scb** %3, align 8
  %38 = icmp eq %struct.scb* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %41 = call i8* @ahd_name(%struct.ahd_softc* %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %42)
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %45 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %44)
  br label %23

46:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %63, %46
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = xor i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ahd_set_modes(%struct.ahd_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %59 = load %struct.scb*, %struct.scb** %3, align 8
  %60 = call i64 @ahd_scb_active_in_fifo(%struct.ahd_softc* %58, %struct.scb* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %68

63:                                               ; preds = %51
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %65 = load %struct.scb*, %struct.scb** %3, align 8
  %66 = call i32 @ahd_run_data_fifo(%struct.ahd_softc* %64, %struct.scb* %65)
  %67 = call i32 @aic_delay(i32 200)
  br label %47

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %48

71:                                               ; preds = %48
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %73 = load i32, i32* @AHD_MODE_SCSI, align 4
  %74 = load i32, i32* @AHD_MODE_SCSI, align 4
  %75 = call i32 @ahd_set_modes(%struct.ahd_softc* %72, i32 %73, i32 %74)
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %76, i32 %77)
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %80 = load i64, i64* @SCB_SGPTR, align 8
  %81 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %79, i64 %80)
  %82 = load i32, i32* @SG_LIST_NULL, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %153

85:                                               ; preds = %71
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %87 = load i64, i64* @SCB_SGPTR, align 8
  %88 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %86, i64 %87)
  %89 = load i32, i32* @SG_FULL_RESID, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %94 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %95 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %93, i64 %94)
  %96 = load i32, i32* @SG_LIST_NULL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %153

99:                                               ; preds = %92, %85
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %101 = load i64, i64* @SCB_SCSI_STATUS, align 8
  %102 = call i32 @ahd_outb(%struct.ahd_softc* %100, i64 %101, i32 0)
  %103 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %104 = load i64, i64* @SCB_SGPTR, align 8
  %105 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %106 = load i64, i64* @SCB_SGPTR, align 8
  %107 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %105, i64 %106)
  %108 = load i32, i32* @SG_STATUS_VALID, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @ahd_outb(%struct.ahd_softc* %103, i64 %104, i32 %109)
  %111 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %112 = load i32, i32* @SCB_TAG, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @ahd_outw(%struct.ahd_softc* %111, i32 %112, i32 %113)
  %115 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %116 = load i32, i32* @SCB_NEXT_COMPLETE, align 4
  %117 = load i32, i32* @SCB_LIST_NULL, align 4
  %118 = call i32 @ahd_outw(%struct.ahd_softc* %115, i32 %116, i32 %117)
  %119 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %120 = load i32, i32* @COMPLETE_DMA_SCB_HEAD, align 4
  %121 = call i32 @ahd_inw(%struct.ahd_softc* %119, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i64 @SCBID_IS_NULL(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %99
  %126 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %127 = load i32, i32* @COMPLETE_DMA_SCB_HEAD, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @ahd_outw(%struct.ahd_softc* %126, i32 %127, i32 %128)
  %130 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %131 = load i32, i32* @COMPLETE_DMA_SCB_TAIL, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @ahd_outw(%struct.ahd_softc* %130, i32 %131, i32 %132)
  br label %152

134:                                              ; preds = %99
  %135 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %136 = load i32, i32* @COMPLETE_DMA_SCB_TAIL, align 4
  %137 = call i32 @ahd_inw(%struct.ahd_softc* %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %138, i32 %139)
  %141 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %142 = load i32, i32* @SCB_NEXT_COMPLETE, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @ahd_outw(%struct.ahd_softc* %141, i32 %142, i32 %143)
  %145 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %146 = load i32, i32* @COMPLETE_DMA_SCB_TAIL, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @ahd_outw(%struct.ahd_softc* %145, i32 %146, i32 %147)
  %149 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %149, i32 %150)
  br label %152

152:                                              ; preds = %134, %125
  br label %157

153:                                              ; preds = %92, %71
  %154 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %155 = load %struct.scb*, %struct.scb** %3, align 8
  %156 = call i32 @ahd_complete_scb(%struct.ahd_softc* %154, %struct.scb* %155)
  br label %157

157:                                              ; preds = %153, %152
  br label %23

158:                                              ; preds = %23
  %159 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %159, i32 %160)
  %162 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %163 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %164 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %165 = call i32 @ahd_set_modes(%struct.ahd_softc* %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %199, %158
  %167 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %168 = load i64, i64* @CCSCBCTL, align 8
  %169 = call i32 @ahd_inb(%struct.ahd_softc* %167, i64 %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* @CCARREN, align 4
  %171 = load i32, i32* @CCSCBEN, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %166
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @CCSCBDIR, align 4
  %178 = load i32, i32* @CCARREN, align 4
  %179 = or i32 %177, %178
  %180 = and i32 %176, %179
  %181 = load i32, i32* @CCSCBDIR, align 4
  %182 = load i32, i32* @CCARREN, align 4
  %183 = or i32 %181, %182
  %184 = icmp eq i32 %180, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %175
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @ARRDONE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %201

191:                                              ; preds = %185
  br label %199

192:                                              ; preds = %175
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @CCSCBDONE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %201

198:                                              ; preds = %192
  br label %199

199:                                              ; preds = %198, %191
  %200 = call i32 @aic_delay(i32 200)
  br label %166

201:                                              ; preds = %197, %190, %166
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* @CCSCBDIR, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @ARRDONE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %206, %201
  %212 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %213 = load i64, i64* @CCSCBCTL, align 8
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @CCARREN, align 4
  %216 = load i32, i32* @CCSCBEN, align 4
  %217 = or i32 %215, %216
  %218 = xor i32 %217, -1
  %219 = and i32 %214, %218
  %220 = call i32 @ahd_outb(%struct.ahd_softc* %212, i64 %213, i32 %219)
  br label %221

221:                                              ; preds = %211, %206
  %222 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %223 = call i32 @ahd_run_qoutfifo(%struct.ahd_softc* %222)
  %224 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %225 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %224)
  store i32 %225, i32* %5, align 4
  %226 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %227 = load i32, i32* @COMPLETE_DMA_SCB_HEAD, align 4
  %228 = call i32 @ahd_inw(%struct.ahd_softc* %226, i32 %227)
  store i32 %228, i32* %7, align 4
  br label %229

229:                                              ; preds = %274, %246, %221
  %230 = load i32, i32* %7, align 4
  %231 = call i64 @SCBID_IS_NULL(i32 %230)
  %232 = icmp ne i64 %231, 0
  %233 = xor i1 %232, true
  br i1 %233, label %234, label %279

234:                                              ; preds = %229
  %235 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %235, i32 %236)
  %238 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %239 = load i32, i32* @SCB_NEXT_COMPLETE, align 4
  %240 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %238, i32 %239)
  store i32 %240, i32* %8, align 4
  %241 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %242 = load i32, i32* %7, align 4
  %243 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %241, i32 %242)
  store %struct.scb* %243, %struct.scb** %3, align 8
  %244 = load %struct.scb*, %struct.scb** %3, align 8
  %245 = icmp eq %struct.scb* %244, null
  br i1 %245, label %246, label %253

246:                                              ; preds = %234
  %247 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %248 = call i8* @ahd_name(%struct.ahd_softc* %247)
  %249 = load i32, i32* %7, align 4
  %250 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %248, i32 %249)
  %251 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %252 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %251)
  br label %229

253:                                              ; preds = %234
  %254 = load %struct.scb*, %struct.scb** %3, align 8
  %255 = getelementptr inbounds %struct.scb, %struct.scb* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = inttoptr i64 %256 to i32*
  store i32* %257, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %258

258:                                              ; preds = %271, %253
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = icmp ult i64 %260, 4
  br i1 %261, label %262, label %274

262:                                              ; preds = %258
  %263 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %264 = load i64, i64* @SCB_BASE, align 8
  %265 = load i32, i32* %14, align 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %264, %266
  %268 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %263, i64 %267)
  %269 = load i32*, i32** %13, align 8
  %270 = getelementptr inbounds i32, i32* %269, i32 1
  store i32* %270, i32** %13, align 8
  store i32 %268, i32* %269, align 4
  br label %271

271:                                              ; preds = %262
  %272 = load i32, i32* %14, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %14, align 4
  br label %258

274:                                              ; preds = %258
  %275 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %276 = load %struct.scb*, %struct.scb** %3, align 8
  %277 = call i32 @ahd_complete_scb(%struct.ahd_softc* %275, %struct.scb* %276)
  %278 = load i32, i32* %8, align 4
  store i32 %278, i32* %7, align 4
  br label %229

279:                                              ; preds = %229
  %280 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %281 = load i32, i32* @COMPLETE_DMA_SCB_HEAD, align 4
  %282 = load i32, i32* @SCB_LIST_NULL, align 4
  %283 = call i32 @ahd_outw(%struct.ahd_softc* %280, i32 %281, i32 %282)
  %284 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %285 = load i32, i32* @COMPLETE_DMA_SCB_TAIL, align 4
  %286 = load i32, i32* @SCB_LIST_NULL, align 4
  %287 = call i32 @ahd_outw(%struct.ahd_softc* %284, i32 %285, i32 %286)
  %288 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %289 = load i32, i32* @COMPLETE_ON_QFREEZE_HEAD, align 4
  %290 = call i32 @ahd_inw(%struct.ahd_softc* %288, i32 %289)
  store i32 %290, i32* %7, align 4
  br label %291

291:                                              ; preds = %315, %308, %279
  %292 = load i32, i32* %7, align 4
  %293 = call i64 @SCBID_IS_NULL(i32 %292)
  %294 = icmp ne i64 %293, 0
  %295 = xor i1 %294, true
  br i1 %295, label %296, label %320

296:                                              ; preds = %291
  %297 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %298 = load i32, i32* %7, align 4
  %299 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %297, i32 %298)
  %300 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %301 = load i32, i32* @SCB_NEXT_COMPLETE, align 4
  %302 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %300, i32 %301)
  store i32 %302, i32* %8, align 4
  %303 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %304 = load i32, i32* %7, align 4
  %305 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %303, i32 %304)
  store %struct.scb* %305, %struct.scb** %3, align 8
  %306 = load %struct.scb*, %struct.scb** %3, align 8
  %307 = icmp eq %struct.scb* %306, null
  br i1 %307, label %308, label %315

308:                                              ; preds = %296
  %309 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %310 = call i8* @ahd_name(%struct.ahd_softc* %309)
  %311 = load i32, i32* %7, align 4
  %312 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %310, i32 %311)
  %313 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %314 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %313)
  br label %291

315:                                              ; preds = %296
  %316 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %317 = load %struct.scb*, %struct.scb** %3, align 8
  %318 = call i32 @ahd_complete_scb(%struct.ahd_softc* %316, %struct.scb* %317)
  %319 = load i32, i32* %8, align 4
  store i32 %319, i32* %7, align 4
  br label %291

320:                                              ; preds = %291
  %321 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %322 = load i32, i32* @COMPLETE_ON_QFREEZE_HEAD, align 4
  %323 = load i32, i32* @SCB_LIST_NULL, align 4
  %324 = call i32 @ahd_outw(%struct.ahd_softc* %321, i32 %322, i32 %323)
  %325 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %326 = load i32, i32* @COMPLETE_SCB_HEAD, align 4
  %327 = call i32 @ahd_inw(%struct.ahd_softc* %325, i32 %326)
  store i32 %327, i32* %7, align 4
  br label %328

328:                                              ; preds = %352, %345, %320
  %329 = load i32, i32* %7, align 4
  %330 = call i64 @SCBID_IS_NULL(i32 %329)
  %331 = icmp ne i64 %330, 0
  %332 = xor i1 %331, true
  br i1 %332, label %333, label %357

333:                                              ; preds = %328
  %334 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %335 = load i32, i32* %7, align 4
  %336 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %334, i32 %335)
  %337 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %338 = load i32, i32* @SCB_NEXT_COMPLETE, align 4
  %339 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %337, i32 %338)
  store i32 %339, i32* %8, align 4
  %340 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %341 = load i32, i32* %7, align 4
  %342 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %340, i32 %341)
  store %struct.scb* %342, %struct.scb** %3, align 8
  %343 = load %struct.scb*, %struct.scb** %3, align 8
  %344 = icmp eq %struct.scb* %343, null
  br i1 %344, label %345, label %352

345:                                              ; preds = %333
  %346 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %347 = call i8* @ahd_name(%struct.ahd_softc* %346)
  %348 = load i32, i32* %7, align 4
  %349 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %347, i32 %348)
  %350 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %351 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %350)
  br label %328

352:                                              ; preds = %333
  %353 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %354 = load %struct.scb*, %struct.scb** %3, align 8
  %355 = call i32 @ahd_complete_scb(%struct.ahd_softc* %353, %struct.scb* %354)
  %356 = load i32, i32* %8, align 4
  store i32 %356, i32* %7, align 4
  br label %328

357:                                              ; preds = %328
  %358 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %359 = load i32, i32* @COMPLETE_SCB_HEAD, align 4
  %360 = load i32, i32* @SCB_LIST_NULL, align 4
  %361 = call i32 @ahd_outw(%struct.ahd_softc* %358, i32 %359, i32 %360)
  %362 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %363 = load i32, i32* %5, align 4
  %364 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %362, i32 %363)
  %365 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %366 = load i32, i32* %4, align 4
  %367 = call i32 @ahd_restore_modes(%struct.ahd_softc* %365, i32 %366)
  %368 = load i32, i32* @AHD_UPDATE_PEND_CMDS, align 4
  %369 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %370 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 4
  ret void
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i64 @ahd_scb_active_in_fifo(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_run_data_fifo(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @aic_delay(i32) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inb_scbram(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i64, i32) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @SCBID_IS_NULL(i32) #1

declare dso_local i32 @ahd_complete_scb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_run_qoutfifo(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_inw_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
