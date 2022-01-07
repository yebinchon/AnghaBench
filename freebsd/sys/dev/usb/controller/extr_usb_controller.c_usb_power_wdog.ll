; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_power_wdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_power_wdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usb_power_wdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_power_wdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usb_bus*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.usb_bus*
  store %struct.usb_bus* %5, %struct.usb_bus** %3, align 8
  %6 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @USB_BUS_LOCK_ASSERT(%struct.usb_bus* %6, i32 %7)
  %9 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %10 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %9, i32 0, i32 0
  %11 = load i32, i32* @hz, align 4
  %12 = mul nsw i32 4, %11
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @usb_callout_reset(i32* %10, i32 %12, void (i8*)* @usb_power_wdog, i8* %13)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(%struct.usb_bus*, i32) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, void (i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
