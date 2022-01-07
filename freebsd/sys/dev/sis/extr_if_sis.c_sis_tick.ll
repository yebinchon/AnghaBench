; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i32, i32, i32, i32 }
%struct.mii_data = type { i32 }

@SIS_FLAG_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sis_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sis_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sis_softc*
  store %struct.sis_softc* %6, %struct.sis_softc** %3, align 8
  %7 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %8 = call i32 @SIS_LOCK_ASSERT(%struct.sis_softc* %7)
  %9 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %10 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mii_data* @device_get_softc(i32 %11)
  store %struct.mii_data* %12, %struct.mii_data** %4, align 8
  %13 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %14 = call i32 @mii_tick(%struct.mii_data* %13)
  %15 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %16 = call i32 @sis_watchdog(%struct.sis_softc* %15)
  %17 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %18 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SIS_FLAG_LINK, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %25 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sis_miibus_statchg(i32 %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %30 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %29, i32 0, i32 1
  %31 = load i32, i32* @hz, align 4
  %32 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %33 = call i32 @callout_reset(i32* %30, i32 %31, void (i8*)* @sis_tick, %struct.sis_softc* %32)
  ret void
}

declare dso_local i32 @SIS_LOCK_ASSERT(%struct.sis_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @sis_watchdog(%struct.sis_softc*) #1

declare dso_local i32 @sis_miibus_statchg(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.sis_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
