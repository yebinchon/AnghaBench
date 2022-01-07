; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dwc_otg_td = type { i64*, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64 }

@DWC_OTG_MAX_CHANNELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"CH=%d ST=%d HCINT=0x%08x HCCHAR=0x%08x HCTSIZ=0x%08x\0A\00", align 1
@HCINT_RETRY = common dso_local global i32 0, align 4
@HCINT_ACK = common dso_local global i32 0, align 4
@HCINT_NYET = common dso_local global i32 0, align 4
@HCINT_STALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"CH=%d STALL\0A\00", align 1
@HCINT_ERRORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"CH=%d ERROR\0A\00", align 1
@HCINT_HCH_DONE_MASK = common dso_local global i32 0, align 4
@DWC_OTG_TT_SLOT_MAX = common dso_local global i64 0, align 8
@UE_ISOCHRONOUS = common dso_local global i64 0, align 8
@HCSPLT_COMPSPLT = common dso_local global i32 0, align 4
@HCSPLT_XACTLEN_BURST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"TT overflow\0A\00", align 1
@HCSPLT_XACTPOS_MASK = common dso_local global i32 0, align 4
@HCSPLT_XACTPOS_ALL = common dso_local global i32 0, align 4
@HCSPLT_XACTPOS_SHIFT = common dso_local global i32 0, align 4
@HCTSIZ_XFERSIZE_SHIFT = common dso_local global i32 0, align 4
@HCTSIZ_PKTCNT_SHIFT = common dso_local global i32 0, align 4
@HCTSIZ_PID_DATA1 = common dso_local global i32 0, align 4
@HCTSIZ_PID_SHIFT = common dso_local global i32 0, align 4
@HCTSIZ_PID_DATA0 = common dso_local global i32 0, align 4
@HCTSIZ_PID_DATA2 = common dso_local global i32 0, align 4
@HCTSIZ_PID_MDATA = common dso_local global i32 0, align 4
@HCCHAR_EPDIR_IN = common dso_local global i32 0, align 4
@HCCHAR_ODDFRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dwc_otg_softc*, %struct.dwc_otg_td*)* @dwc_otg_host_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dwc_otg_host_data_tx(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dwc_otg_softc*, align 8
  %5 = alloca %struct.dwc_otg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %4, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %5, align 8
  %13 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %14 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %15 = call i32 @dwc_otg_host_dump_rx(%struct.dwc_otg_softc* %13, %struct.dwc_otg_td* %14)
  %16 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %17 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %20 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @DWC_OTG_MAX_CHANNELS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %118

27:                                               ; preds = %2
  %28 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %29 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %37 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @DOTG_HCCHAR(i64 %41)
  %43 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %40, i32 %42)
  %44 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @DOTG_HCTSIZ(i64 %45)
  %47 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %44, i32 %46)
  %48 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %38, i32 %39, i32 %43, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @HCINT_RETRY, align 4
  %51 = load i32, i32* @HCINT_ACK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @HCINT_NYET, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %49, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %27
  br label %97

58:                                               ; preds = %27
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @HCINT_STALL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i64, i64* %10, align 8
  %65 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %67 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %66, i32 0, i32 3
  store i32 1, i32* %67, align 4
  %68 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %69 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %68, i32 0, i32 4
  store i32 1, i32* %69, align 8
  br label %782

70:                                               ; preds = %58
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @HCINT_ERRORS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = load i64, i64* %10, align 8
  %77 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  %78 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %79 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %83 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %75
  %87 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %88 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 3
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %75
  %92 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %93 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %92, i32 0, i32 4
  store i32 1, i32* %93, align 8
  br label %782

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %70
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %57
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @HCINT_ERRORS, align 4
  %100 = load i32, i32* @HCINT_RETRY, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @HCINT_ACK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @HCINT_NYET, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %98, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %97
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @HCINT_ERRORS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %115 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %114, i32 0, i32 5
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116, %97
  br label %119

118:                                              ; preds = %2
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %117
  %120 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %121 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %296 [
    i32 133, label %123
    i32 131, label %124
    i32 128, label %189
    i32 130, label %213
    i32 129, label %274
    i32 132, label %275
  ]

