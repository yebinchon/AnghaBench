; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dwc_otg_td = type { i64, i64*, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32 }

@DWC_OTG_MAX_CHANNELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"CH=%d ST=%d HCINT=0x%08x HCCHAR=0x%08x HCTSIZ=0x%08x\0A\00", align 1
@HCINT_RETRY = common dso_local global i32 0, align 4
@HCINT_ACK = common dso_local global i32 0, align 4
@HCINT_NYET = common dso_local global i32 0, align 4
@HCINT_STALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"CH=%d STALL\0A\00", align 1
@HCINT_ERRORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"CH=%d ERROR\0A\00", align 1
@UE_ISOCHRONOUS = common dso_local global i64 0, align 8
@UE_INTERRUPT = common dso_local global i64 0, align 8
@HCINT_DATATGLERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Retrying packet due to data toggle error\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Retrying complete split\0A\00", align 1
@HCINT_SOFTWARE_ONLY = common dso_local global i32 0, align 4
@HCSPLT_XACTPOS_BEGIN = common dso_local global i32 0, align 4
@DWC_OTG_TT_SLOT_MAX = common dso_local global i64 0, align 8
@HCSPLT_COMPSPLT = common dso_local global i32 0, align 4
@HCTSIZ_XFERSIZE_SHIFT = common dso_local global i32 0, align 4
@HCTSIZ_PKTCNT_SHIFT = common dso_local global i32 0, align 4
@HCTSIZ_PID_DATA1 = common dso_local global i32 0, align 4
@HCTSIZ_PID_SHIFT = common dso_local global i32 0, align 4
@HCTSIZ_PID_DATA0 = common dso_local global i32 0, align 4
@HCCHAR_EPDIR_IN = common dso_local global i32 0, align 4
@HCCHAR_ODDFRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dwc_otg_softc*, %struct.dwc_otg_td*)* @dwc_otg_host_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dwc_otg_host_data_rx(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dwc_otg_softc*, align 8
  %5 = alloca %struct.dwc_otg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %4, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %144, %2
  %12 = load i64, i64* %10, align 8
  %13 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %14 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %147

17:                                               ; preds = %11
  %18 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %19 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @DWC_OTG_MAX_CHANNELS, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %144

28:                                               ; preds = %17
  %29 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %30 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %40 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @DOTG_HCCHAR(i64 %44)
  %46 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %43, i32 %45)
  %47 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @DOTG_HCTSIZ(i64 %48)
  %50 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %47, i32 %49)
  %51 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %41, i32 %42, i32 %46, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @HCINT_RETRY, align 4
  %54 = load i32, i32* @HCINT_ACK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @HCINT_NYET, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %52, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %28
  br label %107

61:                                               ; preds = %28
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @HCINT_STALL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i64, i64* %9, align 8
  %68 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %70 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %69, i32 0, i32 3
  store i32 1, i32* %70, align 4
  %71 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %72 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %71, i32 0, i32 4
  store i32 1, i32* %72, align 8
  br label %645

73:                                               ; preds = %61
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @HCINT_ERRORS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %73
  %79 = load i64, i64* %9, align 8
  %80 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  %81 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %82 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %86 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %78
  %90 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %91 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 3
  br i1 %93, label %94, label %104

94:                                               ; preds = %89, %78
  %95 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %96 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %102 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %101, i32 0, i32 4
  store i32 1, i32* %102, align 8
  br label %645

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %89
  br label %105

