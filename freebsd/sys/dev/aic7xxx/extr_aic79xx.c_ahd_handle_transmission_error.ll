; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_handle_transmission_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_handle_transmission_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32 }
%struct.scb = type { i32 }
%struct.TYPE_2__ = type { i8* }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@LQISTAT1 = common dso_local global i32 0, align 4
@LQIPHASE_LQ = common dso_local global i32 0, align 4
@LQIPHASE_NLQ = common dso_local global i32 0, align 4
@LQISTAT2 = common dso_local global i32 0, align 4
@LQICRCI_NLQ = common dso_local global i32 0, align 4
@LQICRCI_LQ = common dso_local global i32 0, align 4
@AHD_NLQICRC_DELAYED_BUG = common dso_local global i32 0, align 4
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@LQISTATE = common dso_local global i32 0, align 4
@CLRLQIINT1 = common dso_local global i32 0, align 4
@LASTPHASE = common dso_local global i32 0, align 4
@SCSISIGI = common dso_local global i32 0, align 4
@PHASE_MASK = common dso_local global i32 0, align 4
@PERRDIAG = common dso_local global i32 0, align 4
@MSG_INITIATOR_DET_ERR = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRSCSIPERR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LQIOVERI_NLQ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: Transmission error detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LQIOVERI_LQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"%s: Gross protocol error during incoming packet.  lqistat1 == 0x%x.  Resetting bus.\0A\00", align 1
@LQCTL2 = common dso_local global i32 0, align 4
@LQIRETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"LQIRetry for LQICRCI_LQ to release ACK\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"LQICRC_NLQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"%s: No SCB valid for LQICRC_NLQ.  Resetting bus\0A\00", align 1
@LQIBADLQI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Need to handle BADLQI!\0A\00", align 1
@PARITYERR = common dso_local global i32 0, align 4
@PREVPHASE = common dso_local global i32 0, align 4
@P_DATAIN_DT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Acking %s to clear perror\0A\00", align 1
@SCSIDAT = common dso_local global i32 0, align 4
@P_MESGIN = common dso_local global i32 0, align 4
@MSG_PARITY_ERROR = common dso_local global i32 0, align 4
@SCB_TRANSMISSION_ERROR = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@HOST_MSG = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i32 0, align 4
@AHD_SHOW_RECOVERY = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_handle_transmission_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_handle_transmission_error(%struct.ahd_softc* %0) #0 {
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
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  store %struct.scb* null, %struct.scb** %3, align 8
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %14 = load i32, i32* @AHD_MODE_SCSI, align 4
  %15 = load i32, i32* @AHD_MODE_SCSI, align 4
  %16 = call i32 @ahd_set_modes(%struct.ahd_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %18 = load i32, i32* @LQISTAT1, align 4
  %19 = call i32 @ahd_inb(%struct.ahd_softc* %17, i32 %18)
  %20 = load i32, i32* @LQIPHASE_LQ, align 4
  %21 = load i32, i32* @LQIPHASE_NLQ, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %19, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %26 = load i32, i32* @LQISTAT2, align 4
  %27 = call i32 @ahd_inb(%struct.ahd_softc* %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @LQICRCI_NLQ, align 4
  %30 = load i32, i32* @LQICRCI_LQ, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %1
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AHD_NLQICRC_DELAYED_BUG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %34
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %43 = load i32, i32* @AHD_MODE_CFG, align 4
  %44 = load i32, i32* @AHD_MODE_CFG, align 4
  %45 = call i32 @ahd_set_modes(%struct.ahd_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %47 = load i32, i32* @LQISTATE, align 4
  %48 = call i32 @ahd_inb(%struct.ahd_softc* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp sge i32 %49, 30
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %12, align 4
  %53 = icmp sle i32 %52, 36
  br i1 %53, label %57, label %54

54:                                               ; preds = %51, %41
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 41
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @LQICRCI_NLQ, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %63 = load i32, i32* @AHD_MODE_SCSI, align 4
  %64 = load i32, i32* @AHD_MODE_SCSI, align 4
  %65 = call i32 @ahd_set_modes(%struct.ahd_softc* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %34, %1
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %68 = load i32, i32* @CLRLQIINT1, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @ahd_outb(%struct.ahd_softc* %67, i32 %68, i32 %69)
  %71 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %72 = load i32, i32* @LASTPHASE, align 4
  %73 = call i32 @ahd_inb(%struct.ahd_softc* %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %75 = load i32, i32* @SCSISIGI, align 4
  %76 = call i32 @ahd_inb(%struct.ahd_softc* %74, i32 %75)
  %77 = load i32, i32* @PHASE_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %7, align 4
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %80 = load i32, i32* @PERRDIAG, align 4
  %81 = call i32 @ahd_inb(%struct.ahd_softc* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @MSG_INITIATOR_DET_ERR, align 4
  store i32 %82, i32* %6, align 4
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %84 = load i32, i32* @CLRSINT1, align 4
  %85 = load i32, i32* @CLRSCSIPERR, align 4
  %86 = call i32 @ahd_outb(%struct.ahd_softc* %83, i32 %84, i32 %85)
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %66
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @LQICRCI_NLQ, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %90, %66
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @LQICRCI_NLQ, align 4
  %98 = load i32, i32* @LQIOVERI_NLQ, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %104 = call i32 @ahd_set_active_fifo(%struct.ahd_softc* %103)
  br label %105

105:                                              ; preds = %102, %95
  %106 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %107 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %106)
  store i32 %107, i32* %4, align 4
  %108 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %108, i32 %109)
  store %struct.scb* %110, %struct.scb** %3, align 8
  %111 = load %struct.scb*, %struct.scb** %3, align 8
  %112 = icmp ne %struct.scb* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load %struct.scb*, %struct.scb** %3, align 8
  %115 = call i64 @SCB_IS_SILENT(%struct.scb* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %117, %113, %105
  br label %120

120:                                              ; preds = %119, %90
  store i32 0, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @FALSE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %120
  %125 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %126 = call i8* @ahd_name(%struct.ahd_softc* %125)
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %126)
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @ahd_lqistat1_print(i32 %128, i32* %10, i32 50)
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @ahd_lastphase_print(i32 %130, i32* %10, i32 50)
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @ahd_scsisigi_print(i32 %132, i32* %10, i32 50)
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @ahd_perrdiag_print(i32 %134, i32* %10, i32 50)
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %137 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %138 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %137)
  %139 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %140 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %139)
  br label %141

141:                                              ; preds = %124, %120
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @LQIOVERI_LQ, align 4
  %144 = load i32, i32* @LQIOVERI_NLQ, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %141
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @FALSE, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %154 = call i8* @ahd_name(%struct.ahd_softc* %153)
  %155 = load i32, i32* %5, align 4
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i8* %154, i32 %155)
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %158 = call i32 @AHD_UNCORRECTABLE_ERROR(%struct.ahd_softc* %157)
  br label %159

159:                                              ; preds = %152, %148
  %160 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %161 = load i32, i32* @TRUE, align 4
  %162 = call i32 @ahd_reset_channel(%struct.ahd_softc* %160, i8 signext 65, i32 %161)
  br label %276

163:                                              ; preds = %141
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @LQICRCI_LQ, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %170 = load i32, i32* @LQCTL2, align 4
  %171 = load i32, i32* @LQIRETRY, align 4
  %172 = call i32 @ahd_outb(%struct.ahd_softc* %169, i32 %170, i32 %171)
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %174 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %175 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %174)
  br label %248

176:                                              ; preds = %163
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @LQICRCI_NLQ, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %176
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @FALSE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %181
  %188 = load %struct.scb*, %struct.scb** %3, align 8
  %189 = icmp eq %struct.scb* %188, null
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %192 = call i8* @ahd_name(%struct.ahd_softc* %191)
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %192)
  %194 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %195 = call i32 @AHD_UNCORRECTABLE_ERROR(%struct.ahd_softc* %194)
  %196 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %197 = load i32, i32* @TRUE, align 4
  %198 = call i32 @ahd_reset_channel(%struct.ahd_softc* %196, i8 signext 65, i32 %197)
  br label %276

