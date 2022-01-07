; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_set_clock_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_set_clock_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i64, i32, i32, %struct.bwi_regwin }
%struct.bwi_regwin = type { i32 }
%struct.bwi_clock_freq = type { i32 }

@BWI_BBPID_BCM4321 = common dso_local global i64 0, align 8
@BWI_CONTROL = common dso_local global i32 0, align 4
@BWI_CONTROL_MAGIC0 = common dso_local global i32 0, align 4
@BWI_CONTROL_MAGIC1 = common dso_local global i32 0, align 4
@BWI_CAP_CLKMODE = common dso_local global i32 0, align 4
@BWI_CLOCK_INFO = common dso_local global i32 0, align 4
@BWI_PLL_ON_DELAY = common dso_local global i32 0, align 4
@BWI_FREQ_SEL_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*)* @bwi_set_clock_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_set_clock_delay(%struct.bwi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_regwin*, align 8
  %5 = alloca %struct.bwi_regwin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwi_clock_freq, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  %8 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %8, i32 0, i32 3
  store %struct.bwi_regwin* %9, %struct.bwi_regwin** %5, align 8
  %10 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %11 = call i32 @BWI_REGWIN_EXIST(%struct.bwi_regwin* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

14:                                               ; preds = %1
  %15 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %16 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %17 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %15, %struct.bwi_regwin* %16, %struct.bwi_regwin** %4)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %88

22:                                               ; preds = %14
  %23 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BWI_BBPID_BCM4321, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %35 = load i32, i32* @BWI_CONTROL, align 4
  %36 = load i32, i32* @BWI_CONTROL_MAGIC0, align 4
  %37 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %34, i32 %35, i32 %36)
  br label %49

38:                                               ; preds = %28
  %39 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %40 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %45 = load i32, i32* @BWI_CONTROL, align 4
  %46 = load i32, i32* @BWI_CONTROL_MAGIC1, align 4
  %47 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %33
  br label %50

50:                                               ; preds = %49, %22
  %51 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %52 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BWI_CAP_CLKMODE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %50
  %58 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %59 = getelementptr inbounds %struct.bwi_regwin, %struct.bwi_regwin* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 10
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %64 = load i32, i32* @BWI_CLOCK_INFO, align 4
  %65 = call i32 @CSR_FILT_SETBITS_4(%struct.bwi_softc* %63, i32 %64, i32 65535, i32 262144)
  br label %83

66:                                               ; preds = %57
  %67 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %68 = call i32 @bwi_get_clock_freq(%struct.bwi_softc* %67, %struct.bwi_clock_freq* %7)
  %69 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %70 = load i32, i32* @BWI_PLL_ON_DELAY, align 4
  %71 = getelementptr inbounds %struct.bwi_clock_freq, %struct.bwi_clock_freq* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 150
  %74 = call i32 @howmany(i32 %73, i32 1000000)
  %75 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %69, i32 %70, i32 %74)
  %76 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %77 = load i32, i32* @BWI_FREQ_SEL_DELAY, align 4
  %78 = getelementptr inbounds %struct.bwi_clock_freq, %struct.bwi_clock_freq* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 15
  %81 = call i32 @howmany(i32 %80, i32 1000000)
  %82 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %76, i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %66, %62
  br label %84

84:                                               ; preds = %83, %50
  %85 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %86 = load %struct.bwi_regwin*, %struct.bwi_regwin** %4, align 8
  %87 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %85, %struct.bwi_regwin* %86, %struct.bwi_regwin** null)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %20, %13
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @BWI_REGWIN_EXIST(%struct.bwi_regwin*) #1

declare dso_local i32 @bwi_regwin_switch(%struct.bwi_softc*, %struct.bwi_regwin*, %struct.bwi_regwin**) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_FILT_SETBITS_4(%struct.bwi_softc*, i32, i32, i32) #1

declare dso_local i32 @bwi_get_clock_freq(%struct.bwi_softc*, %struct.bwi_clock_freq*) #1

declare dso_local i32 @howmany(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
