; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_setup_params = type { i32, i32, i32, i32*, i64, %struct.TYPE_8__*, i64, %struct.usb_xfer* }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.usb_xfer = type { i32, i32, i32, i32, i8**, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.saf1761_otg_softc = type { i32 }
%struct.usb_hw_ep_profile = type { i32 }
%struct.saf1761_otg_td = type { i32, i32, i32, i32, i8*, i64, i32 }

@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_CONTROL = common dso_local global i32 0, align 4
@UE_ADDR = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@SOTG_PTD_DW1_ENABLE_SPLIT = common dso_local global i32 0, align 4
@USB_HOST_ALIGN = common dso_local global i32 0, align 4
@UE_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_setup_params*)* @saf1761_otg_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_xfer_setup(%struct.usb_setup_params* %0) #0 {
  %2 = alloca %struct.usb_setup_params*, align 8
  %3 = alloca %struct.saf1761_otg_softc*, align 8
  %4 = alloca %struct.usb_xfer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_hw_ep_profile*, align 8
  %12 = alloca %struct.saf1761_otg_td*, align 8
  store %struct.usb_setup_params* %0, %struct.usb_setup_params** %2, align 8
  %13 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %14 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %13, i32 0, i32 5
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32 %17)
  store %struct.saf1761_otg_softc* %18, %struct.saf1761_otg_softc** %3, align 8
  %19 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %20 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %19, i32 0, i32 7
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %20, align 8
  store %struct.usb_xfer* %21, %struct.usb_xfer** %4, align 8
  %22 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %23 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %22, i32 0, i32 0
  store i32 1280, i32* %23, align 8
  %24 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %25 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %27 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %26, i32 0, i32 2
  store i32 1280, i32* %27, align 8
  %28 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %29 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %28)
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %31 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %30, i32 0, i32 6
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UE_XFERTYPE, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @UE_CONTROL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %44 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %53

48:                                               ; preds = %1
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %50 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %55 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %236

59:                                               ; preds = %53
  store i8* null, i8** %5, align 8
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %61 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @UE_ADDR, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %66 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %65, i32 0, i32 5
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @USB_MODE_DEVICE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %59
  %74 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %75 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %74, i32 0, i32 5
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @saf1761_otg_get_hw_ep_profile(%struct.TYPE_8__* %76, %struct.usb_hw_ep_profile** %11, i32 %77)
  %79 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %11, align 8
  %80 = icmp eq %struct.usb_hw_ep_profile* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i64, i64* @USB_ERR_INVAL, align 8
  %83 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %84 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %83, i32 0, i32 6
  store i64 %82, i64* %84, align 8
  br label %236

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %59
  %87 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %88 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 %89, 3
  %91 = load i32, i32* %10, align 4
  %92 = shl i32 %91, 12
  %93 = or i32 %90, %92
  store i32 %93, i32* %6, align 4
  %94 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %95 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %94, i32 0, i32 5
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %137 [
    i32 129, label %99
    i32 128, label %99
  ]

99:                                               ; preds = %86, %86
  %100 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %101 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %100, i32 0, i32 5
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %136

106:                                              ; preds = %99
  %107 = load i32, i32* @SOTG_PTD_DW1_ENABLE_SPLIT, align 4
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %111 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %110, i32 0, i32 5
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 18
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %119 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %118, i32 0, i32 5
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 25
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  %126 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %127 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %126, i32 0, i32 5
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 128
  br i1 %131, label %132, label %135

132:                                              ; preds = %106
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %133, 131072
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %132, %106
  br label %136

136:                                              ; preds = %135, %99
  br label %138

137:                                              ; preds = %86
  br label %138

138:                                              ; preds = %137, %136
  %139 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %140 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 0, %143
  %145 = load i32, i32* @USB_HOST_ALIGN, align 4
  %146 = sub nsw i32 %145, 1
  %147 = and i32 %144, %146
  %148 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %149 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, %147
  store i32 %153, i32* %151, align 4
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %227, %138
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %230

158:                                              ; preds = %154
  %159 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %160 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %218

163:                                              ; preds = %158
  %164 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %165 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %168 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = call %struct.saf1761_otg_td* @USB_ADD_BYTES(i64 %166, i32 %171)
  store %struct.saf1761_otg_td* %172, %struct.saf1761_otg_td** %12, align 8
  %173 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %174 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %12, align 8
  %177 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %12, align 8
  %180 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %12, align 8
  %183 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %12, align 8
  %186 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %12, align 8
  %188 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %187, i32 0, i32 5
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @UE_INTERRUPT, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %209

192:                                              ; preds = %163
  %193 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %194 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %195, 32
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %12, align 8
  %199 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %198, i32 0, i32 3
  store i32 128, i32* %199, align 4
  br label %208

200:                                              ; preds = %192
  %201 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %202 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = sdiv i32 %203, 2
  %205 = shl i32 %204, 3
  %206 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %12, align 8
  %207 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %200, %197
  br label %212

209:                                              ; preds = %163
  %210 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %12, align 8
  %211 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %210, i32 0, i32 3
  store i32 0, i32* %211, align 4
  br label %212

212:                                              ; preds = %209, %208
  %213 = load i8*, i8** %5, align 8
  %214 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %12, align 8
  %215 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %214, i32 0, i32 4
  store i8* %213, i8** %215, align 8
  %216 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %12, align 8
  %217 = bitcast %struct.saf1761_otg_td* %216 to i8*
  store i8* %217, i8** %5, align 8
  br label %218

218:                                              ; preds = %212, %158
  %219 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %220 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = add i64 %224, 40
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 4
  br label %227

227:                                              ; preds = %218
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %154

230:                                              ; preds = %154
  %231 = load i8*, i8** %5, align 8
  %232 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %233 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %232, i32 0, i32 4
  %234 = load i8**, i8*** %233, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 0
  store i8* %231, i8** %235, align 8
  br label %236

236:                                              ; preds = %230, %81, %58
  ret void
}

declare dso_local %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32) #1

declare dso_local i32 @usbd_transfer_setup_sub(%struct.usb_setup_params*) #1

declare dso_local i32 @saf1761_otg_get_hw_ep_profile(%struct.TYPE_8__*, %struct.usb_hw_ep_profile**, i32) #1

declare dso_local %struct.saf1761_otg_td* @USB_ADD_BYTES(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
