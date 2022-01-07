; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_do_pio_wt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_do_pio_wt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdfx_pio_data = type { i64, i32, i32, i32 }
%struct.tdfx_softc = type { i64, i64 }

@tdfx_devclass = common dso_local global i32 0, align 4
@SC_INDEX = common dso_local global i64 0, align 8
@SC_DATA = common dso_local global i64 0, align 8
@VGA_MISC_OUTPUT_READ = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tdfx_pio_data*)* @tdfx_do_pio_wt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfx_do_pio_wt(%struct.tdfx_pio_data* %0) #0 {
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
  %16 = load i64, i64* @SC_INDEX, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %1
  %19 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %20 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SC_DATA, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %26 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VGA_MISC_OUTPUT_READ, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %32 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %35 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %40 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %43 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %68

49:                                               ; preds = %38, %30, %24, %18, %1
  %50 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %51 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %68

57:                                               ; preds = %49
  %58 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %59 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @copyin(i32 %60, i32* %4, i32 4)
  %62 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %3, align 8
  %63 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @outb(i64 %65, i32 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %57, %54, %46
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @devclass_get_softc(i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @outb(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
