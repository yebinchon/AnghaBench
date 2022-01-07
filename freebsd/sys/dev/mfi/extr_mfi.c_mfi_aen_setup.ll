; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_aen_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_aen_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32 }
%struct.mfi_evt_log_state = type { i64, i32, i32 }
%union.mfi_evt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@mfi_event_locale = common dso_local global i32 0, align 4
@mfi_event_class = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_aen_setup(%struct.mfi_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mfi_evt_log_state*, align 8
  %6 = alloca %union.mfi_evt, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.mfi_evt_log_state* null, %struct.mfi_evt_log_state** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %9, i32 0, i32 1
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = bitcast %union.mfi_evt* %6 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @mfi_event_locale, align 4
  %16 = bitcast %union.mfi_evt* %6 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @mfi_event_class, align 4
  %19 = bitcast %union.mfi_evt* %6 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %2
  %24 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %25 = call i32 @mfi_get_log_state(%struct.mfi_softc* %24, %struct.mfi_evt_log_state** %5)
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %56

28:                                               ; preds = %23
  %29 = load %struct.mfi_evt_log_state*, %struct.mfi_evt_log_state** %5, align 8
  %30 = getelementptr inbounds %struct.mfi_evt_log_state, %struct.mfi_evt_log_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %35 = load %struct.mfi_evt_log_state*, %struct.mfi_evt_log_state** %5, align 8
  %36 = getelementptr inbounds %struct.mfi_evt_log_state, %struct.mfi_evt_log_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mfi_evt_log_state*, %struct.mfi_evt_log_state** %5, align 8
  %39 = getelementptr inbounds %struct.mfi_evt_log_state, %struct.mfi_evt_log_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @mfi_parse_entries(%struct.mfi_softc* %34, i32 %37, i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %56

44:                                               ; preds = %28
  %45 = load %struct.mfi_evt_log_state*, %struct.mfi_evt_log_state** %5, align 8
  %46 = getelementptr inbounds %struct.mfi_evt_log_state, %struct.mfi_evt_log_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  br label %50

48:                                               ; preds = %2
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %52 = load i64, i64* %8, align 8
  %53 = bitcast %union.mfi_evt* %6 to i32*
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mfi_aen_register(%struct.mfi_softc* %51, i64 %52, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %50, %43, %27
  %57 = load %struct.mfi_evt_log_state*, %struct.mfi_evt_log_state** %5, align 8
  %58 = load i32, i32* @M_MFIBUF, align 4
  %59 = call i32 @free(%struct.mfi_evt_log_state* %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mfi_get_log_state(%struct.mfi_softc*, %struct.mfi_evt_log_state**) #1

declare dso_local i32 @mfi_parse_entries(%struct.mfi_softc*, i32, i64) #1

declare dso_local i32 @mfi_aen_register(%struct.mfi_softc*, i64, i32) #1

declare dso_local i32 @free(%struct.mfi_evt_log_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
