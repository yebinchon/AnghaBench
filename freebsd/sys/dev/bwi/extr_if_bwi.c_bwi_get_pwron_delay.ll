; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_get_pwron_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_get_pwron_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, i32, %struct.bwi_regwin }
%struct.bwi_regwin = type { i32 }
%struct.bwi_clock_freq = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"no regwin\00", align 1
@BWI_CAP_CLKMODE = common dso_local global i32 0, align 4
@BWI_PLL_ON_DELAY = common dso_local global i32 0, align 4
@BWI_DBG_ATTACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"power on delay %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*)* @bwi_get_pwron_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_get_pwron_delay(%struct.bwi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_regwin*, align 8
  %5 = alloca %struct.bwi_regwin*, align 8
  %6 = alloca %struct.bwi_clock_freq, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %9, i32 0, i32 2
  store %struct.bwi_regwin* %10, %struct.bwi_regwin** %4, align 8
  %11 = load %struct.bwi_regwin*, %struct.bwi_regwin** %4, align 8
  %12 = call i32 @BWI_REGWIN_EXIST(%struct.bwi_regwin* %11)
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BWI_CAP_CLKMODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %23 = load %struct.bwi_regwin*, %struct.bwi_regwin** %4, align 8
  %24 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %22, %struct.bwi_regwin* %23, %struct.bwi_regwin** %5)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %52

29:                                               ; preds = %21
  %30 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %31 = call i32 @bwi_get_clock_freq(%struct.bwi_softc* %30, %struct.bwi_clock_freq* %6)
  %32 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %33 = load i32, i32* @BWI_PLL_ON_DELAY, align 4
  %34 = call i32 @CSR_READ_4(%struct.bwi_softc* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 2
  %37 = mul nsw i32 %36, 1000000
  %38 = getelementptr inbounds %struct.bwi_clock_freq, %struct.bwi_clock_freq* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @howmany(i32 %37, i32 %39)
  %41 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %42 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %44 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %45 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %46 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DPRINTF(%struct.bwi_softc* %43, i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %50 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %51 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %49, %struct.bwi_regwin* %50, %struct.bwi_regwin** null)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %29, %27, %20
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BWI_REGWIN_EXIST(%struct.bwi_regwin*) #1

declare dso_local i32 @bwi_regwin_switch(%struct.bwi_softc*, %struct.bwi_regwin*, %struct.bwi_regwin**) #1

declare dso_local i32 @bwi_get_clock_freq(%struct.bwi_softc*, %struct.bwi_clock_freq*) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
