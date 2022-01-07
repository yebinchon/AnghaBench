; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_acpi.c_uart_acpi_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_acpi.c_uart_acpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32 }
%struct.acpi_uart_compat_data = type { i32, i32, i32, i32, i32*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_acpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_acpi_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca %struct.acpi_uart_compat_data*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.uart_softc* @device_get_softc(i32 %6)
  store %struct.uart_softc* %7, %struct.uart_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.acpi_uart_compat_data* @uart_acpi_find_device(i32 %8)
  store %struct.acpi_uart_compat_data* %9, %struct.acpi_uart_compat_data** %5, align 8
  %10 = icmp ne %struct.acpi_uart_compat_data* %9, null
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = load %struct.acpi_uart_compat_data*, %struct.acpi_uart_compat_data** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_uart_compat_data, %struct.acpi_uart_compat_data* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.acpi_uart_compat_data*, %struct.acpi_uart_compat_data** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_uart_compat_data, %struct.acpi_uart_compat_data* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.acpi_uart_compat_data*, %struct.acpi_uart_compat_data** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_uart_compat_data, %struct.acpi_uart_compat_data* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @device_set_desc(i32 %22, i32* %25)
  br label %27

27:                                               ; preds = %21, %11
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.acpi_uart_compat_data*, %struct.acpi_uart_compat_data** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_uart_compat_data, %struct.acpi_uart_compat_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.acpi_uart_compat_data*, %struct.acpi_uart_compat_data** %5, align 8
  %33 = getelementptr inbounds %struct.acpi_uart_compat_data, %struct.acpi_uart_compat_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.acpi_uart_compat_data*, %struct.acpi_uart_compat_data** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_uart_compat_data, %struct.acpi_uart_compat_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.acpi_uart_compat_data*, %struct.acpi_uart_compat_data** %5, align 8
  %39 = getelementptr inbounds %struct.acpi_uart_compat_data, %struct.acpi_uart_compat_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @uart_bus_probe(i32 %28, i32 %31, i32 %34, i32 %37, i32 0, i32 0, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local %struct.acpi_uart_compat_data* @uart_acpi_find_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i32*) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
