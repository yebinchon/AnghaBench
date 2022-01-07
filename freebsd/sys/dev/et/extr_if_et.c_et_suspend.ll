; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ET_PM = common dso_local global i32 0, align 4
@EM_PM_GIGEPHY_ENB = common dso_local global i32 0, align 4
@ET_PM_SYSCLK_GATE = common dso_local global i32 0, align 4
@ET_PM_TXCLK_GATE = common dso_local global i32 0, align 4
@ET_PM_RXCLK_GATE = common dso_local global i32 0, align 4
@ET_PM_PHY_SW_COMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @et_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.et_softc* @device_get_softc(i32 %5)
  store %struct.et_softc* %6, %struct.et_softc** %3, align 8
  %7 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %8 = call i32 @ET_LOCK(%struct.et_softc* %7)
  %9 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %10 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %19 = call i32 @et_stop(%struct.et_softc* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %22 = load i32, i32* @ET_PM, align 4
  %23 = call i32 @CSR_READ_4(%struct.et_softc* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @EM_PM_GIGEPHY_ENB, align 4
  %25 = load i32, i32* @ET_PM_SYSCLK_GATE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ET_PM_TXCLK_GATE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ET_PM_RXCLK_GATE, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @ET_PM_PHY_SW_COMA, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %38 = load i32, i32* @ET_PM, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @CSR_WRITE_4(%struct.et_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %42 = call i32 @ET_UNLOCK(%struct.et_softc* %41)
  ret i32 0
}

declare dso_local %struct.et_softc* @device_get_softc(i32) #1

declare dso_local i32 @ET_LOCK(%struct.et_softc*) #1

declare dso_local i32 @et_stop(%struct.et_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.et_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

declare dso_local i32 @ET_UNLOCK(%struct.et_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
