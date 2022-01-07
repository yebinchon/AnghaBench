; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_sanity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_sanity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_tz_softc = type { i32, i32 }

@TZ_ZEROC = common dso_local global i32 0, align 4
@acpi_tz_tmp_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"%s value is absurd, ignored (%d.%dC)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_tz_softc*, i32*, i8*)* @acpi_tz_sanity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_tz_sanity(%struct.acpi_tz_softc* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.acpi_tz_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.acpi_tz_softc* %0, %struct.acpi_tz_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %48

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TZ_ZEROC, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TZ_ZEROC, align 4
  %19 = add nsw i32 %18, 2000
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15, %10
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** @acpi_tz_tmp_name, align 8
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @TZ_KELVTOC(i32 %36)
  %38 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** @acpi_tz_tmp_name, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %44 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %30
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i32*, i32** %5, align 8
  store i32 -1, i32* %47, align 4
  br label %55

48:                                               ; preds = %15, %3
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** @acpi_tz_tmp_name, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %54 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %52, %48
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i8*, i32) #1

declare dso_local i32 @TZ_KELVTOC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
