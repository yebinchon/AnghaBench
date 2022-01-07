; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_mem_zero.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_mem_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32, i32 }

@TI_WINLEN = common dso_local global i32 0, align 4
@TI_WINBASE = common dso_local global i32 0, align 4
@TI_WINDOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*, i32, i32)* @ti_mem_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_mem_zero(%struct.ti_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ti_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %27, %3
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @TI_WINLEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %8, align 4
  br label %27

21:                                               ; preds = %15
  %22 = load i32, i32* @TI_WINLEN, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @TI_WINLEN, align 4
  %25 = srem i32 %23, %24
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %21, %19
  %28 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %29 = load i32, i32* @TI_WINBASE, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TI_WINLEN, align 4
  %32 = call i32 @rounddown2(i32 %30, i32 %31)
  %33 = call i32 @CSR_WRITE_4(%struct.ti_softc* %28, i32 %29, i32 %32)
  %34 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @TI_WINDOW, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @TI_WINLEN, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %40, %45
  %47 = load i32, i32* %8, align 4
  %48 = sdiv i32 %47, 4
  %49 = call i32 @bus_space_set_region_4(i32 %36, i32 %39, i64 %46, i32 0, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %12

56:                                               ; preds = %12
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @rounddown2(i32, i32) #1

declare dso_local i32 @bus_space_set_region_4(i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