105:                                              ; preds = %104, %73
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %60
  %108 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %109 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i64 @dwc_otg_host_data_rx_sub(%struct.dwc_otg_softc* %108, %struct.dwc_otg_td* %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %645

114:                                              ; preds = %107
  %115 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %116 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @HCINT_ERRORS, align 4
  %126 = load i32, i32* @HCINT_RETRY, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @HCINT_ACK, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @HCINT_NYET, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %124, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %114
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @HCINT_ERRORS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %141 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %140, i32 0, i32 5
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %134
  br label %143

143:                                              ; preds = %142, %114
  br label %144

144:                                              ; preds = %143, %27
  %145 = load i64, i64* %10, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %10, align 8
  br label %11

147:                                              ; preds = %11
  %148 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %149 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  switch i32 %150, label %317 [
    i32 131, label %151
    i32 130, label %158
    i32 128, label %285
    i32 129, label %316
  ]

151:                                              ; preds = %147
  %152 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %153 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %528

157:                                              ; preds = %151
  br label %319

158:                                              ; preds = %147
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @HCINT_RETRY, align 4
  %161 = load i32, i32* @HCINT_ERRORS, align 4
  %162 = or i32 %160, %161
  %163 = and i32 %159, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %209

165:                                              ; preds = %158
  %166 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %167 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %166, i32 0, i32 7
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @UE_INTERRUPT, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %165
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @HCINT_DATATGLERR, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %178 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %179 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 8
  %181 = xor i32 %180, 1
  store i32 %181, i32* %179, align 8
  br label %319

182:                                              ; preds = %171
  br label %198

183:                                              ; preds = %165
  %184 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %185 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %184, i32 0, i32 7
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %183
  %190 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %191 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %319

196:                                              ; preds = %189
  br label %645

197:                                              ; preds = %183
  br label %198

198:                                              ; preds = %197, %182
  %199 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %200 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %199, i32 0, i32 9
  store i32 1, i32* %200, align 4
  %201 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %202 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %201, i32 0, i32 10
  store i64 0, i64* %202, align 8
  %203 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %204 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %198
  br label %528

208:                                              ; preds = %198
  br label %319

209:                                              ; preds = %158
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @HCINT_NYET, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %209
  %215 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %216 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %319

220:                                              ; preds = %214
  %221 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %222 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %221, i32 0, i32 4
  store i32 1, i32* %222, align 8
  br label %645

223:                                              ; preds = %209
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* @HCINT_ACK, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %282

228:                                              ; preds = %223
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @HCINT_SOFTWARE_ONLY, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %228
  br label %644

234:                                              ; preds = %228
  %235 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %236 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %235, i32 0, i32 7
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %234
  %241 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %242 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %241, i32 0, i32 19
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @HCSPLT_XACTPOS_BEGIN, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %240
  br label %645

247:                                              ; preds = %240
  %248 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %249 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %247
  br label %319

253:                                              ; preds = %247
  br label %644

254:                                              ; preds = %234
  %255 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %256 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %255, i32 0, i32 18
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %254
  %260 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %261 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %260, i32 0, i32 17
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %259, %254
  %265 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %266 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %265, i32 0, i32 16
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  br label %645

270:                                              ; preds = %264
  br label %271

271:                                              ; preds = %270, %259
  %272 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %273 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %272, i32 0, i32 10
  store i64 0, i64* %273, align 8
  %274 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %275 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %274, i32 0, i32 9
  store i32 0, i32* %275, align 4
  %276 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %277 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %271
  br label %528

281:                                              ; preds = %271
  br label %319

282:                                              ; preds = %223
  br label %283

283:                                              ; preds = %282
  br label %284

284:                                              ; preds = %283
  br label %318

285:                                              ; preds = %147
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* @HCINT_RETRY, align 4
  %288 = load i32, i32* @HCINT_ERRORS, align 4
  %289 = or i32 %287, %288
  %290 = and i32 %286, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %285
  %293 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %294 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %293, i32 0, i32 9
  store i32 1, i32* %294, align 4
  %295 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %296 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %295, i32 0, i32 10
  store i64 0, i64* %296, align 8
  br label %528

297:                                              ; preds = %285
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* @HCINT_NYET, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %297
  %303 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %304 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %303, i32 0, i32 10
  store i64 0, i64* %304, align 8
  br label %528

305:                                              ; preds = %297
  %306 = load i32, i32* %6, align 4
  %307 = load i32, i32* @HCINT_ACK, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %305
  %311 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %312 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %311, i32 0, i32 9
  store i32 0, i32* %312, align 4
  br label %319

313:                                              ; preds = %305
  br label %314

314:                                              ; preds = %313
  br label %315

315:                                              ; preds = %314
  br label %318

316:                                              ; preds = %147
  br label %319

317:                                              ; preds = %147
  br label %318

318:                                              ; preds = %317, %315, %284
  br label %644

319:                                              ; preds = %316, %310, %281, %252, %219, %208, %194, %176, %157
  %320 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %321 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %322 = call i32 @dwc_otg_host_channel_free(%struct.dwc_otg_softc* %320, %struct.dwc_otg_td* %321)
  %323 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %324 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %381

327:                                              ; preds = %319
  %328 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %329 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %328, i32 0, i32 11
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %332 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = sub i64 %330, %333
  %335 = sub i64 %334, 1
  store i64 %335, i64* %8, align 8
  %336 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %337 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %336, i32 0, i32 10
  %338 = load i64, i64* %337, align 8
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %327
  %341 = load i64, i64* %8, align 8
  %342 = load i64, i64* @DWC_OTG_TT_SLOT_MAX, align 8
  %343 = icmp ult i64 %341, %342
  br i1 %343, label %344, label %354

344:                                              ; preds = %340, %327
  %345 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %346 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %345, i32 0, i32 7
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %344
  %351 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %352 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %351, i32 0, i32 2
  store i32 129, i32* %352, align 8
  br label %644

353:                                              ; preds = %344
  br label %354

354:                                              ; preds = %353, %340
  %355 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %356 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %359 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %358, i32 0, i32 12
  %360 = load i64, i64* %359, align 8
  %361 = sub i64 %357, %360
  store i64 %361, i64* %8, align 8
  %362 = load i64, i64* %8, align 8
  %363 = load i64, i64* @DWC_OTG_TT_SLOT_MAX, align 8
  %364 = icmp ugt i64 %362, %363
  br i1 %364, label %365, label %375

365:                                              ; preds = %354
  %366 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %367 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %366, i32 0, i32 7
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %370 = icmp ne i64 %368, %369
  br i1 %370, label %371, label %374

371:                                              ; preds = %365
  %372 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %373 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %372, i32 0, i32 4
  store i32 1, i32* %373, align 8
  br label %374

374:                                              ; preds = %371, %365
  br label %645

375:                                              ; preds = %354
  %376 = load i32, i32* @HCSPLT_COMPSPLT, align 4
  %377 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %378 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %377, i32 0, i32 6
  %379 = load i32, i32* %378, align 8
  %380 = or i32 %379, %376
  store i32 %380, i32* %378, align 8
  br label %390

381:                                              ; preds = %319
  %382 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %383 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %384 = call i64 @dwc_otg_host_rate_check(%struct.dwc_otg_softc* %382, %struct.dwc_otg_td* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %381
  %387 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %388 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %387, i32 0, i32 2
  store i32 129, i32* %388, align 8
  br label %644

389:                                              ; preds = %381
  br label %390

390:                                              ; preds = %389, %375
  %391 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %392 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %393 = call i64 @dwc_otg_host_channel_alloc(%struct.dwc_otg_softc* %391, %struct.dwc_otg_td* %392, i32 0)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %390
  %396 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %397 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %396, i32 0, i32 2
  store i32 129, i32* %397, align 8
  br label %644

398:                                              ; preds = %390
  %399 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %400 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %399, i32 0, i32 15
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %398
  %404 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %405 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %404, i32 0, i32 15
  store i64 0, i64* %405, align 8
  %406 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %407 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %406, i32 0, i32 8
  store i32 1, i32* %407, align 8
  br label %408

408:                                              ; preds = %403, %398
  %409 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %410 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %409, i32 0, i32 2
  store i32 130, i32* %410, align 8
  store i64 0, i64* %10, align 8
  br label %411

411:                                              ; preds = %518, %408
  %412 = load i64, i64* %10, align 8
  %413 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %414 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %412, %415
  br i1 %416, label %417, label %521

417:                                              ; preds = %411
  %418 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %419 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %418, i32 0, i32 1
  %420 = load i64*, i64** %419, align 8
  %421 = load i64, i64* %10, align 8
  %422 = getelementptr inbounds i64, i64* %420, i64 %421
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %9, align 8
  %424 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %425 = load i64, i64* %9, align 8
  %426 = call i32 @DOTG_HCTSIZ(i64 %425)
  %427 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %428 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %427, i32 0, i32 13
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @HCTSIZ_XFERSIZE_SHIFT, align 4
  %431 = shl i32 %429, %430
  %432 = load i32, i32* @HCTSIZ_PKTCNT_SHIFT, align 4
  %433 = shl i32 1, %432
  %434 = or i32 %431, %433
  %435 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %436 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %435, i32 0, i32 8
  %437 = load i32, i32* %436, align 8
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %417
  %440 = load i32, i32* @HCTSIZ_PID_DATA1, align 4
  %441 = load i32, i32* @HCTSIZ_PID_SHIFT, align 4
  %442 = shl i32 %440, %441
  br label %447

443:                                              ; preds = %417
  %444 = load i32, i32* @HCTSIZ_PID_DATA0, align 4
  %445 = load i32, i32* @HCTSIZ_PID_SHIFT, align 4
  %446 = shl i32 %444, %445
  br label %447

447:                                              ; preds = %443, %439
  %448 = phi i32 [ %442, %439 ], [ %446, %443 ]
  %449 = or i32 %434, %448
  %450 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %424, i32 %426, i32 %449)
  %451 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %452 = load i64, i64* %9, align 8
  %453 = call i32 @DOTG_HCSPLT(i64 %452)
  %454 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %455 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %454, i32 0, i32 6
  %456 = load i32, i32* %455, align 8
  %457 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %451, i32 %453, i32 %456)
  %458 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %459 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %458, i32 0, i32 14
  %460 = load i32, i32* %459, align 4
  store i32 %460, i32* %7, align 4
  %461 = load i32, i32* @HCCHAR_EPDIR_IN, align 4
  %462 = load i32, i32* %7, align 4
  %463 = or i32 %462, %461
  store i32 %463, i32* %7, align 4
  %464 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %465 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %464, i32 0, i32 7
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %469, label %507

