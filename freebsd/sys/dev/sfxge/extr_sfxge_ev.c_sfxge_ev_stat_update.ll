; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_stat_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_stat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32*, %struct.sfxge_evq**, i64 }
%struct.sfxge_evq = type { i64* }

@ticks = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@EV_NQSTATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*)* @sfxge_ev_stat_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_ev_stat_update(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.sfxge_evq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %7 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %8 = call i32 @SFXGE_ADAPTER_LOCK(%struct.sfxge_softc* %7)
  %9 = load i64, i64* @ticks, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = trunc i64 %14 to i32
  %16 = load i64, i64* @hz, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %74

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %23 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  %24 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %25 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @memset(i32* %26, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %70, %20
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %31 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %28
  %35 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %36 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %35, i32 0, i32 2
  %37 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %37, i64 %39
  %41 = load %struct.sfxge_evq*, %struct.sfxge_evq** %40, align 8
  store %struct.sfxge_evq* %41, %struct.sfxge_evq** %3, align 8
  %42 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %43 = call i32 @sfxge_evq_stat_update(%struct.sfxge_evq* %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %66, %34
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @EV_NQSTATS, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %50 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %57 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %55
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %44

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %28

73:                                               ; preds = %28
  br label %74

74:                                               ; preds = %73, %19
  %75 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %76 = call i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc* %75)
  ret void
}

declare dso_local i32 @SFXGE_ADAPTER_LOCK(%struct.sfxge_softc*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sfxge_evq_stat_update(%struct.sfxge_evq*) #1

declare dso_local i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
