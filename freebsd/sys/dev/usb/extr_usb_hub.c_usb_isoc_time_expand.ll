; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_isoc_time_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_isoc_time_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@USB_ISOC_TIME_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_isoc_time_expand(%struct.usb_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_bus* %0, %struct.usb_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @USB_BUS_LOCK_ASSERT(%struct.usb_bus* %6, i32 %7)
  %9 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %10 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @USB_ISOC_TIME_MAX, align 4
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @USB_ISOC_TIME_MAX, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @USB_ISOC_TIME_MAX, align 4
  %24 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %25 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @USB_ISOC_TIME_MAX, align 4
  %30 = sub nsw i32 %29, 1
  %31 = xor i32 %30, -1
  %32 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %33 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %38 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %42 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  ret i32 %43
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(%struct.usb_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
