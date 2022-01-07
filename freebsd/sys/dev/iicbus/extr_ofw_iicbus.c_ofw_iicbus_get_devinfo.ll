; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ofw_iicbus.c_ofw_iicbus_get_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ofw_iicbus.c_ofw_iicbus_get_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_bus_devinfo = type { i32 }
%struct.ofw_iicbus_devinfo = type { %struct.ofw_bus_devinfo }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ofw_bus_devinfo* (i32, i32)* @ofw_iicbus_get_devinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ofw_bus_devinfo* @ofw_iicbus_get_devinfo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofw_iicbus_devinfo*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.ofw_iicbus_devinfo* @device_get_ivars(i32 %6)
  store %struct.ofw_iicbus_devinfo* %7, %struct.ofw_iicbus_devinfo** %5, align 8
  %8 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %5, align 8
  %9 = getelementptr inbounds %struct.ofw_iicbus_devinfo, %struct.ofw_iicbus_devinfo* %8, i32 0, i32 0
  ret %struct.ofw_bus_devinfo* %9
}

declare dso_local %struct.ofw_iicbus_devinfo* @device_get_ivars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
