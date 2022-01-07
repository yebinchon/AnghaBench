; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_hs_bandwidth_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_hs_bandwidth_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_8__*, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.usb_device* }
%struct.usb_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@USB_MODE_HOST = common dso_local global i64 0, align 8
@UE_XFERTYPE = common dso_local global i32 0, align 4
@USB_HS_MICRO_FRAMES_MAX = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"slot=%d, mask=0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hs_bandwidth_alloc(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %3, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @USB_MODE_HOST, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %149

19:                                               ; preds = %1
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %21 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %27 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %149

33:                                               ; preds = %19
  %34 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %35 = call i32 @usbd_get_speed(%struct.usb_device* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %37 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UE_XFERTYPE, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %118 [
    i32 129, label %45
    i32 128, label %87
  ]

45:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  %46 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %48 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @USB_HS_MICRO_FRAMES_MAX, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @usb_hs_bandwidth_adjust(%struct.usb_device* %46, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %55 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = shl i32 %58, %59
  %61 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %62 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  store i32 %60, i32* %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @USB_SPEED_FULL, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %45
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @USB_SPEED_LOW, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %74 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  br label %86

77:                                               ; preds = %68, %45
  %78 = load i32, i32* %4, align 4
  %79 = shl i32 4, %78
  %80 = sub nsw i32 0, %79
  %81 = and i32 %80, 254
  %82 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %83 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %77, %72
  br label %131

87:                                               ; preds = %33
  %88 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %89 = call i32 @usbd_xfer_get_fps_shift(%struct.usb_xfer* %88)
  switch i32 %89, label %93 [
    i32 0, label %90
    i32 1, label %91
    i32 2, label %92
  ]

90:                                               ; preds = %87
  store i32 255, i32* %5, align 4
  br label %94

91:                                               ; preds = %87
  store i32 85, i32* %5, align 4
  br label %94

92:                                               ; preds = %87
  store i32 17, i32* %5, align 4
  br label %94

93:                                               ; preds = %87
  store i32 1, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %92, %91, %90
  %95 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %96 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %97 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @USB_HS_MICRO_FRAMES_MAX, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @usb_hs_bandwidth_adjust(%struct.usb_device* %95, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %104 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i32 %102, i32* %106, align 4
  %107 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %108 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %4, align 4
  %113 = shl i32 %111, %112
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %115 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  store i32 %113, i32* %117, align 8
  br label %131

118:                                              ; preds = %33
  %119 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %120 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %124 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 3
  store i32 0, i32* %126, align 4
  %127 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %128 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store i32 0, i32* %130, align 8
  br label %131

131:                                              ; preds = %118, %94, %86
  %132 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %133 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %138 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %143 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %141, %146
  %148 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %147)
  br label %149

149:                                              ; preds = %131, %32, %18
  ret void
}

declare dso_local i32 @usbd_get_speed(%struct.usb_device*) #1

declare dso_local i32 @usb_hs_bandwidth_adjust(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @usbd_xfer_get_fps_shift(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
