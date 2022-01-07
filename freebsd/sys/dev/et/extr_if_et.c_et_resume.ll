; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ET_PM_SYSCLK_GATE = common dso_local global i32 0, align 4
@ET_PM_TXCLK_GATE = common dso_local global i32 0, align 4
@ET_PM_RXCLK_GATE = common dso_local global i32 0, align 4
@ET_FLAG_FASTETHER = common dso_local global i32 0, align 4
@EM_PM_GIGEPHY_ENB = common dso_local global i32 0, align 4
@ET_PM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @et_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.et_softc* @device_get_softc(i32 %5)
  store %struct.et_softc* %6, %struct.et_softc** %3, align 8
  %7 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %8 = call i32 @ET_LOCK(%struct.et_softc* %7)
  %9 = load i32, i32* @ET_PM_SYSCLK_GATE, align 4
  %10 = load i32, i32* @ET_PM_TXCLK_GATE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ET_PM_RXCLK_GATE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %15 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ET_FLAG_FASTETHER, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @EM_PM_GIGEPHY_ENB, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %26 = load i32, i32* @ET_PM, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @CSR_WRITE_4(%struct.et_softc* %25, i32 %26, i32 %27)
  %29 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %30 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFF_UP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %39 = call i32 @et_init_locked(%struct.et_softc* %38)
  br label %40

40:                                               ; preds = %37, %24
  %41 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %42 = call i32 @ET_UNLOCK(%struct.et_softc* %41)
  ret i32 0
}

declare dso_local %struct.et_softc* @device_get_softc(i32) #1

declare dso_local i32 @ET_LOCK(%struct.et_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

declare dso_local i32 @et_init_locked(%struct.et_softc*) #1

declare dso_local i32 @ET_UNLOCK(%struct.et_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
