; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_play_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_play_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uaudio_chan = type { i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_4__*, i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.uaudio_chan }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"not running or no buffer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"short transfer, %d of %d bytes\0A\00", align 1
@UAUDIO_NCHANBUFS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"bytes per transfer, %d, exceeds maximum, %d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"sending one sample more\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"sending one sample less\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"transferring %d bytes\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uaudio_chan_play_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_chan_play_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uaudio_chan*, align 8
  %6 = alloca %struct.uaudio_chan*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call %struct.uaudio_chan* @usbd_xfer_softc(%struct.usb_xfer* %19)
  store %struct.uaudio_chan* %20, %struct.uaudio_chan** %5, align 8
  %21 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %22 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %27 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %30 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25, %2
  %34 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %378

35:                                               ; preds = %25
  %36 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %37 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %36, i32 0, i32 18
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %45 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %44, i32 0, i32 18
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store %struct.uaudio_chan* %47, %struct.uaudio_chan** %6, align 8
  br label %49

48:                                               ; preds = %35
  store %struct.uaudio_chan* null, %struct.uaudio_chan** %6, align 8
  br label %49

49:                                               ; preds = %48, %43
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %51 = call i32 @usbd_xfer_status(%struct.usb_xfer* %50, i32* %14, i32* %15, i32* null, i32* null)
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %53 = call i32 @USB_GET_STATE(%struct.usb_xfer* %52)
  switch i32 %53, label %372 [
    i32 129, label %54
    i32 128, label %76
  ]

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %376, %54
  %56 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %57 = icmp ne %struct.uaudio_chan* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %60 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %59, i32 0, i32 16
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @mtx_lock(i32 %61)
  %63 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %64 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %63, i32 0, i32 4
  store i32 0, i32* %64, align 8
  %65 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %66 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %65, i32 0, i32 5
  store i32 0, i32* %66, align 4
  %67 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %68 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %67, i32 0, i32 16
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @mtx_unlock(i32 %69)
  br label %71

71:                                               ; preds = %58, %55
  %72 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %73 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %72, i32 0, i32 4
  store i32 0, i32* %73, align 8
  %74 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %75 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %74, i32 0, i32 5
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %49, %71
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %86 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %85, i32 0, i32 17
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @chn_intr(i32 %87)
  %89 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %90 = icmp ne %struct.uaudio_chan* %89, null
  br i1 %90, label %91, label %159

91:                                               ; preds = %84
  %92 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %93 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %94 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @uaudio_chan_is_async(%struct.uaudio_chan* %92, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %159

98:                                               ; preds = %91
  %99 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %100 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %99, i32 0, i32 16
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @mtx_lock(i32 %101)
  %103 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %104 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %107 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %154

110:                                              ; preds = %98
  %111 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %112 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %111, i32 0, i32 14
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %115 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %122 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %120, %123
  %125 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %126 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %124, %127
  store i32 %128, i32* %16, align 4
  %129 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %130 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %129, i32 0, i32 4
  store i32 0, i32* %130, align 8
  %131 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %132 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %131, i32 0, i32 5
  store i32 0, i32* %132, align 4
  %133 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %134 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %133, i32 0, i32 14
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %137 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %17, align 4
  %144 = sdiv i32 %142, %143
  %145 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %146 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = srem i32 %149, %150
  %152 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %153 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %110, %98
  %155 = load %struct.uaudio_chan*, %struct.uaudio_chan** %6, align 8
  %156 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %155, i32 0, i32 16
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @mtx_unlock(i32 %157)
  br label %159

159:                                              ; preds = %154, %91, %84
  %160 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %161 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %164 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %168 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %171 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 8
  %173 = icmp sge i32 %169, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %159
  %175 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %176 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %179 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %183 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %182, i32 0, i32 15
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @UAUDIO_NCHANBUFS, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @usbd_transfer_start(i32 %187)
  br label %189

189:                                              ; preds = %174, %159
  %190 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %191 = call i32 @usbd_xfer_max_framelen(%struct.usb_xfer* %190)
  store i32 %191, i32* %8, align 4
  %192 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %193 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %192, i32 0, i32 10
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %189
  %200 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %201 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %200, i32 0, i32 10
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %204, i32 %205)
  br label %378

207:                                              ; preds = %189
  %208 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %209 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %10, align 4
  %211 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %211, i32 %212)
  %214 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %215 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %214, i32 0, i32 14
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %218 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %13, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %223

223:                                              ; preds = %308, %207
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %10, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %311

227:                                              ; preds = %223
  %228 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %229 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %228, i32 0, i32 12
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %232 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %231, i32 0, i32 11
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %236 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %235, i32 0, i32 11
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %239 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 8
  %241 = icmp sge i32 %237, %240
  br i1 %241, label %242, label %255

