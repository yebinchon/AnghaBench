; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_bus_devinfo = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ofw_bus_get_status(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ofw_bus_devinfo*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @device_get_parent(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ofw_bus_devinfo* @OFW_BUS_GET_DEVINFO(i32 %6, i32 %7)
  store %struct.ofw_bus_devinfo* %8, %struct.ofw_bus_devinfo** %4, align 8
  %9 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %4, align 8
  %10 = icmp eq %struct.ofw_bus_devinfo* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %2, align 8
  br label %16

16:                                               ; preds = %12, %11
  %17 = load i8*, i8** %2, align 8
  ret i8* %17
}

declare dso_local %struct.ofw_bus_devinfo* @OFW_BUS_GET_DEVINFO(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
