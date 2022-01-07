; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@MSK_FLAG_LINK = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"watchdog timeout (missed link)\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*)* @msk_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_watchdog(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %4 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %5 = call i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc* %4)
  %6 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %7 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %12 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %68

17:                                               ; preds = %10
  %18 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %19 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %18, i32 0, i32 2
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %3, align 8
  %21 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %22 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MSK_FLAG_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %17
  %28 = load i64, i64* @bootverbose, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %32 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %31, i32 0, i32 2
  %33 = load %struct.ifnet*, %struct.ifnet** %32, align 8
  %34 = call i32 @if_printf(%struct.ifnet* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %27
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %38 = call i32 @if_inc_counter(%struct.ifnet* %36, i32 %37, i32 1)
  %39 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %46 = call i32 @msk_init_locked(%struct.msk_if_softc* %45)
  br label %68

47:                                               ; preds = %17
  %48 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %49 = call i32 @if_printf(%struct.ifnet* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %51 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %52 = call i32 @if_inc_counter(%struct.ifnet* %50, i32 %51, i32 1)
  %53 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %60 = call i32 @msk_init_locked(%struct.msk_if_softc* %59)
  %61 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = call i32 @IFQ_DRV_IS_EMPTY(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %47
  %66 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %67 = call i32 @msk_start_locked(%struct.ifnet* %66)
  br label %68

68:                                               ; preds = %16, %35, %65, %47
  ret void
}

declare dso_local i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @msk_init_locked(%struct.msk_if_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @msk_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
