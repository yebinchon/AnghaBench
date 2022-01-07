; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl_subr.c_bhnd_pwrctl_slowclk_src.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl_subr.c_bhnd_pwrctl_slowclk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pwrctl_softc = type { i32, i32 }

@PCICLK_CTL = common dso_local global i32 0, align 4
@BHND_CLOCK_ILP = common dso_local global i32 0, align 4
@SLOWCLK_CTL = common dso_local global i32 0, align 4
@CHIPC_PLL_SLOWCLK_CTL = common dso_local global i32 0, align 4
@CHIPC_SCC_SS_MASK = common dso_local global i32 0, align 4
@BHND_CLKSRC_PCI = common dso_local global i32 0, align 4
@BHND_CLKSRC_LPO = common dso_local global i32 0, align 4
@BHND_CLKSRC_XTAL = common dso_local global i32 0, align 4
@BHND_CLKSRC_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pwrctl_softc*)* @bhnd_pwrctl_slowclk_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pwrctl_slowclk_src(%struct.bhnd_pwrctl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_pwrctl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bhnd_pwrctl_softc* %0, %struct.bhnd_pwrctl_softc** %3, align 8
  %6 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %7 = load i32, i32* @PCICLK_CTL, align 4
  %8 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BHND_CLOCK_ILP, align 4
  %15 = call i32 @bhnd_pwrctl_hostb_get_clksrc(i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %18 = load i32, i32* @SLOWCLK_CTL, align 4
  %19 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CHIPC_PLL_SLOWCLK_CTL, align 4
  %26 = call i32 @bhnd_bus_read_4(i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CHIPC_SCC_SS_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %5, align 4
  br label %31

30:                                               ; preds = %16
  store i32 128, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %21
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %40 [
    i32 129, label %34
    i32 130, label %36
    i32 128, label %38
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @BHND_CLKSRC_PCI, align 4
  store i32 %35, i32* %2, align 4
  br label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @BHND_CLKSRC_LPO, align 4
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @BHND_CLKSRC_XTAL, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @BHND_CLKSRC_UNKNOWN, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38, %36, %34, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc*, i32) #1

declare dso_local i32 @bhnd_pwrctl_hostb_get_clksrc(i32, i32) #1

declare dso_local i32 @bhnd_bus_read_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
