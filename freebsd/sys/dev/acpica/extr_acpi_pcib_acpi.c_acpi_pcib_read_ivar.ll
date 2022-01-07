; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pcib_acpi.c_acpi_pcib_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pcib_acpi.c_acpi_pcib_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hpcib_softc = type { i64, i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @acpi_pcib_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pcib_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.acpi_hpcib_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.acpi_hpcib_softc* @device_get_softc(i32 %11)
  store %struct.acpi_hpcib_softc* %12, %struct.acpi_hpcib_softc** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %36 [
    i32 128, label %14
    i32 129, label %19
    i32 130, label %24
    i32 131, label %30
  ]

14:                                               ; preds = %4
  %15 = load %struct.acpi_hpcib_softc*, %struct.acpi_hpcib_softc** %10, align 8
  %16 = getelementptr inbounds %struct.acpi_hpcib_softc, %struct.acpi_hpcib_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %9, align 8
  store i64 %17, i64* %18, align 8
  store i32 0, i32* %5, align 4
  br label %38

19:                                               ; preds = %4
  %20 = load %struct.acpi_hpcib_softc*, %struct.acpi_hpcib_softc** %10, align 8
  %21 = getelementptr inbounds %struct.acpi_hpcib_softc, %struct.acpi_hpcib_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %9, align 8
  store i64 %22, i64* %23, align 8
  store i32 0, i32* %5, align 4
  br label %38

24:                                               ; preds = %4
  %25 = load %struct.acpi_hpcib_softc*, %struct.acpi_hpcib_softc** %10, align 8
  %26 = getelementptr inbounds %struct.acpi_hpcib_softc, %struct.acpi_hpcib_softc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64*, i64** %9, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %5, align 4
  br label %38

30:                                               ; preds = %4
  %31 = load %struct.acpi_hpcib_softc*, %struct.acpi_hpcib_softc** %10, align 8
  %32 = getelementptr inbounds %struct.acpi_hpcib_softc, %struct.acpi_hpcib_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %5, align 4
  br label %38

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOENT, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %30, %24, %19, %14
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.acpi_hpcib_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