469:                                              ; preds = %447
  %470 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %471 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %470, i32 0, i32 6
  %472 = load i32, i32* %471, align 8
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %490

474:                                              ; preds = %469
  %475 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %476 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = and i64 %477, 1
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %485

480:                                              ; preds = %474
  %481 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %482 = xor i32 %481, -1
  %483 = load i32, i32* %7, align 4
  %484 = and i32 %483, %482
  store i32 %484, i32* %7, align 4
  br label %489

485:                                              ; preds = %474
  %486 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %487 = load i32, i32* %7, align 4
  %488 = or i32 %487, %486
  store i32 %488, i32* %7, align 4
  br label %489

489:                                              ; preds = %485, %480
  br label %506

490:                                              ; preds = %469
  %491 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %492 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = and i64 %493, 1
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %500

496:                                              ; preds = %490
  %497 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %498 = load i32, i32* %7, align 4
  %499 = or i32 %498, %497
  store i32 %499, i32* %7, align 4
  br label %505

500:                                              ; preds = %490
  %501 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %502 = xor i32 %501, -1
  %503 = load i32, i32* %7, align 4
  %504 = and i32 %503, %502
  store i32 %504, i32* %7, align 4
  br label %505

505:                                              ; preds = %500, %496
  br label %506

506:                                              ; preds = %505, %489
  br label %512

