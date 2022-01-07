; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dwc_otg_td = type { i64, i32, i32, i64, i64, i32, i32, i32, i32 }

@GRXSTSRD_PKTSTS_MASK = common dso_local global i32 0, align 4
@GRXSTSRD_STP_DATA = common dso_local global i32 0, align 4
@GRXSTSRD_STP_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"busy ep=%d npkt=%d DIEPTSIZ=0x%08x DIEPCTL=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"rem=%u ep=%d\0A\00", align 1
@DIEPCTL_EPTYPE_MASK = common dso_local global i32 0, align 4
@DIEPCTL_EPTYPE_ISOC = common dso_local global i32 0, align 4
@DIEPCTL_EPTYPE_SHIFT = common dso_local global i32 0, align 4
@DIEPCTL_SETD1PID = common dso_local global i32 0, align 4
@DIEPCTL_SETD0PID = common dso_local global i32 0, align 4
@DIEPCTL_EPENA = common dso_local global i32 0, align 4
@DIEPCTL_CNAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_otg_softc*, %struct.dwc_otg_td*)* @dwc_otg_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_otg_data_tx(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc_otg_softc*, align 8
  %5 = alloca %struct.dwc_otg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %4, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %5, align 8
  store i32 3, i32* %11, align 4
  %13 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %14 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %17 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %400, %2
  %23 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %24 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %27 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @GRXSTSRD_CHNUM_GET(i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @GRXSTSRD_PKTSTS_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @GRXSTSRD_STP_DATA, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @GRXSTSRD_PKTSTS_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @GRXSTSRD_STP_COMPLETE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %51 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %50)
  br label %55

52:                                               ; preds = %43, %37
  %53 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %54 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  store i32 0, i32* %3, align 4
  br label %402

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %33, %30, %22
  %57 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %58 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %165

61:                                               ; preds = %56
  %62 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %63 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %64 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @DOTG_DIEPTSIZ(i64 %65)
  %67 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %62, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @DXEPTSIZ_GET_NPKT(i32 %68)
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %72 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %102

76:                                               ; preds = %61
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %81 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = sub nsw i64 %82, %83
  %85 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %86 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = mul nsw i64 %84, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %93, %79
  br label %101

96:                                               ; preds = %76
  %97 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %98 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %96, %95
  br label %102

102:                                              ; preds = %101, %75
  %103 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %104 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %109, %102
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %111
  %115 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %116 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %117 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %120 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %123 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @DOTG_DFIFO(i64 %124)
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @dwc_otg_write_fifo(%struct.dwc_otg_softc* %115, i32 %118, i32 %121, i32 %125, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %130 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %135 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %140 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i64, i64* %12, align 8
  %144 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %145 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %144, i32 0, i32 3
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %114, %111
  %147 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %148 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %401

152:                                              ; preds = %146
  %153 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %154 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %159 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i32 0, i32* %3, align 4
  br label %402

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %152
  br label %165

165:                                              ; preds = %164, %56
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %11, align 4
  %168 = icmp ne i32 %166, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  br label %401

170:                                              ; preds = %165
  %171 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %172 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %173 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @DOTG_DIEPTSIZ(i64 %174)
  %176 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %171, i32 %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i64 @DXEPTSIZ_GET_NPKT(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %170
  %181 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %182 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = load i32, i32* %10, align 4
  %186 = call i64 @DXEPTSIZ_GET_NPKT(i32 %185)
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %189 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %190 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @DOTG_DIEPCTL(i64 %191)
  %193 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %188, i32 %192)
  %194 = call i32 (i32, i8*, i32, i64, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %184, i64 %186, i32 %187, i32 %193)
  br label %401

195:                                              ; preds = %170
  %196 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %197 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %200 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 (i32, i8*, i32, i64, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %198, i64 %201)
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %282

205:                                              ; preds = %195
  %206 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %207 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = and i64 %208, 3
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %282

211:                                              ; preds = %205
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %215 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = sdiv i64 %213, %216
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %9, align 4
  %220 = icmp sgt i32 %219, 1022
  br i1 %220, label %221, label %222

221:                                              ; preds = %211
  store i32 1022, i32* %9, align 4
  br label %222

222:                                              ; preds = %221, %211
  %223 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %224 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp sgt i32 %226, 8388607
  br i1 %227, label %228, label %235

228:                                              ; preds = %222
  %229 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %230 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = srem i64 8388607, %231
  %233 = sub nsw i64 8388607, %232
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %228, %222
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %239 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = sdiv i64 %237, %240
  %242 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %243 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %242, i32 0, i32 3
  store i64 %241, i64* %243, align 8
  %244 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %245 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = icmp sgt i64 %246, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %235
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %254 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %253, i32 0, i32 3
  store i64 %252, i64* %254, align 8
  %255 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %256 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = mul nsw i64 %257, %259
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %7, align 4
  br label %281

262:                                              ; preds = %235
  %263 = load i32, i32* %7, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %273, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %7, align 4
  %267 = sext i32 %266 to i64
  %268 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %269 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = srem i64 %267, %270
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %265, %262
  %274 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %275 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %276, 1
  store i64 %277, i64* %275, align 8
  %278 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %279 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %278, i32 0, i32 7
  store i32 1, i32* %279, align 8
  br label %280

280:                                              ; preds = %273, %265
  br label %281

281:                                              ; preds = %280, %250
  br label %301

282:                                              ; preds = %205, %195
  store i32 1, i32* %9, align 4
  %283 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %284 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %7, align 4
  %287 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %288 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %287, i32 0, i32 6
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %7, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %282
  %293 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %294 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %293, i32 0, i32 7
  store i32 1, i32* %294, align 8
  %295 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %296 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %7, align 4
  br label %298

298:                                              ; preds = %292, %282
  %299 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %300 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %299, i32 0, i32 3
  store i64 1, i64* %300, align 8
  br label %301

301:                                              ; preds = %298, %281
  %302 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %303 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %304 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @DOTG_DIEPTSIZ(i64 %305)
  %307 = call i32 @DXEPTSIZ_SET_MULTI(i32 1)
  %308 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %309 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = trunc i64 %310 to i32
  %312 = call i32 @DXEPTSIZ_SET_NPKT(i32 %311)
  %313 = or i32 %307, %312
  %314 = load i32, i32* %7, align 4
  %315 = call i32 @DXEPTSIZ_SET_NBYTES(i32 %314)
  %316 = or i32 %313, %315
  %317 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %302, i32 %306, i32 %316)
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %321 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = add nsw i64 %322, %319
  store i64 %323, i64* %321, align 8
  %324 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %325 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %324, i32 0, i32 1
  %326 = load i32*, i32** %325, align 8
  %327 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %328 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds i32, i32* %326, i64 %329
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %10, align 4
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* @DIEPCTL_EPTYPE_MASK, align 4
  %334 = and i32 %332, %333
  %335 = load i32, i32* @DIEPCTL_EPTYPE_ISOC, align 4
  %336 = load i32, i32* @DIEPCTL_EPTYPE_SHIFT, align 4
  %337 = shl i32 %335, %336
  %338 = icmp eq i32 %334, %337
  br i1 %338, label %339, label %369

339:                                              ; preds = %301
  %340 = load i32, i32* %10, align 4
  %341 = load i32, i32* @DIEPCTL_SETD1PID, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %352

344:                                              ; preds = %339
  %345 = load i32, i32* @DIEPCTL_SETD1PID, align 4
  %346 = xor i32 %345, -1
  %347 = load i32, i32* %10, align 4
  %348 = and i32 %347, %346
  store i32 %348, i32* %10, align 4
  %349 = load i32, i32* @DIEPCTL_SETD0PID, align 4
  %350 = load i32, i32* %10, align 4
  %351 = or i32 %350, %349
  store i32 %351, i32* %10, align 4
  br label %360

352:                                              ; preds = %339
  %353 = load i32, i32* @DIEPCTL_SETD0PID, align 4
  %354 = xor i32 %353, -1
  %355 = load i32, i32* %10, align 4
  %356 = and i32 %355, %354
  store i32 %356, i32* %10, align 4
  %357 = load i32, i32* @DIEPCTL_SETD1PID, align 4
  %358 = load i32, i32* %10, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %10, align 4
  br label %360

360:                                              ; preds = %352, %344
  %361 = load i32, i32* %10, align 4
  %362 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %363 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %366 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds i32, i32* %364, i64 %367
  store i32 %361, i32* %368, align 4
  br label %369

369:                                              ; preds = %360, %301
  %370 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %371 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %372 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @DOTG_DIEPCTL(i64 %373)
  %375 = load i32, i32* %10, align 4
  %376 = load i32, i32* @DIEPCTL_EPENA, align 4
  %377 = or i32 %375, %376
  %378 = load i32, i32* @DIEPCTL_CNAK, align 4
  %379 = or i32 %377, %378
  %380 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %370, i32 %374, i32 %379)
  %381 = load i32, i32* %7, align 4
  %382 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %383 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %382, i32 0, i32 2
  store i32 %381, i32* %383, align 4
  %384 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %385 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %400

