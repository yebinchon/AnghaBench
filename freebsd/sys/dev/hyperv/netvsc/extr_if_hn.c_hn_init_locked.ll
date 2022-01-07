; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i64, %struct.TYPE_2__*, %struct.ifnet* }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i32 }

@HN_FLAG_SYNTH_ATTACHED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_init_locked(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %5 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %5, i32 0, i32 4
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %9 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %8)
  %10 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %11 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %76

17:                                               ; preds = %1
  %18 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %76

25:                                               ; preds = %17
  %26 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %27 = call i32 @hn_rxfilter_config(%struct.hn_softc* %26)
  %28 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %31 = call i32 @atomic_clear_int(i32* %29, i32 %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %46, %25
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %35 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %40 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %32

49:                                               ; preds = %32
  %50 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %51 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %52 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @hn_resume_tx(%struct.hn_softc* %50, i32 %53)
  %55 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %56 = call i64 @hn_xpnt_vf_isready(%struct.hn_softc* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %60 = call i32 @hn_xpnt_vf_init(%struct.hn_softc* %59)
  br label %61

61:                                               ; preds = %58, %49
  %62 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 0
  %64 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %65 = call i32 @atomic_set_int(i32* %63, i32 %64)
  %66 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %67 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %72 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %73 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @hn_polling(%struct.hn_softc* %71, i64 %74)
  br label %76

76:                                               ; preds = %16, %24, %70, %61
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @hn_rxfilter_config(%struct.hn_softc*) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

declare dso_local i32 @hn_resume_tx(%struct.hn_softc*, i32) #1

declare dso_local i64 @hn_xpnt_vf_isready(%struct.hn_softc*) #1

declare dso_local i32 @hn_xpnt_vf_init(%struct.hn_softc*) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i32 @hn_polling(%struct.hn_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