507:                                              ; preds = %447
  %508 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %509 = xor i32 %508, -1
  %510 = load i32, i32* %7, align 4
  %511 = and i32 %510, %509
  store i32 %511, i32* %7, align 4
  br label %512

512:                                              ; preds = %507, %506
  %513 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %514 = load i64, i64* %9, align 8
  %515 = call i32 @DOTG_HCCHAR(i64 %514)
  %516 = load i32, i32* %7, align 4
  %517 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %513, i32 %515, i32 %516)
  br label %518

518:                                              ; preds = %512
  %519 = load i64, i64* %10, align 8
  %520 = add i64 %519, 1
  store i64 %520, i64* %10, align 8
  br label %411

521:                                              ; preds = %411
  %522 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %523 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = add i64 %524, 1
  %526 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %527 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %526, i32 0, i32 11
  store i64 %525, i64* %527, align 8
  br label %644

528:                                              ; preds = %302, %292, %280, %207, %156
  %529 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %530 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %531 = call i32 @dwc_otg_host_channel_free(%struct.dwc_otg_softc* %529, %struct.dwc_otg_td* %530)
  %532 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %533 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %532, i32 0, i32 12
  %534 = load i64, i64* %533, align 8
  %535 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %536 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %535, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = sub i64 %534, %537
  %539 = sub i64 %538, 1
  store i64 %539, i64* %8, align 8
  %540 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %541 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %540, i32 0, i32 10
  %542 = load i64, i64* %541, align 8
  %543 = icmp eq i64 %542, 0
  br i1 %543, label %548, label %544

544:                                              ; preds = %528
  %545 = load i64, i64* %8, align 8
  %546 = load i64, i64* @DWC_OTG_TT_SLOT_MAX, align 8
  %547 = icmp ult i64 %545, %546
  br i1 %547, label %548, label %551

548:                                              ; preds = %544, %528
  %549 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %550 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %549, i32 0, i32 2
  store i32 131, i32* %550, align 8
  br label %644

551:                                              ; preds = %544
  %552 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %553 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %552, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %556 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %555, i32 0, i32 12
  %557 = load i64, i64* %556, align 8
  %558 = sub i64 %554, %557
  store i64 %558, i64* %8, align 8
  %559 = load i64, i64* %8, align 8
  %560 = icmp ugt i64 %559, 5
  br i1 %560, label %561, label %566

561:                                              ; preds = %551
  %562 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %563 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %562, i32 0, i32 10
  store i64 0, i64* %563, align 8
  %564 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %565 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %564, i32 0, i32 2
  store i32 131, i32* %565, align 8
  br label %644

566:                                              ; preds = %551
  %567 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %568 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %569 = call i64 @dwc_otg_host_channel_alloc(%struct.dwc_otg_softc* %567, %struct.dwc_otg_td* %568, i32 0)
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %574

