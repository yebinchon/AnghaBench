; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_cooling_is_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_cooling_is_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_tz_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_tz_softc*)* @acpi_tz_cooling_is_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tz_cooling_is_available(%struct.acpi_tz_softc* %0) #0 {
  %2 = alloca %struct.acpi_tz_softc*, align 8
  store %struct.acpi_tz_softc* %0, %struct.acpi_tz_softc** %2, align 8
  %3 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %2, align 8
  %16 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %2, align 8
  %28 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, -1
  br label %32

32:                                               ; preds = %26, %20, %14, %8, %1
  %33 = phi i1 [ false, %20 ], [ false, %14 ], [ false, %8 ], [ false, %1 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