242:                                              ; preds = %227
  %243 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %244 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %247 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %246, i32 0, i32 11
  %248 = load i32, i32* %247, align 8
  %249 = sub nsw i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %251 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %250, i32 0, i32 10
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %18, align 4
  br label %261

255:                                              ; preds = %227
  %256 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %257 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %256, i32 0, i32 10
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %18, align 4
  br label %261

261:                                              ; preds = %255, %242
  %262 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %263 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %281

266:                                              ; preds = %261
  %267 = load i32, i32* %18, align 4
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32, i32* %8, align 4
  %271 = icmp sle i32 %269, %270
  br i1 %271, label %272, label %281

272:                                              ; preds = %266
  %273 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %274 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %275 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %275, align 8
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* %18, align 4
  %280 = add nsw i32 %279, %278
  store i32 %280, i32* %18, align 4
  br label %300

281:                                              ; preds = %266, %261
  %282 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %283 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %299

286:                                              ; preds = %281
  %287 = load i32, i32* %18, align 4
  %288 = load i32, i32* %13, align 4
  %289 = icmp sge i32 %287, %288
  br i1 %289, label %290, label %299

290:                                              ; preds = %286
  %291 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %292 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %293 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %293, align 8
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* %18, align 4
  %298 = sub nsw i32 %297, %296
  store i32 %298, i32* %18, align 4
  br label %299

299:                                              ; preds = %290, %286, %281
  br label %300

300:                                              ; preds = %299, %272
  %301 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %302 = load i32, i32* %11, align 4
  %303 = load i32, i32* %18, align 4
  %304 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %301, i32 %302, i32 %303)
  %305 = load i32, i32* %18, align 4
  %306 = load i32, i32* %9, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %9, align 4
  br label %308

308:                                              ; preds = %300
  %309 = load i32, i32* %11, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %11, align 4
  br label %223

311:                                              ; preds = %223
  %312 = load i32, i32* %9, align 4
  %313 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %312)
  store i32 0, i32* %12, align 4
  %314 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %315 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %314, i32 0)
  store %struct.usb_page_cache* %315, %struct.usb_page_cache** %7, align 8
  br label %316

316:                                              ; preds = %368, %311
  %317 = load i32, i32* %9, align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %369

319:                                              ; preds = %316
  %320 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %321 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %324 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %323, i32 0, i32 13
  %325 = load i32, i32* %324, align 8
  %326 = sext i32 %325 to i64
  %327 = sub nsw i64 %322, %326
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %11, align 4
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* %9, align 4
  %331 = icmp sgt i32 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %319
  %333 = load i32, i32* %9, align 4
  store i32 %333, i32* %11, align 4
  br label %334

334:                                              ; preds = %332, %319
  %335 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %336 = load i32, i32* %12, align 4
  %337 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %338 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %337, i32 0, i32 13
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* %11, align 4
  %341 = call i32 @usbd_copy_in(%struct.usb_page_cache* %335, i32 %336, i32 %339, i32 %340)
  %342 = load i32, i32* %11, align 4
  %343 = load i32, i32* %9, align 4
  %344 = sub nsw i32 %343, %342
  store i32 %344, i32* %9, align 4
  %345 = load i32, i32* %11, align 4
  %346 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %347 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %346, i32 0, i32 13
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %348, %345
  store i32 %349, i32* %347, align 8
  %350 = load i32, i32* %11, align 4
  %351 = load i32, i32* %12, align 4
  %352 = add nsw i32 %351, %350
  store i32 %352, i32* %12, align 4
  %353 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %354 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %353, i32 0, i32 13
  %355 = load i32, i32* %354, align 8
  %356 = sext i32 %355 to i64
  %357 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %358 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = icmp sge i64 %356, %359
  br i1 %360, label %361, label %368

361:                                              ; preds = %334
  %362 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %363 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = trunc i64 %364 to i32
  %366 = load %struct.uaudio_chan*, %struct.uaudio_chan** %5, align 8
  %367 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %366, i32 0, i32 13
  store i32 %365, i32* %367, align 8
  br label %368

368:                                              ; preds = %361, %334
  br label %316

369:                                              ; preds = %316
  %370 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %371 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %370)
  br label %378

372:                                              ; preds = %49
  %373 = load i32, i32* %4, align 4
  %374 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %375 = icmp ne i32 %373, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %372
  br label %55

377:                                              ; preds = %372
  br label %378

378:                                              ; preds = %33, %377, %369, %199
  ret void
}

declare dso_local %struct.uaudio_chan* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @mtx_unlock(i32) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @uaudio_chan_is_async(%struct.uaudio_chan*, i64) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @usbd_xfer_max_framelen(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
