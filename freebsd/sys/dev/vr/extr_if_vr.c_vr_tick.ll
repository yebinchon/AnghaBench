; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mii_data = type { i32 }

@VR_F_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"restarting\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@VR_F_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vr_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vr_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vr_softc*
  store %struct.vr_softc* %6, %struct.vr_softc** %3, align 8
  %7 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %8 = call i32 @VR_LOCK_ASSERT(%struct.vr_softc* %7)
  %9 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VR_F_RESTART, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %1
  %16 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %17 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %28 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %34 = call i32 @vr_init_locked(%struct.vr_softc* %33)
  %35 = load i32, i32* @VR_F_RESTART, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %38 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %15, %1
  %42 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %43 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.mii_data* @device_get_softc(i32 %44)
  store %struct.mii_data* %45, %struct.mii_data** %4, align 8
  %46 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %47 = call i32 @mii_tick(%struct.mii_data* %46)
  %48 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %49 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VR_F_LINK, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %56 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @vr_miibus_statchg(i32 %57)
  br label %59

59:                                               ; preds = %54, %41
  %60 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %61 = call i32 @vr_watchdog(%struct.vr_softc* %60)
  %62 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %63 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %62, i32 0, i32 1
  %64 = load i32, i32* @hz, align 4
  %65 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %66 = call i32 @callout_reset(i32* %63, i32 %64, void (i8*)* @vr_tick, %struct.vr_softc* %65)
  ret void
}

declare dso_local i32 @VR_LOCK_ASSERT(%struct.vr_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vr_init_locked(%struct.vr_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @vr_miibus_statchg(i32) #1

declare dso_local i32 @vr_watchdog(%struct.vr_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.vr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