571:                                              ; preds = %566
  %572 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %573 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %572, i32 0, i32 2
  store i32 131, i32* %573, align 8
  br label %644

574:                                              ; preds = %566
  %575 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %576 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %575, i32 0, i32 1
  %577 = load i64*, i64** %576, align 8
  %578 = getelementptr inbounds i64, i64* %577, i64 0
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %9, align 8
  %580 = load i32, i32* @HCSPLT_COMPSPLT, align 4
  %581 = xor i32 %580, -1
  %582 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %583 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %582, i32 0, i32 6
  %584 = load i32, i32* %583, align 8
  %585 = and i32 %584, %581
  store i32 %585, i32* %583, align 8
  %586 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %587 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %586, i32 0, i32 2
  store i32 128, i32* %587, align 8
  %588 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %589 = load i64, i64* %9, align 8
  %590 = call i32 @DOTG_HCTSIZ(i64 %589)
  %591 = load i32, i32* @HCTSIZ_PID_DATA0, align 4
  %592 = load i32, i32* @HCTSIZ_PID_SHIFT, align 4
  %593 = shl i32 %591, %592
  %594 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %588, i32 %590, i32 %593)
  %595 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %596 = load i64, i64* %9, align 8
  %597 = call i32 @DOTG_HCSPLT(i64 %596)
  %598 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %599 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %598, i32 0, i32 6
  %600 = load i32, i32* %599, align 8
  %601 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %595, i32 %597, i32 %600)
  %602 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %603 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %602, i32 0, i32 0
  %604 = load i64, i64* %603, align 8
  %605 = and i64 %604, 1
  %606 = icmp eq i64 %605, 0
  br i1 %606, label %607, label %619

607:                                              ; preds = %574
  %608 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %609 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %608, i32 0, i32 7
  %610 = load i64, i64* %609, align 8
  %611 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %612 = icmp eq i64 %610, %611
  br i1 %612, label %613, label %619

613:                                              ; preds = %607
  %614 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %615 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %616 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %615, i32 0, i32 14
  %617 = load i32, i32* %616, align 4
  %618 = or i32 %617, %614
  store i32 %618, i32* %616, align 4
  br label %626

619:                                              ; preds = %607, %574
  %620 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %621 = xor i32 %620, -1
  %622 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %623 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %622, i32 0, i32 14
  %624 = load i32, i32* %623, align 4
  %625 = and i32 %624, %621
  store i32 %625, i32* %623, align 4
  br label %626

626:                                              ; preds = %619, %613
  %627 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %628 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %627, i32 0, i32 14
  %629 = load i32, i32* %628, align 4
  store i32 %629, i32* %7, align 4
  %630 = load i32, i32* @HCCHAR_EPDIR_IN, align 4
  %631 = load i32, i32* %7, align 4
  %632 = or i32 %631, %630
  store i32 %632, i32* %7, align 4
  %633 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %634 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %633, i32 0, i32 0
  %635 = load i64, i64* %634, align 8
  %636 = add i64 %635, 1
  %637 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %638 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %637, i32 0, i32 11
  store i64 %636, i64* %638, align 8
  %639 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %640 = load i64, i64* %9, align 8
  %641 = call i32 @DOTG_HCCHAR(i64 %640)
  %642 = load i32, i32* %7, align 4
  %643 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %639, i32 %641, i32 %642)
  br label %644

644:                                              ; preds = %626, %571, %561, %548, %521, %395, %386, %350, %318, %253, %233
  store i64 1, i64* %3, align 8
  br label %649

645:                                              ; preds = %374, %269, %246, %220, %196, %113, %100, %66
  %646 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %647 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %648 = call i32 @dwc_otg_host_channel_free(%struct.dwc_otg_softc* %646, %struct.dwc_otg_td* %647)
  store i64 0, i64* %3, align 8
  br label %649

649:                                              ; preds = %645, %644
  %650 = load i64, i64* %3, align 8
  ret i64 %650
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DOTG_HCCHAR(i64) #1

declare dso_local i32 @DOTG_HCTSIZ(i64) #1

declare dso_local i64 @dwc_otg_host_data_rx_sub(%struct.dwc_otg_softc*, %struct.dwc_otg_td*, i64) #1

declare dso_local i32 @dwc_otg_host_channel_free(%struct.dwc_otg_softc*, %struct.dwc_otg_td*) #1

declare dso_local i64 @dwc_otg_host_rate_check(%struct.dwc_otg_softc*, %struct.dwc_otg_td*) #1

declare dso_local i64 @dwc_otg_host_channel_alloc(%struct.dwc_otg_softc*, %struct.dwc_otg_td*, i32) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @DOTG_HCSPLT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
