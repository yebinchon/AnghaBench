; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, i32* }
%struct.mii_data = type { i32 }

@EJUSTRETURN = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xl_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xl_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.xl_softc*
  store %struct.xl_softc* %6, %struct.xl_softc** %3, align 8
  %7 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %8 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %7)
  %9 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %10 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %15 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call %struct.mii_data* @device_get_softc(i32* %16)
  store %struct.mii_data* %17, %struct.mii_data** %4, align 8
  %18 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %19 = call i32 @mii_tick(%struct.mii_data* %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %22 = call i32 @xl_stats_update(%struct.xl_softc* %21)
  %23 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %24 = call i64 @xl_watchdog(%struct.xl_softc* %23)
  %25 = load i64, i64* @EJUSTRETURN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %34

28:                                               ; preds = %20
  %29 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %30 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %29, i32 0, i32 0
  %31 = load i32, i32* @hz, align 4
  %32 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %33 = call i32 @callout_reset(i32* %30, i32 %31, void (i8*)* @xl_tick, %struct.xl_softc* %32)
  br label %34

34:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32*) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @xl_stats_update(%struct.xl_softc*) #1

declare dso_local i64 @xl_watchdog(%struct.xl_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.xl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