123:                                              ; preds = %119
  br label %298

124:                                              ; preds = %119
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @HCINT_RETRY, align 4
  %127 = load i32, i32* @HCINT_ERRORS, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %133 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %132, i32 0, i32 7
  store i32 1, i32* %133, align 4
  %134 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %135 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %134, i32 0, i32 8
  store i64 0, i64* %135, align 8
  br label %298

136:                                              ; preds = %124
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @HCINT_ACK, align 4
  %139 = load i32, i32* @HCINT_NYET, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %137, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %187

143:                                              ; preds = %136
  %144 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %145 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %144, i32 0, i32 10
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %148 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %147, i32 0, i32 9
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %146
  store i64 %150, i64* %148, align 8
  %151 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %152 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %151, i32 0, i32 10
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %155 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %154, i32 0, i32 11
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %156, %153
  store i64 %157, i64* %155, align 8
  %158 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %159 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %158, i32 0, i32 12
  %160 = load i32, i32* %159, align 8
  %161 = xor i32 %160, 1
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @HCINT_NYET, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %143
  %167 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %168 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %167, i32 0, i32 7
  store i32 1, i32* %168, align 4
  br label %172

169:                                              ; preds = %143
  %170 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %171 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %170, i32 0, i32 7
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %169, %166
  %173 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %174 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %173, i32 0, i32 8
  store i64 0, i64* %174, align 8
  %175 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %176 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %175, i32 0, i32 11
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %172
  %180 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %181 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %180, i32 0, i32 13
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %782

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %185, %172
  br label %298

187:                                              ; preds = %136
  br label %188

188:                                              ; preds = %187
  br label %297

189:                                              ; preds = %119
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @HCINT_RETRY, align 4
  %192 = load i32, i32* @HCINT_ERRORS, align 4
  %193 = or i32 %191, %192
  %194 = and i32 %190, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %189
  %197 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %198 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %197, i32 0, i32 7
  store i32 1, i32* %198, align 4
  %199 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %200 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %199, i32 0, i32 8
  store i64 0, i64* %200, align 8
  br label %298

201:                                              ; preds = %189
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @HCINT_ACK, align 4
  %204 = load i32, i32* @HCINT_NYET, align 4
  %205 = or i32 %203, %204
  %206 = and i32 %202, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %201
  %209 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %210 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %209, i32 0, i32 7
  store i32 0, i32* %210, align 4
  br label %661

211:                                              ; preds = %201
  br label %212

212:                                              ; preds = %211
  br label %297

213:                                              ; preds = %119
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* @HCINT_NYET, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %661

219:                                              ; preds = %213
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @HCINT_RETRY, align 4
  %222 = load i32, i32* @HCINT_ERRORS, align 4
  %223 = or i32 %221, %222
  %224 = and i32 %220, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %219
  %227 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %228 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %227, i32 0, i32 7
  store i32 1, i32* %228, align 4
  %229 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %230 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %229, i32 0, i32 8
  store i64 0, i64* %230, align 8
  br label %298

231:                                              ; preds = %219
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @HCINT_ACK, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %271

236:                                              ; preds = %231
  %237 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %238 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %237, i32 0, i32 10
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %241 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %240, i32 0, i32 9
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %242, %239
  store i64 %243, i64* %241, align 8
  %244 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %245 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %244, i32 0, i32 10
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %248 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %247, i32 0, i32 11
  %249 = load i64, i64* %248, align 8
  %250 = sub nsw i64 %249, %246
  store i64 %250, i64* %248, align 8
  %251 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %252 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %251, i32 0, i32 12
  %253 = load i32, i32* %252, align 8
  %254 = xor i32 %253, 1
  store i32 %254, i32* %252, align 8
  %255 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %256 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %255, i32 0, i32 7
  store i32 0, i32* %256, align 4
  %257 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %258 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %257, i32 0, i32 8
  store i64 0, i64* %258, align 8
  %259 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %260 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %259, i32 0, i32 11
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %236
  %264 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %265 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %264, i32 0, i32 13
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %263
  br label %782

269:                                              ; preds = %263
  br label %270

270:                                              ; preds = %269, %236
  br label %298

