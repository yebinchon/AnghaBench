; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_record_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_record_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uaudio_chan = type { i64, i64, i32, i32, i32, i32*, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"no buffer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"transferred %d bytes, jitter %d samples\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uaudio_chan_record_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_chan_record_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uaudio_chan*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call %struct.uaudio_chan* @usbd_xfer_softc(%struct.usb_xfer* %17)
  store %struct.uaudio_chan* %18, %struct.uaudio_chan** %5, align 8
  %19 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %20 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %23 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %264

28:                                               ; preds = %2
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = call i32 @usbd_xfer_status(%struct.usb_xfer* %29, i32* %12, i32* null, i32* null, i32* %13)
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %32 = call i32 @usbd_xfer_max_framelen(%struct.usb_xfer* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %34 = call i32 @USB_GET_STATE(%struct.usb_xfer* %33)
  switch i32 %34, label %258 [
    i32 128, label %35
    i32 129, label %235
  ]

35:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %36, i32 0)
  store %struct.usb_page_cache* %37, %struct.usb_page_cache** %6, align 8
  %38 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %39 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %42 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %40, %43
  %45 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %46 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %50 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %53 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %51, %56
  %58 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %59 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %62 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = sdiv i32 %60, %63
  %65 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %66 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %71 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %69, %74
  %76 = mul nsw i32 %64, %75
  %77 = add nsw i32 %57, %76
  store i32 %77, i32* %14, align 4
  %78 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %79 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %82 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = srem i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %86 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %85, i32 0, i32 13
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %89 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %182, %35
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %185

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %16, align 4
  %100 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @usbd_xfer_frame_len(%struct.usb_xfer* %100, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %15, align 4
  %106 = srem i32 %104, %105
  %107 = sub nsw i32 %103, %106
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %14, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %14, align 4
  %111 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %112 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %111, i32 0, i32 12
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %98
  %116 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %117 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %120 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %119, i32 0, i32 8
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115, %98
  br label %182

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %177, %124
  %126 = load i32, i32* %11, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %178

128:                                              ; preds = %125
  %129 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %130 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %133 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = sub nsw i64 %131, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %141, %128
  %144 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %147 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @usbd_copy_out(%struct.usb_page_cache* %144, i32 %145, i32 %148, i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %11, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %159 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %158, i32 0, i32 9
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %163 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %167 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp sge i64 %165, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %143
  %171 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %172 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %176 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %175, i32 0, i32 9
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %170, %143
  br label %125

178:                                              ; preds = %125
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %178, %123
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %94

185:                                              ; preds = %94
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* %15, align 4
  %188 = sdiv i32 %186, %187
  %189 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %190 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %189, i32 0, i32 10
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %191, %188
  store i32 %192, i32* %190, align 4
  %193 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %194 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 2, %195
  store i32 %196, i32* %13, align 4
  %197 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %198 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %197, i32 0, i32 10
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %13, align 4
  %201 = sub nsw i32 0, %200
  %202 = icmp slt i32 %199, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %185
  %204 = load i32, i32* %13, align 4
  %205 = sub nsw i32 0, %204
  %206 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %207 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %206, i32 0, i32 10
  store i32 %205, i32* %207, align 4
  br label %219

208:                                              ; preds = %185
  %209 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %210 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i32, i32* %13, align 4
  %216 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %217 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %216, i32 0, i32 10
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %214, %208
  br label %219

219:                                              ; preds = %218, %203
  %220 = load i32, i32* %12, align 4
  %221 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %222 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %221, i32 0, i32 10
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @DPRINTFN(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %220, i32 %223)
  %225 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %226 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %225, i32 0, i32 12
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %219
  %230 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %231 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %230, i32 0, i32 11
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @chn_intr(i32 %232)
  br label %234

234:                                              ; preds = %229, %219
  br label %235

235:                                              ; preds = %28, %234
  br label %236

236:                                              ; preds = %262, %235
  %237 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %238 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  store i32 %239, i32* %13, align 4
  %240 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %241 = load i32, i32* %13, align 4
  %242 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %240, i32 %241)
  store i32 0, i32* %10, align 4
  br label %243

243:                                              ; preds = %252, %236
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %13, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %243
  %248 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %248, i32 %249, i32 %250)
  br label %252

252:                                              ; preds = %247
  %253 = load i32, i32* %10, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %10, align 4
  br label %243

255:                                              ; preds = %243
  %256 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %257 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %256)
  br label %264

258:                                              ; preds = %28
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  br label %236

263:                                              ; preds = %258
  br label %264

264:                                              ; preds = %26, %263, %255
  ret void
}

declare dso_local %struct.uaudio_chan* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @usbd_xfer_max_framelen(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_frame_len(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
