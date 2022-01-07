; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_init_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_init_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dwc_otg_softc = type { i32, i32, i64, i32, i64, i64, i32, %struct.dwc_otg_profile* }
%struct.dwc_otg_profile = type { i32, %struct.TYPE_2__ }

@.str = private unnamed_addr constant [17 x i8] c"Too little FIFO\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DOTG_GRXFSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Not enough data space for EP0 FIFO.\0A\00", align 1
@DWC_MODE_HOST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"PTX/NPTX FIFO=%u\0A\00", align 1
@DOTG_GNPTXFSIZ = common dso_local global i32 0, align 4
@HCINT_DEFAULT_MASK = common dso_local global i32 0, align 4
@DOTG_HPTXFSIZ = common dso_local global i32 0, align 4
@DOTG_HAINTMSK = common dso_local global i32 0, align 4
@GINTMSK_HCHINTMSK = common dso_local global i32 0, align 4
@GINTMSK_IEPINTMSK = common dso_local global i32 0, align 4
@DOTG_GINTMSK = common dso_local global i32 0, align 4
@DWC_MODE_DEVICE = common dso_local global i64 0, align 8
@dwc_otg_ep_profile = common dso_local global %struct.TYPE_2__* null, align 8
@DWC_OTG_TX_MAX_FIFO_SIZE = common dso_local global i32 0, align 4
@DWC_OTG_MAX_TXN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"FIFO%d = IN:%d / OUT:%d\0A\00", align 1
@GRSTCTL_RXFFLSH = common dso_local global i32 0, align 4
@DWC_MODE_OTG = common dso_local global i64 0, align 8
@GRSTCTL_TXFFLSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_otg_softc*, i64)* @dwc_otg_init_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_otg_init_fifo(%struct.dwc_otg_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc_otg_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dwc_otg_profile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %13 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i32 64, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %298

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, -4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %30 = load i32, i32* @DOTG_GRXFSIZ, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sdiv i32 %31, 4
  %33 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %29, i32 %30, i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 64
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = call i32 @DPRINTFN(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %298

40:                                               ; preds = %21
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @DWC_MODE_HOST, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %120

44:                                               ; preds = %40
  %45 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %46 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sdiv i32 %47, 2
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, -4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %54 = load i32, i32* @DOTG_GNPTXFSIZ, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sdiv i32 %55, 4
  %57 = shl i32 %56, 16
  %58 = load i32, i32* %9, align 4
  %59 = sdiv i32 %58, 4
  %60 = or i32 %57, %59
  %61 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %53, i32 %54, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %77, %44
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %68 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @DOTG_HCINTMSK(i64 %73)
  %75 = load i32, i32* @HCINT_DEFAULT_MASK, align 4
  %76 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %72, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %10, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %10, align 8
  br label %65

80:                                               ; preds = %65
  %81 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %82 = load i32, i32* @DOTG_HPTXFSIZ, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sdiv i32 %83, 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %9, align 4
  %87 = sdiv i32 %86, 4
  %88 = or i32 %85, %87
  %89 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %81, i32 %82, i32 %88)
  %90 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %91 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memset(i32 %92, i32 0, i32 4)
  %94 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %95 = load i32, i32* @DOTG_HAINTMSK, align 4
  %96 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %97 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = shl i32 1, %99
  %101 = sub i32 %100, 1
  %102 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %94, i32 %95, i32 %101)
  %103 = load i32, i32* @GINTMSK_HCHINTMSK, align 4
  %104 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %105 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* @GINTMSK_IEPINTMSK, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %111 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %115 = load i32, i32* @DOTG_GINTMSK, align 4
  %116 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %117 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %114, i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %80, %40
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* @DWC_MODE_DEVICE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %277

124:                                              ; preds = %120
  %125 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %126 = load i32, i32* @DOTG_GNPTXFSIZ, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sdiv i32 %127, 4
  %129 = or i32 1048576, %128
  %130 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %125, i32 %126, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = sub nsw i32 %131, 64
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 64
  store i32 %134, i32* %9, align 4
  %135 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %136 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %135, i32 0, i32 7
  %137 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %136, align 8
  %138 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %137, i64 0
  %139 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dwc_otg_ep_profile, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 0
  %142 = bitcast %struct.TYPE_2__* %139 to i8*
  %143 = bitcast %struct.TYPE_2__* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 32, i1 false)
  %144 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %145 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  store i64 1, i64* %10, align 8
  br label %146

146:                                              ; preds = %256, %124
  %147 = load i64, i64* %10, align 8
  %148 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %149 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %152, label %259