271:                                              ; preds = %231
  br label %272

272:                                              ; preds = %271
  br label %273

273:                                              ; preds = %272
  br label %297

274:                                              ; preds = %119
  br label %661

275:                                              ; preds = %119
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* @HCINT_HCH_DONE_MASK, align 4
  %278 = and i32 %276, %277
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %275
  br label %297

281:                                              ; preds = %275
  %282 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %283 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %282, i32 0, i32 10
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %286 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %285, i32 0, i32 9
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %287, %284
  store i64 %288, i64* %286, align 8
  %289 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %290 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %289, i32 0, i32 10
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %293 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %292, i32 0, i32 11
  %294 = load i64, i64* %293, align 8
  %295 = sub nsw i64 %294, %291
  store i64 %295, i64* %293, align 8
  br label %782

296:                                              ; preds = %119
  br label %297

297:                                              ; preds = %296, %280, %273, %212, %188
  br label %781

298:                                              ; preds = %270, %226, %196, %186, %131, %123
  %299 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %300 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %301 = call i32 @dwc_otg_host_channel_free(%struct.dwc_otg_softc* %299, %struct.dwc_otg_td* %300)
  %302 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %303 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %342

306:                                              ; preds = %298
  %307 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %308 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %307, i32 0, i32 14
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %311 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = sub i64 %309, %312
  %314 = sub i64 %313, 1
  store i64 %314, i64* %9, align 8
  %315 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %316 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %315, i32 0, i32 8
  %317 = load i64, i64* %316, align 8
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %323, label %319

319:                                              ; preds = %306
  %320 = load i64, i64* %9, align 8
  %321 = load i64, i64* @DWC_OTG_TT_SLOT_MAX, align 8
  %322 = icmp ult i64 %320, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %319, %306
  %324 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %325 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %324, i32 0, i32 2
  store i32 133, i32* %325, align 8
  br label %781

326:                                              ; preds = %319
  %327 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %328 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %331 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %330, i32 0, i32 14
  %332 = load i64, i64* %331, align 8
  %333 = sub i64 %329, %332
  store i64 %333, i64* %9, align 8
  %334 = load i64, i64* %9, align 8
  %335 = icmp ugt i64 %334, 5
  br i1 %335, label %336, label %341

336:                                              ; preds = %326
  %337 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %338 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %337, i32 0, i32 8
  store i64 0, i64* %338, align 8
  %339 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %340 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %339, i32 0, i32 2
  store i32 133, i32* %340, align 8
  br label %781

341:                                              ; preds = %326
  br label %351