388:                                              ; preds = %369
  %389 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %390 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %389, i32 0, i32 6
  %391 = load i32, i32* %390, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %388
  %394 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %395 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %394, i32 0, i32 7
  %396 = load i32, i32* %395, align 8
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %393
  store i32 0, i32* %3, align 4
  br label %402

399:                                              ; preds = %393
  br label %400

400:                                              ; preds = %399, %388, %369
  br label %22

401:                                              ; preds = %180, %169, %151
  store i32 1, i32* %3, align 4
  br label %402

402:                                              ; preds = %401, %398, %162, %52
  %403 = load i32, i32* %3, align 4
  ret i32 %403
}

declare dso_local i64 @GRXSTSRD_CHNUM_GET(i32) #1

declare dso_local i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc*) #1

declare dso_local i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DOTG_DIEPTSIZ(i64) #1

declare dso_local i64 @DXEPTSIZ_GET_NPKT(i32) #1

declare dso_local i32 @dwc_otg_write_fifo(%struct.dwc_otg_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @DOTG_DFIFO(i64) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @DOTG_DIEPCTL(i64) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @DXEPTSIZ_SET_MULTI(i32) #1

declare dso_local i32 @DXEPTSIZ_SET_NPKT(i32) #1

declare dso_local i32 @DXEPTSIZ_SET_NBYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