199:                                              ; preds = %187
  br label %247

200:                                              ; preds = %176
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @LQIBADLQI, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %207 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %208 = load i32, i32* @TRUE, align 4
  %209 = call i32 @ahd_reset_channel(%struct.ahd_softc* %207, i8 signext 65, i32 %208)
  br label %276

210:                                              ; preds = %200
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* @PARITYERR, align 4
  %213 = load i32, i32* @PREVPHASE, align 4
  %214 = or i32 %212, %213
  %215 = and i32 %211, %214
  %216 = load i32, i32* @PARITYERR, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %245

218:                                              ; preds = %210
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @P_DATAIN_DT, align 4
  %221 = xor i32 %220, -1
  %222 = and i32 %219, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %218
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* @FALSE, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load i32, i32* %7, align 4
  %230 = call %struct.TYPE_2__* @ahd_lookup_phase_entry(i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %232)
  br label %234

234:                                              ; preds = %228, %224
  %235 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %236 = load i32, i32* @SCSIDAT, align 4
  %237 = call i32 @ahd_inb(%struct.ahd_softc* %235, i32 %236)
  br label %238

238:                                              ; preds = %234, %218
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @P_MESGIN, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = load i32, i32* @MSG_PARITY_ERROR, align 4
  store i32 %243, i32* %6, align 4
  br label %244

244:                                              ; preds = %242, %238
  br label %245

245:                                              ; preds = %244, %210
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246, %199
  br label %248

248:                                              ; preds = %247, %168
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %6, align 4
  %251 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %252 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  %253 = load %struct.scb*, %struct.scb** %3, align 8
  %254 = icmp ne %struct.scb* %253, null
  br i1 %254, label %255, label %265

255:                                              ; preds = %249
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* @MSG_INITIATOR_DET_ERR, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %255
  %260 = load i32, i32* @SCB_TRANSMISSION_ERROR, align 4
  %261 = load %struct.scb*, %struct.scb** %3, align 8
  %262 = getelementptr inbounds %struct.scb, %struct.scb* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %259, %255, %249
  %266 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %267 = load i32, i32* @MSG_OUT, align 4
  %268 = load i32, i32* @HOST_MSG, align 4
  %269 = call i32 @ahd_outb(%struct.ahd_softc* %266, i32 %267, i32 %268)
  %270 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %271 = load i32, i32* @CLRINT, align 4
  %272 = load i32, i32* @CLRSCSIINT, align 4
  %273 = call i32 @ahd_outb(%struct.ahd_softc* %270, i32 %271, i32 %272)
  %274 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %275 = call i32 @ahd_unpause(%struct.ahd_softc* %274)
  br label %276

276:                                              ; preds = %265, %205, %190, %159
  ret void
}

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_set_active_fifo(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i64 @SCB_IS_SILENT(%struct.scb*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_lqistat1_print(i32, i32*, i32) #1

declare dso_local i32 @ahd_lastphase_print(i32, i32*, i32) #1

declare dso_local i32 @ahd_scsisigi_print(i32, i32*, i32) #1

declare dso_local i32 @ahd_perrdiag_print(i32, i32*, i32) #1

declare dso_local i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_UNCORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_reset_channel(%struct.ahd_softc*, i8 signext, i32) #1

declare dso_local %struct.TYPE_2__* @ahd_lookup_phase_entry(i32) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