342:                                              ; preds = %298
  %343 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %344 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %345 = call i64 @dwc_otg_host_rate_check(%struct.dwc_otg_softc* %343, %struct.dwc_otg_td* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %342
  %348 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %349 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %348, i32 0, i32 2
  store i32 133, i32* %349, align 8
  br label %781

350:                                              ; preds = %342
  br label %351

351:                                              ; preds = %350, %341
  %352 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %353 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %354 = call i64 @dwc_otg_host_channel_alloc(%struct.dwc_otg_softc* %352, %struct.dwc_otg_td* %353, i32 1)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %351
  %357 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %358 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %357, i32 0, i32 2
  store i32 133, i32* %358, align 8
  br label %781

359:                                              ; preds = %351
  %360 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %361 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %360, i32 0, i32 21
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %359
  %365 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %366 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %365, i32 0, i32 21
  store i64 0, i64* %366, align 8
  %367 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %368 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %367, i32 0, i32 12
  store i32 1, i32* %368, align 8
  br label %369

369:                                              ; preds = %364, %359
  %370 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %371 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %370, i32 0, i32 15
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %415

375:                                              ; preds = %369
  %376 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %377 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %376, i32 0, i32 2
  store i32 132, i32* %377, align 8
  %378 = load i32, i32* @HCSPLT_COMPSPLT, align 4
  %379 = xor i32 %378, -1
  %380 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %381 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 8
  %383 = and i32 %382, %379
  store i32 %383, i32* %381, align 8
  %384 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %385 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 8
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %414

388:                                              ; preds = %375
  %389 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %390 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %389, i32 0, i32 11
  %391 = load i64, i64* %390, align 8
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %6, align 4
  %393 = load i32, i32* %6, align 4
  %394 = load i32, i32* @HCSPLT_XACTLEN_BURST, align 4
  %395 = icmp sgt i32 %393, %394
  br i1 %395, label %396, label %400

396:                                              ; preds = %388
  %397 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %398 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %399 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %398, i32 0, i32 4
  store i32 1, i32* %399, align 8
  br label %782

400:                                              ; preds = %388
  %401 = load i32, i32* @HCSPLT_XACTPOS_MASK, align 4
  %402 = xor i32 %401, -1
  %403 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %404 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %403, i32 0, i32 6
  %405 = load i32, i32* %404, align 8
  %406 = and i32 %405, %402
  store i32 %406, i32* %404, align 8
  %407 = load i32, i32* @HCSPLT_XACTPOS_ALL, align 4
  %408 = load i32, i32* @HCSPLT_XACTPOS_SHIFT, align 4
  %409 = shl i32 %407, %408
  %410 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %411 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %410, i32 0, i32 6
  %412 = load i32, i32* %411, align 8
  %413 = or i32 %412, %409
  store i32 %413, i32* %411, align 8
  br label %414

414:                                              ; preds = %400, %375
  br label %433

415:                                              ; preds = %369
  %416 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %417 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %416, i32 0, i32 6
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %429

420:                                              ; preds = %415
  %421 = load i32, i32* @HCSPLT_COMPSPLT, align 4
  %422 = xor i32 %421, -1
  %423 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %424 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %423, i32 0, i32 6
  %425 = load i32, i32* %424, align 8
  %426 = and i32 %425, %422
  store i32 %426, i32* %424, align 8
  %427 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %428 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %427, i32 0, i32 2
  store i32 128, i32* %428, align 8
  br label %432

429:                                              ; preds = %415
  %430 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %431 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %430, i32 0, i32 2
  store i32 131, i32* %431, align 8
  br label %432

432:                                              ; preds = %429, %420
  br label %433

433:                                              ; preds = %432, %414
  %434 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %435 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %434, i32 0, i32 10
  store i64 0, i64* %435, align 8
  store i64 0, i64* %11, align 8
  br label %436

436:                                              ; preds = %657, %433
  %437 = load i64, i64* %11, align 8
  %438 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %439 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %438, i32 0, i32 16
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %437, %440
  br i1 %441, label %442, label %660

442:                                              ; preds = %436
  %443 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %444 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %443, i32 0, i32 0
  %445 = load i64*, i64** %444, align 8
  %446 = load i64, i64* %11, align 8
  %447 = getelementptr inbounds i64, i64* %445, i64 %446
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %10, align 8
  %449 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %450 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %449, i32 0, i32 17
  %451 = load i32, i32* %450, align 8
  store i32 %451, i32* %6, align 4
  %452 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %453 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %452, i32 0, i32 11
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %456 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %455, i32 0, i32 10
  %457 = load i64, i64* %456, align 8
  %458 = sub nsw i64 %454, %457
  %459 = trunc i64 %458 to i32
  store i32 %459, i32* %12, align 4
  %460 = load i32, i32* %12, align 4
  %461 = load i32, i32* %6, align 4
  %462 = icmp slt i32 %460, %461
  br i1 %462, label %463, label %467

463:                                              ; preds = %442
  %464 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %465 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %464, i32 0, i32 13
  store i32 1, i32* %465, align 4
  %466 = load i32, i32* %12, align 4
  store i32 %466, i32* %6, align 4
  br label %467

467:                                              ; preds = %463, %442
  %468 = load i32, i32* %6, align 4
  %469 = load i32, i32* %12, align 4
  %470 = icmp eq i32 %468, %469
  br i1 %470, label %471, label %530

471:                                              ; preds = %467
  %472 = load i64, i64* %11, align 8
  switch i64 %472, label %514 [
    i64 0, label %473
    i64 1, label %499
  ]

473:                                              ; preds = %471
  %474 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %475 = load i64, i64* %10, align 8
  %476 = call i32 @DOTG_HCTSIZ(i64 %475)
  %477 = load i32, i32* %6, align 4
  %478 = load i32, i32* @HCTSIZ_XFERSIZE_SHIFT, align 4
  %479 = shl i32 %477, %478
  %480 = load i32, i32* @HCTSIZ_PKTCNT_SHIFT, align 4
  %481 = shl i32 1, %480
  %482 = or i32 %479, %481
  %483 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %484 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %483, i32 0, i32 12
  %485 = load i32, i32* %484, align 8
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %491

487:                                              ; preds = %473
  %488 = load i32, i32* @HCTSIZ_PID_DATA1, align 4
  %489 = load i32, i32* @HCTSIZ_PID_SHIFT, align 4
  %490 = shl i32 %488, %489
  br label %495

491:                                              ; preds = %473
  %492 = load i32, i32* @HCTSIZ_PID_DATA0, align 4
  %493 = load i32, i32* @HCTSIZ_PID_SHIFT, align 4
  %494 = shl i32 %492, %493
  br label %495

495:                                              ; preds = %491, %487
  %496 = phi i32 [ %490, %487 ], [ %494, %491 ]
  %497 = or i32 %482, %496
  %498 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %474, i32 %476, i32 %497)
  br label %529

