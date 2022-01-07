; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_fdt.c_uart_fdt_find_compatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_fdt.c_uart_fdt_find_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_compat_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ofw_compat_data* (i32, %struct.ofw_compat_data*)* @uart_fdt_find_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ofw_compat_data* @uart_fdt_find_compatible(i32 %0, %struct.ofw_compat_data* %1) #0 {
  %3 = alloca %struct.ofw_compat_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofw_compat_data*, align 8
  %6 = alloca %struct.ofw_compat_data*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ofw_compat_data* %1, %struct.ofw_compat_data** %5, align 8
  %7 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %5, align 8
  store %struct.ofw_compat_data* %7, %struct.ofw_compat_data** %6, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %6, align 8
  %10 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %6, align 8
  %16 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @ofw_bus_node_is_compatible(i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %6, align 8
  store %struct.ofw_compat_data* %21, %struct.ofw_compat_data** %3, align 8
  br label %27

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %6, align 8
  %25 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %24, i32 1
  store %struct.ofw_compat_data* %25, %struct.ofw_compat_data** %6, align 8
  br label %8

26:                                               ; preds = %8
  store %struct.ofw_compat_data* null, %struct.ofw_compat_data** %3, align 8
  br label %27

27:                                               ; preds = %26, %20
  %28 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %3, align 8
  ret %struct.ofw_compat_data* %28
}

declare dso_local i64 @ofw_bus_node_is_compatible(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
