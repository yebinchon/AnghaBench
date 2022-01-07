; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_keyboard.c_g_keyboard_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_keyboard.c_g_keyboard_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.g_keyboard_softc = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8** }

@.str = private unnamed_addr constant [34 x i8] c"st=%d aframes=%d actlen=%d bytes\0A\00", align 1
@G_KEYBOARD_MODE_SILENT = common dso_local global i32 0, align 4
@G_KEYBOARD_MODE_PATTERN = common dso_local global i32 0, align 4
@G_KEYBOARD_MAX_STRLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @g_keyboard_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_keyboard_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_keyboard_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call %struct.g_keyboard_softc* @usbd_xfer_softc(%struct.usb_xfer* %8)
  store %struct.g_keyboard_softc* %9, %struct.g_keyboard_softc** %5, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call i32 @usbd_xfer_status(%struct.usb_xfer* %10, i32* %6, i32* null, i32* %7, i32* null)
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %182 [
    i32 128, label %19
    i32 129, label %20
  ]

19:                                               ; preds = %2
  br label %193

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %189, %20
  %22 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %23 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @G_KEYBOARD_MODE_SILENT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %29 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %28, i32 0, i32 1
  %30 = call i32 @memset(%struct.TYPE_3__** %29, i32 0, i32 8)
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %32 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %33 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %31, i32 0, %struct.TYPE_3__* %35, i32 8)
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %38 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %39 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 1
  %42 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %37, i32 1, %struct.TYPE_3__* %41, i32 8)
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %44 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %43, i32 2)
  %45 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %46 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %45)
  br label %181

47:                                               ; preds = %21
  %48 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %49 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @G_KEYBOARD_MODE_PATTERN, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %180

53:                                               ; preds = %47
  %54 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %55 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %54, i32 0, i32 1
  %56 = call i32 @memset(%struct.TYPE_3__** %55, i32 0, i32 8)
  %57 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %58 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %63 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @G_KEYBOARD_MAX_STRLEN, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61, %53
  %68 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %69 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %61
  %71 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %72 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = srem i32 %73, 6
  switch i32 %74, label %145 [
    i32 0, label %75
    i32 1, label %89
    i32 2, label %103
    i32 3, label %117
    i32 4, label %131
  ]

75:                                               ; preds = %70
  %76 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %77 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %78 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 0
  %81 = call i8* @g_keyboard_get_keycode(%struct.g_keyboard_softc* %76, i32 %80)
  %82 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %83 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  store i8* %81, i8** %88, align 8
  br label %89

89:                                               ; preds = %70, %75
  %90 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %91 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %92 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  %95 = call i8* @g_keyboard_get_keycode(%struct.g_keyboard_softc* %90, i32 %94)
  %96 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %97 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  store i8* %95, i8** %102, align 8
  br label %103

103:                                              ; preds = %70, %89
  %104 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %105 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %106 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 2
  %109 = call i8* @g_keyboard_get_keycode(%struct.g_keyboard_softc* %104, i32 %108)
  %110 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %111 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 2
  store i8* %109, i8** %116, align 8
  br label %117

117:                                              ; preds = %70, %103
  %118 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %119 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %120 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 3
  %123 = call i8* @g_keyboard_get_keycode(%struct.g_keyboard_softc* %118, i32 %122)
  %124 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %125 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i8**, i8*** %128, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 3
  store i8* %123, i8** %130, align 8
  br label %131

131:                                              ; preds = %70, %117
  %132 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %133 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %134 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 4
  %137 = call i8* @g_keyboard_get_keycode(%struct.g_keyboard_softc* %132, i32 %136)
  %138 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %139 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 4
  store i8* %137, i8** %144, align 8
  br label %145

145:                                              ; preds = %70, %131
  %146 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %147 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %148 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 5
  %151 = call i8* @g_keyboard_get_keycode(%struct.g_keyboard_softc* %146, i32 %150)
  %152 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %153 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 5
  store i8* %151, i8** %158, align 8
  br label %159

159:                                              ; preds = %145
  %160 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %161 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %165 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %166 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %165, i32 0, i32 1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 0
  %169 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %164, i32 0, %struct.TYPE_3__* %168, i32 8)
  %170 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %171 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %5, align 8
  %172 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %171, i32 0, i32 1
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 1
  %175 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %170, i32 1, %struct.TYPE_3__* %174, i32 8)
  %176 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %177 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %176, i32 2)
  %178 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %179 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %178)
  br label %180

180:                                              ; preds = %159, %47
  br label %181

181:                                              ; preds = %180, %27
  br label %193

182:                                              ; preds = %2
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @usbd_errstr(i32 %183)
  %185 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %191 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %190)
  br label %21

192:                                              ; preds = %182
  br label %193

193:                                              ; preds = %192, %181, %19
  ret void
}

declare dso_local %struct.g_keyboard_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @memset(%struct.TYPE_3__**, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i8* @g_keyboard_get_keycode(%struct.g_keyboard_softc*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