499:                                              ; preds = %471
  %500 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %501 = load i64, i64* %10, align 8
  %502 = call i32 @DOTG_HCTSIZ(i64 %501)
  %503 = load i32, i32* %6, align 4
  %504 = load i32, i32* @HCTSIZ_XFERSIZE_SHIFT, align 4
  %505 = shl i32 %503, %504
  %506 = load i32, i32* @HCTSIZ_PKTCNT_SHIFT, align 4
  %507 = shl i32 1, %506
  %508 = or i32 %505, %507
  %509 = load i32, i32* @HCTSIZ_PID_DATA1, align 4
  %510 = load i32, i32* @HCTSIZ_PID_SHIFT, align 4
  %511 = shl i32 %509, %510
  %512 = or i32 %508, %511
  %513 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %500, i32 %502, i32 %512)
  br label %529

514:                                              ; preds = %471
  %515 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %516 = load i64, i64* %10, align 8
  %517 = call i32 @DOTG_HCTSIZ(i64 %516)
  %518 = load i32, i32* %6, align 4
  %519 = load i32, i32* @HCTSIZ_XFERSIZE_SHIFT, align 4
  %520 = shl i32 %518, %519
  %521 = load i32, i32* @HCTSIZ_PKTCNT_SHIFT, align 4
  %522 = shl i32 1, %521
  %523 = or i32 %520, %522
  %524 = load i32, i32* @HCTSIZ_PID_DATA2, align 4
  %525 = load i32, i32* @HCTSIZ_PID_SHIFT, align 4
  %526 = shl i32 %524, %525
  %527 = or i32 %523, %526
  %528 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %515, i32 %517, i32 %527)
  br label %529

529:                                              ; preds = %514, %499, %495
  br label %583

530:                                              ; preds = %467
  %531 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %532 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %531, i32 0, i32 15
  %533 = load i64, i64* %532, align 8
  %534 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %535 = icmp eq i64 %533, %534
  br i1 %535, label %536, label %556

536:                                              ; preds = %530
  %537 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %538 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %537, i32 0, i32 16
  %539 = load i64, i64* %538, align 8
  %540 = icmp ugt i64 %539, 1
  br i1 %540, label %541, label %556

541:                                              ; preds = %536
  %542 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %543 = load i64, i64* %10, align 8
  %544 = call i32 @DOTG_HCTSIZ(i64 %543)
  %545 = load i32, i32* %6, align 4
  %546 = load i32, i32* @HCTSIZ_XFERSIZE_SHIFT, align 4
  %547 = shl i32 %545, %546
  %548 = load i32, i32* @HCTSIZ_PKTCNT_SHIFT, align 4
  %549 = shl i32 1, %548
  %550 = or i32 %547, %549
  %551 = load i32, i32* @HCTSIZ_PID_MDATA, align 4
  %552 = load i32, i32* @HCTSIZ_PID_SHIFT, align 4
  %553 = shl i32 %551, %552
  %554 = or i32 %550, %553
  %555 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %542, i32 %544, i32 %554)
  br label %582

