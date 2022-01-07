; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_do_pio_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_do_pio_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdfx_pio_data = type { i64, i32, i32, i32 }
%struct.tdfx_softc = type { i64, i64 }

@tdfx_devclass = common dso_local global i32 0, align 4
@VGA_INPUT_STATUS_1C = common dso_local global i64 0, align 8
@SC_INDEX = common dso_local global i64 0, align 8
@SC_DATA = common dso_local global i64 0, align 8
@VGA_MISC_OUTPUT_READ = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tdfx_pio_data*)* @tdfx_do_pio_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfx_do_pio_rd(%struct.tdfx_pio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tdfx_pio_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.tdfx_softc*, align 8
  store %struct.tdfx_pio_data* %0, %struct.tdfx_pio_data** %3, align 8
  %7 = load i32, i32* @tdfx_devclass, align 4
  %8 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %9 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @devclass_get_softc(i32 %7, i32 %10)
  %12 = inttoptr i64 %11 to %struct.tdfx_softc*
  store %struct.tdfx_softc* %12, %struct.tdfx_softc** %6, align 8
  %13 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %14 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VGA_INPUT_STATUS_1C, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %36, label %18

18:                                               ; preds = %1
  %19 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %20 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SC_INDEX, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %26 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SC_DATA, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %32 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VGA_MISC_OUTPUT_READ, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30, %24, %18, %1
  %37 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %38 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %41 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %46 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %49 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %73

55:                                               ; preds = %44, %36, %30
  %56 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %57 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %73

63:                                               ; preds = %55
  %64 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %65 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @inb(i64 %67)
  store i32 %68, i32* %4, align 4
  %69 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %70 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @copyout(i32* %4, i32 %71, i32 4)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %63, %60, %52
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @devclass_get_softc(i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
