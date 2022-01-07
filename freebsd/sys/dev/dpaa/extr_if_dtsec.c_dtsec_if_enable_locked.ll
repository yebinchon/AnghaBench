; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_if_enable_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_if_enable_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@e_COMM_MODE_RX_AND_TX = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtsec_softc*)* @dtsec_if_enable_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtsec_if_enable_locked(%struct.dtsec_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dtsec_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %3, align 8
  %5 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %6 = call i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc* %5)
  %7 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %8 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @e_COMM_MODE_RX_AND_TX, align 4
  %11 = call i32 @FM_MAC_Enable(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @E_OK, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @EIO, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %19 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @FM_PORT_Enable(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @E_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @EIO, align 4
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %17
  %28 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %29 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @FM_PORT_Enable(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @E_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EIO, align 4
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %27
  %38 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %39 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %40 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 4
  %45 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %46 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dtsec_miibus_statchg(i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %37, %35, %25, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc*) #1

declare dso_local i32 @FM_MAC_Enable(i32, i32) #1

declare dso_local i32 @FM_PORT_Enable(i32) #1

declare dso_local i32 @dtsec_miibus_statchg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