556:                                              ; preds = %536, %530
  %557 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %558 = load i64, i64* %10, align 8
  %559 = call i32 @DOTG_HCTSIZ(i64 %558)
  %560 = load i32, i32* %6, align 4
  %561 = load i32, i32* @HCTSIZ_XFERSIZE_SHIFT, align 4
  %562 = shl i32 %560, %561
  %563 = load i32, i32* @HCTSIZ_PKTCNT_SHIFT, align 4
  %564 = shl i32 1, %563
  %565 = or i32 %562, %564
  %566 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %567 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %566, i32 0, i32 12
  %568 = load i32, i32* %567, align 8
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %574

570:                                              ; preds = %556
  %571 = load i32, i32* @HCTSIZ_PID_DATA1, align 4
  %572 = load i32, i32* @HCTSIZ_PID_SHIFT, align 4
  %573 = shl i32 %571, %572
  br label %578

574:                                              ; preds = %556
  %575 = load i32, i32* @HCTSIZ_PID_DATA0, align 4
  %576 = load i32, i32* @HCTSIZ_PID_SHIFT, align 4
  %577 = shl i32 %575, %576
  br label %578

578:                                              ; preds = %574, %570
  %579 = phi i32 [ %573, %570 ], [ %577, %574 ]
  %580 = or i32 %565, %579
  %581 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %557, i32 %559, i32 %580)
  br label %582

582:                                              ; preds = %578, %541
  br label %583

583:                                              ; preds = %582, %529
  %584 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %585 = load i64, i64* %10, align 8
  %586 = call i32 @DOTG_HCSPLT(i64 %585)
  %587 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %588 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %587, i32 0, i32 6
  %589 = load i32, i32* %588, align 8
  %590 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %584, i32 %586, i32 %589)
  %591 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %592 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %591, i32 0, i32 18
  %593 = load i32, i32* %592, align 4
  store i32 %593, i32* %8, align 4
  %594 = load i32, i32* @HCCHAR_EPDIR_IN, align 4
  %595 = xor i32 %594, -1
  %596 = load i32, i32* %8, align 4
  %597 = and i32 %596, %595
  store i32 %597, i32* %8, align 4
  %598 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %599 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %598, i32 0, i32 0
  %600 = load i64, i64* %599, align 8
  %601 = and i64 %600, 1
  %602 = icmp eq i64 %601, 0
  br i1 %602, label %603, label %613

603:                                              ; preds = %583
  %604 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %605 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %604, i32 0, i32 15
  %606 = load i64, i64* %605, align 8
  %607 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %608 = icmp eq i64 %606, %607
  br i1 %608, label %609, label %613

609:                                              ; preds = %603
  %610 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %611 = load i32, i32* %8, align 4
  %612 = or i32 %611, %610
  store i32 %612, i32* %8, align 4
  br label %618

613:                                              ; preds = %603, %583
  %614 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %615 = xor i32 %614, -1
  %616 = load i32, i32* %8, align 4
  %617 = and i32 %616, %615
  store i32 %617, i32* %8, align 4
  br label %618

618:                                              ; preds = %613, %609
  %619 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %620 = load i64, i64* %10, align 8
  %621 = call i32 @DOTG_HCCHAR(i64 %620)
  %622 = load i32, i32* %8, align 4
  %623 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %619, i32 %621, i32 %622)
  %624 = load i32, i32* %6, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %642

626:                                              ; preds = %618
  %627 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %628 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %629 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %628, i32 0, i32 20
  %630 = load i32, i32* %629, align 4
  %631 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %632 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %631, i32 0, i32 9
  %633 = load i64, i64* %632, align 8
  %634 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %635 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %634, i32 0, i32 10
  %636 = load i64, i64* %635, align 8
  %637 = add nsw i64 %633, %636
  %638 = load i64, i64* %10, align 8
  %639 = call i32 @DOTG_DFIFO(i64 %638)
  %640 = load i32, i32* %6, align 4
  %641 = call i32 @dwc_otg_write_fifo(%struct.dwc_otg_softc* %627, i32 %630, i64 %637, i32 %639, i32 %640)
  br label %642