152:                                              ; preds = %146
  %153 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %154 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %153, i32 0, i32 7
  %155 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %154, align 8
  %156 = load i64, i64* %10, align 8
  %157 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %155, i64 %156
  store %struct.dwc_otg_profile* %157, %struct.dwc_otg_profile** %6, align 8
  %158 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %159 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  store i32 3072, i32* %160, align 4
  %161 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %162 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  store i32 0, i32* %163, align 4
  %164 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %165 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 2
  store i32 1, i32* %166, align 4
  %167 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %168 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 3
  store i32 1, i32* %169, align 4
  %170 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %171 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 4
  store i32 1, i32* %172, align 4
  %173 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %174 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 5
  store i32 1, i32* %175, align 4
  %176 = load i64, i64* %10, align 8
  %177 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %178 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %176, %179
  br i1 %180, label %181, label %241

181:                                              ; preds = %152
  %182 = load i64, i64* %10, align 8
  %183 = icmp eq i64 %182, 1
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32, i32* @DWC_OTG_TX_MAX_FIFO_SIZE, align 4
  %186 = load i32, i32* @DWC_OTG_MAX_TXN, align 4
  %187 = call i32 @MIN(i32 %185, i32 %186)
  br label %193

188:                                              ; preds = %181
  %189 = load i32, i32* @DWC_OTG_MAX_TXN, align 4
  %190 = sdiv i32 %189, 2
  %191 = load i32, i32* @DWC_OTG_TX_MAX_FIFO_SIZE, align 4
  %192 = call i32 @MIN(i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %188, %184
  %194 = phi i32 [ %187, %184 ], [ %192, %188 ]
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %201 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 4
  %202 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %203 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 6
  store i32 1, i32* %204, align 4
  br label %220

205:                                              ; preds = %193
  %206 = load i32, i32* @DWC_OTG_TX_MAX_FIFO_SIZE, align 4
  %207 = call i32 @MIN(i32 %206, i32 64)
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %213 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 6
  store i32 1, i32* %214, align 4
  br label %219

215:                                              ; preds = %205
  %216 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %217 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  store i32 1, i32* %218, align 4
  store i32 0, i32* %11, align 4
  br label %219

219:                                              ; preds = %215, %211
  br label %220

220:                                              ; preds = %219, %198
  %221 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %222 = load i64, i64* %10, align 8
  %223 = call i32 @DOTG_DIEPTXF(i64 %222)
  %224 = load i32, i32* %11, align 4
  %225 = sdiv i32 %224, 4
  %226 = shl i32 %225, 16
  %227 = load i32, i32* %9, align 4
  %228 = sdiv i32 %227, 4
  %229 = or i32 %226, %228
  %230 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %221, i32 %223, i32 %229)
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %7, align 4
  %236 = sub nsw i32 %235, %234
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %11, align 4
  %238 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %239 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 7
  store i32 %237, i32* %240, align 4
  br label %245

241:                                              ; preds = %152
  %242 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %243 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  store i32 1, i32* %244, align 4
  br label %245

245:                                              ; preds = %241, %220
  %246 = load i64, i64* %10, align 8
  %247 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %248 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.dwc_otg_profile*, %struct.dwc_otg_profile** %6, align 8
  %252 = getelementptr inbounds %struct.dwc_otg_profile, %struct.dwc_otg_profile* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %246, i32 %250, i32 %254)
  br label %256

256:                                              ; preds = %245
  %257 = load i64, i64* %10, align 8
  %258 = add nsw i64 %257, 1
  store i64 %258, i64* %10, align 8
  br label %146

259:                                              ; preds = %146
  %260 = load i32, i32* @GINTMSK_HCHINTMSK, align 4
  %261 = xor i32 %260, -1
  %262 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %263 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load i32, i32* @GINTMSK_IEPINTMSK, align 4
  %267 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %268 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %272 = load i32, i32* @DOTG_GINTMSK, align 4
  %273 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %274 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %271, i32 %272, i32 %275)
  br label %277

277:                                              ; preds = %259, %120
  %278 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %279 = load i32, i32* @GRSTCTL_RXFFLSH, align 4
  %280 = call i32 @dwc_otg_tx_fifo_reset(%struct.dwc_otg_softc* %278, i32 %279)
  %281 = load i64, i64* %5, align 8
  %282 = load i64, i64* @DWC_MODE_OTG, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %277
  %285 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %286 = call i32 @GRSTCTL_TXFIFO(i32 16)
  %287 = load i32, i32* @GRSTCTL_TXFFLSH, align 4
  %288 = or i32 %286, %287
  %289 = call i32 @dwc_otg_tx_fifo_reset(%struct.dwc_otg_softc* %285, i32 %288)
  br label %297

290:                                              ; preds = %277
  %291 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %292 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %291, i32 0, i32 1
  store i32 0, i32* %292, align 4
  %293 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %294 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @memset(i32 %295, i32 0, i32 4)
  br label %297

297:                                              ; preds = %290, %284
  store i32 0, i32* %3, align 4
  br label %298

298:                                              ; preds = %297, %37, %18
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @DOTG_HCINTMSK(i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @DOTG_DIEPTXF(i64) #1

declare dso_local i32 @dwc_otg_tx_fifo_reset(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @GRSTCTL_TXFIFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
