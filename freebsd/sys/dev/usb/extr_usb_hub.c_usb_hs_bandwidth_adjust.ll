; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_hs_bandwidth_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_hs_bandwidth_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_2__*, %struct.usb_bus* }
%struct.TYPE_2__ = type { %struct.usb_hub* }
%struct.usb_hub = type { i32* }
%struct.usb_bus = type { i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@USB_HS_MICRO_FRAMES_MAX = common dso_local global i32 0, align 4
@USB_FS_ISOC_UFRAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32, i32)* @usb_hs_bandwidth_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hs_bandwidth_adjust(%struct.usb_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_bus*, align 8
  %10 = alloca %struct.usb_hub*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = load %struct.usb_bus*, %struct.usb_bus** %14, align 8
  store %struct.usb_bus* %15, %struct.usb_bus** %9, align 8
  %16 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @USB_BUS_LOCK_ASSERT(%struct.usb_bus* %16, i32 %17)
  %19 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %20 = call i32 @usbd_get_speed(%struct.usb_device* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  switch i32 %21, label %81 [
    i32 128, label %22
    i32 129, label %22
  ]

22:                                               ; preds = %4, %4
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 8
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.usb_hub*, %struct.usb_hub** %32, align 8
  store %struct.usb_hub* %33, %struct.usb_hub** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @USB_HS_MICRO_FRAMES_MAX, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.usb_hub*, %struct.usb_hub** %10, align 8
  %39 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @USB_FS_ISOC_UFRAME_MAX, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @usb_intr_find_best_slot(i32* %40, i32 %41, i32 6, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %37, %28
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %77, %44
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %80

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %51, %52
  %54 = shl i32 1, %53
  %55 = and i32 %50, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.usb_hub*, %struct.usb_hub** %10, align 8
  %60 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %58
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %69 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %67
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %57, %49
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %46

80:                                               ; preds = %46
  br label %120

81:                                               ; preds = %4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @USB_HS_MICRO_FRAMES_MAX, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %87 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @USB_HS_MICRO_FRAMES_MAX, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @usb_intr_find_best_slot(i32* %88, i32 0, i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %85, %81
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %116, %92
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %119

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %99, %100
  %102 = shl i32 1, %101
  %103 = and i32 %98, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %108 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %106
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %105, %97
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %94

119:                                              ; preds = %94
  br label %120

120:                                              ; preds = %119, %80
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(%struct.usb_bus*, i32) #1

declare dso_local i32 @usbd_get_speed(%struct.usb_device*) #1

declare dso_local i32 @usb_intr_find_best_slot(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