642:                                              ; preds = %626, %618
  %643 = load i32, i32* %6, align 4
  %644 = sext i32 %643 to i64
  %645 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %646 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %645, i32 0, i32 10
  %647 = load i64, i64* %646, align 8
  %648 = add nsw i64 %647, %644
  store i64 %648, i64* %646, align 8
  %649 = load i64, i64* %11, align 8
  %650 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %651 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %650, i32 0, i32 1
  store i64 %649, i64* %651, align 8
  %652 = load i32, i32* %6, align 4
  %653 = load i32, i32* %12, align 4
  %654 = icmp eq i32 %652, %653
  br i1 %654, label %655, label %656

655:                                              ; preds = %642
  br label %660

656:                                              ; preds = %642
  br label %657

657:                                              ; preds = %656
  %658 = load i64, i64* %11, align 8
  %659 = add i64 %658, 1
  store i64 %659, i64* %11, align 8
  br label %436

660:                                              ; preds = %655, %436
  br label %781

661:                                              ; preds = %274, %218, %208
  %662 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %663 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %664 = call i32 @dwc_otg_host_channel_free(%struct.dwc_otg_softc* %662, %struct.dwc_otg_td* %663)
  %665 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %666 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %665, i32 0, i32 19
  %667 = load i32, i32* %666, align 8
  %668 = sext i32 %667 to i64
  %669 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %670 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %669, i32 0, i32 0
  %671 = load i64, i64* %670, align 8
  %672 = sub i64 %668, %671
  %673 = sub i64 %672, 1
  store i64 %673, i64* %9, align 8
  %674 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %675 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %674, i32 0, i32 8
  %676 = load i64, i64* %675, align 8
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %682, label %678

678:                                              ; preds = %661
  %679 = load i64, i64* %9, align 8
  %680 = load i64, i64* @DWC_OTG_TT_SLOT_MAX, align 8
  %681 = icmp ult i64 %679, %680
  br i1 %681, label %682, label %685

682:                                              ; preds = %678, %661
  %683 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %684 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %683, i32 0, i32 2
  store i32 129, i32* %684, align 8
  br label %781

685:                                              ; preds = %678
  %686 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %687 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %686, i32 0, i32 0
  %688 = load i64, i64* %687, align 8
  %689 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %690 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %689, i32 0, i32 14
  %691 = load i64, i64* %690, align 8
  %692 = sub i64 %688, %691
  store i64 %692, i64* %9, align 8
  %693 = load i64, i64* %9, align 8
  %694 = load i64, i64* @DWC_OTG_TT_SLOT_MAX, align 8
  %695 = icmp ugt i64 %693, %694
  br i1 %695, label %696, label %706

696:                                              ; preds = %685
  %697 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %698 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %697, i32 0, i32 15
  %699 = load i64, i64* %698, align 8
  %700 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %701 = icmp ne i64 %699, %700
  br i1 %701, label %702, label %705

702:                                              ; preds = %696
  %703 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %704 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %703, i32 0, i32 4
  store i32 1, i32* %704, align 8
  br label %705

705:                                              ; preds = %702, %696
  br label %782

706:                                              ; preds = %685
  %707 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %708 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %709 = call i64 @dwc_otg_host_channel_alloc(%struct.dwc_otg_softc* %707, %struct.dwc_otg_td* %708, i32 0)
  %710 = icmp ne i64 %709, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %706
  %712 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %713 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %712, i32 0, i32 2
  store i32 129, i32* %713, align 8
  br label %781

