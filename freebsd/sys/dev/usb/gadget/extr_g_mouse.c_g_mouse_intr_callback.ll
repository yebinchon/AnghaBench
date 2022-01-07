; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_mouse.c_g_mouse_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_mouse.c_g_mouse_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.g_mouse_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"st=%d aframes=%d actlen=%d bytes\0A\00", align 1
@BUT_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @g_mouse_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mouse_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_mouse_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.g_mouse_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.g_mouse_softc* %12, %struct.g_mouse_softc** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %6, i32* null, i32* %7, i32* null)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @USB_GET_STATE(%struct.usb_xfer* %20)
  switch i32 %21, label %232 [
    i32 128, label %22
    i32 129, label %34
  ]

22:                                               ; preds = %2
  %23 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %24 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %29 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %243

33:                                               ; preds = %27, %22
  br label %34

34:                                               ; preds = %2, %33
  br label %35

35:                                               ; preds = %239, %34
  %36 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %37 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %42 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %41, i32 0, i32 9
  store i32 0, i32* %42, align 4
  %43 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %44 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 80
  store i32 %46, i32* %44, align 4
  %47 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %48 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %40
  %52 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %53 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 7999
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %40
  %57 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %58 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %35
  %61 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %62 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %67 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %66, i32 0, i32 8
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* @BUT_0, align 4
  %69 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %70 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %65, %60
  %75 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %76 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %10, align 4
  %78 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %79 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %172 [
    i32 131, label %81
    i32 130, label %85
    i32 132, label %93
    i32 133, label %98
  ]

81:                                               ; preds = %74
  %82 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %83 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 0, i32* %84, align 4
  br label %173

85:                                               ; preds = %74
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %88 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 8000, %89
  %91 = mul nsw i32 %86, %90
  %92 = sdiv i32 %91, 8000
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %74, %85
  %94 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %95 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %94, i32 0, i32 2
  store i32 0, i32* %95, align 4
  %96 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %97 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %96, i32 0, i32 3
  store i32 0, i32* %97, align 4
  br label %173

98:                                               ; preds = %74
  %99 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %100 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 2000
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %105 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sdiv i32 %108, 2000
  %110 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %111 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %113 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %112, i32 0, i32 2
  store i32 0, i32* %113, align 4
  br label %171

114:                                              ; preds = %98
  %115 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %116 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %117, 4000
  br i1 %118, label %119, label %133

119:                                              ; preds = %114
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %122 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %124 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 2000
  %127 = load i32, i32* %10, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sdiv i32 %128, 2000
  %130 = sub nsw i32 0, %129
  %131 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %132 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  br label %170

133:                                              ; preds = %114
  %134 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %135 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 6000
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %141 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %142, 4000
  %144 = load i32, i32* %10, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sdiv i32 %145, 2000
  %147 = sub nsw i32 %139, %146
  %148 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %149 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %10, align 4
  %151 = sub nsw i32 0, %150
  %152 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %153 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  br label %169

154:                                              ; preds = %133
  %155 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %156 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %155, i32 0, i32 3
  store i32 0, i32* %156, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 0, %157
  %159 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %160 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, 6000
  %163 = load i32, i32* %10, align 4
  %164 = mul nsw i32 %162, %163
  %165 = sdiv i32 %164, 2000
  %166 = add nsw i32 %158, %165
  %167 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %168 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %154, %138
  br label %170

170:                                              ; preds = %169, %119
  br label %171

171:                                              ; preds = %170, %103
  br label %173

172:                                              ; preds = %74
  br label %173

173:                                              ; preds = %172, %171, %93, %81
  %174 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %175 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %178 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %176, %179
  store i32 %180, i32* %8, align 4
  %181 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %182 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %185 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %183, %186
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp slt i32 %188, -63
  br i1 %189, label %190, label %191

190:                                              ; preds = %173
  store i32 -63, i32* %8, align 4
  br label %196

191:                                              ; preds = %173
  %192 = load i32, i32* %8, align 4
  %193 = icmp sgt i32 %192, 63
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 63, i32* %8, align 4
  br label %195

195:                                              ; preds = %194, %191
  br label %196

196:                                              ; preds = %195, %190
  %197 = load i32, i32* %9, align 4
  %198 = icmp slt i32 %197, -63
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 -63, i32* %9, align 4
  br label %205

200:                                              ; preds = %196
  %201 = load i32, i32* %9, align 4
  %202 = icmp sgt i32 %201, 63
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 63, i32* %9, align 4
  br label %204

204:                                              ; preds = %203, %200
  br label %205

205:                                              ; preds = %204, %199
  %206 = load i32, i32* %8, align 4
  %207 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %208 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %206
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* %9, align 4
  %212 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %213 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, %211
  store i32 %215, i32* %213, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %218 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  store i32 %216, i32* %219, align 4
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %222 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %221, i32 0, i32 6
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  store i32 %220, i32* %223, align 4
  %224 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %225 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %5, align 8
  %226 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %225, i32 0, i32 6
  %227 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %224, i32 0, %struct.TYPE_2__* %226, i32 12)
  %228 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %229 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %228, i32 1)
  %230 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %231 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %230)
  br label %243

232:                                              ; preds = %2
  %233 = load i32, i32* %4, align 4
  %234 = call i32 @usbd_errstr(i32 %233)
  %235 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %232
  %240 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %241 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %240)
  br label %35

242:                                              ; preds = %232
  br label %243

243:                                              ; preds = %242, %205, %32
  ret void
}

declare dso_local %struct.g_mouse_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
