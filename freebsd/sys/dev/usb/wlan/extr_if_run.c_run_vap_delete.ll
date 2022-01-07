; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_vap_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_vap_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.run_softc* }
%struct.run_softc = type { i32, i32, i32 }
%struct.run_vap = type { i32, i32* }

@RUN_DEBUG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"vap=%p rvp_id=%d bmap=%x rvp_cnt=%d\0A\00", align 1
@M_80211_VAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @run_vap_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_vap_delete(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.run_vap*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.run_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %8 = call %struct.run_vap* @RUN_VAP(%struct.ieee80211vap* %7)
  store %struct.run_vap* %8, %struct.run_vap** %3, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %10 = icmp eq %struct.ieee80211vap* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %76

12:                                               ; preds = %1
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 0
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %14, align 8
  store %struct.ieee80211com* %15, %struct.ieee80211com** %4, align 8
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 0
  %18 = load %struct.run_softc*, %struct.run_softc** %17, align 8
  store %struct.run_softc* %18, %struct.run_softc** %5, align 8
  %19 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %20 = call i32 @RUN_LOCK(%struct.run_softc* %19)
  %21 = load %struct.run_vap*, %struct.run_vap** %3, align 8
  %22 = getelementptr inbounds %struct.run_vap, %struct.run_vap* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @m_freem(i32* %23)
  %25 = load %struct.run_vap*, %struct.run_vap** %3, align 8
  %26 = getelementptr inbounds %struct.run_vap, %struct.run_vap* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.run_vap*, %struct.run_vap** %3, align 8
  %28 = getelementptr inbounds %struct.run_vap, %struct.run_vap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %34 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %41 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @RT2860_SKEY(i32 %45, i32 0)
  %47 = call i32 @run_set_region_4(%struct.run_softc* %44, i32 %46, i32 0, i32 128)
  %48 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @RT2860_BCN_BASE(i32 %49)
  %51 = call i32 @run_set_region_4(%struct.run_softc* %48, i32 %50, i32 0, i32 512)
  %52 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %53 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %57 = load i32, i32* @RUN_DEBUG_STATE, align 4
  %58 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %61 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %64 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @RUN_DPRINTF(%struct.run_softc* %56, i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.ieee80211vap* %58, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %68 = call i32 @RUN_UNLOCK(%struct.run_softc* %67)
  %69 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %70 = call i32 @ieee80211_ratectl_deinit(%struct.ieee80211vap* %69)
  %71 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %72 = call i32 @ieee80211_vap_detach(%struct.ieee80211vap* %71)
  %73 = load %struct.run_vap*, %struct.run_vap** %3, align 8
  %74 = load i32, i32* @M_80211_VAP, align 4
  %75 = call i32 @free(%struct.run_vap* %73, i32 %74)
  br label %76

76:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.run_vap* @RUN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @run_set_region_4(%struct.run_softc*, i32, i32, i32) #1

declare dso_local i32 @RT2860_SKEY(i32, i32) #1

declare dso_local i32 @RT2860_BCN_BASE(i32) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, %struct.ieee80211vap*, i32, i32, i32) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

declare dso_local i32 @ieee80211_ratectl_deinit(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_vap_detach(%struct.ieee80211vap*) #1

declare dso_local i32 @free(%struct.run_vap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