714:                                              ; preds = %706
  %715 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %716 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %715, i32 0, i32 0
  %717 = load i64*, i64** %716, align 8
  %718 = getelementptr inbounds i64, i64* %717, i64 0
  %719 = load i64, i64* %718, align 8
  store i64 %719, i64* %10, align 8
  %720 = load i32, i32* @HCSPLT_COMPSPLT, align 4
  %721 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %722 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %721, i32 0, i32 6
  %723 = load i32, i32* %722, align 8
  %724 = or i32 %723, %720
  store i32 %724, i32* %722, align 8
  %725 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %726 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %725, i32 0, i32 2
  store i32 130, i32* %726, align 8
  %727 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %728 = load i64, i64* %10, align 8
  %729 = call i32 @DOTG_HCTSIZ(i64 %728)
  %730 = load i32, i32* @HCTSIZ_PID_DATA0, align 4
  %731 = load i32, i32* @HCTSIZ_PID_SHIFT, align 4
  %732 = shl i32 %730, %731
  %733 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %727, i32 %729, i32 %732)
  %734 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %735 = load i64, i64* %10, align 8
  %736 = call i32 @DOTG_HCSPLT(i64 %735)
  %737 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %738 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %737, i32 0, i32 6
  %739 = load i32, i32* %738, align 8
  %740 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %734, i32 %736, i32 %739)
  %741 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %742 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %741, i32 0, i32 18
  %743 = load i32, i32* %742, align 4
  store i32 %743, i32* %8, align 4
  %744 = load i32, i32* @HCCHAR_EPDIR_IN, align 4
  %745 = xor i32 %744, -1
  %746 = load i32, i32* %8, align 4
  %747 = and i32 %746, %745
  store i32 %747, i32* %8, align 4
  %748 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %749 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %748, i32 0, i32 0
  %750 = load i64, i64* %749, align 8
  %751 = and i64 %750, 1
  %752 = icmp ne i64 %751, 0
  br i1 %752, label %753, label %763

753:                                              ; preds = %714
  %754 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %755 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %754, i32 0, i32 15
  %756 = load i64, i64* %755, align 8
  %757 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %758 = icmp eq i64 %756, %757
  br i1 %758, label %759, label %763

759:                                              ; preds = %753
  %760 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %761 = load i32, i32* %8, align 4
  %762 = or i32 %761, %760
  store i32 %762, i32* %8, align 4
  br label %768

763:                                              ; preds = %753, %714
  %764 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %765 = xor i32 %764, -1
  %766 = load i32, i32* %8, align 4
  %767 = and i32 %766, %765
  store i32 %767, i32* %8, align 4
  br label %768

768:                                              ; preds = %763, %759
  %769 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %770 = load i64, i64* %10, align 8
  %771 = call i32 @DOTG_HCCHAR(i64 %770)
  %772 = load i32, i32* %8, align 4
  %773 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %769, i32 %771, i32 %772)
  %774 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %775 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %774, i32 0, i32 0
  %776 = load i64, i64* %775, align 8
  %777 = add i64 %776, 1
  %778 = trunc i64 %777 to i32
  %779 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %780 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %779, i32 0, i32 19
  store i32 %778, i32* %780, align 8
  br label %781

781:                                              ; preds = %768, %711, %682, %660, %356, %347, %336, %323, %297
  store i64 1, i64* %3, align 8
  br label %786

782:                                              ; preds = %705, %396, %281, %268, %184, %91, %63
  %783 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %784 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %785 = call i32 @dwc_otg_host_channel_free(%struct.dwc_otg_softc* %783, %struct.dwc_otg_td* %784)
  store i64 0, i64* %3, align 8
  br label %786

786:                                              ; preds = %782, %781
  %787 = load i64, i64* %3, align 8
  ret i64 %787
}

declare dso_local i32 @dwc_otg_host_dump_rx(%struct.dwc_otg_softc*, %struct.dwc_otg_td*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DOTG_HCCHAR(i64) #1

declare dso_local i32 @DOTG_HCTSIZ(i64) #1

declare dso_local i32 @dwc_otg_host_channel_free(%struct.dwc_otg_softc*, %struct.dwc_otg_td*) #1

declare dso_local i64 @dwc_otg_host_rate_check(%struct.dwc_otg_softc*, %struct.dwc_otg_td*) #1

declare dso_local i64 @dwc_otg_host_channel_alloc(%struct.dwc_otg_softc*, %struct.dwc_otg_td*, i32) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @DOTG_HCSPLT(i64) #1

declare dso_local i32 @dwc_otg_write_fifo(%struct.dwc_otg_softc*, i32, i64, i32, i32) #1

declare dso_local i32 @DOTG_DFIFO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
