; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_txq_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_txq_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32, %struct.mwl_hal*, %struct.mwl_txq**, %struct.ieee80211com }
%struct.mwl_hal = type { i32 }
%struct.mwl_txq = type { i32 }
%struct.ieee80211com = type { i32 }
%struct.chanAccParams = type { %struct.wmeParams* }
%struct.wmeParams = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"unable to update hardware queue parameters for %s traffic!\0A\00", align 1
@ieee80211_wme_acnames = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_softc*, i32)* @mwl_txq_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_txq_update(%struct.mwl_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwl_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.chanAccParams, align 8
  %8 = alloca %struct.mwl_txq*, align 8
  %9 = alloca %struct.wmeParams*, align 8
  %10 = alloca %struct.mwl_hal*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mwl_softc* %0, %struct.mwl_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %15, i32 0, i32 3
  store %struct.ieee80211com* %16, %struct.ieee80211com** %6, align 8
  %17 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %17, i32 0, i32 2
  %19 = load %struct.mwl_txq**, %struct.mwl_txq*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mwl_txq*, %struct.mwl_txq** %19, i64 %21
  %23 = load %struct.mwl_txq*, %struct.mwl_txq** %22, align 8
  store %struct.mwl_txq* %23, %struct.mwl_txq** %8, align 8
  %24 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %24, i32 0, i32 1
  %26 = load %struct.mwl_hal*, %struct.mwl_hal** %25, align 8
  store %struct.mwl_hal* %26, %struct.mwl_hal** %10, align 8
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %28 = call i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com* %27, %struct.chanAccParams* %7)
  %29 = getelementptr inbounds %struct.chanAccParams, %struct.chanAccParams* %7, i32 0, i32 0
  %30 = load %struct.wmeParams*, %struct.wmeParams** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %30, i64 %32
  store %struct.wmeParams* %33, %struct.wmeParams** %9, align 8
  %34 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %35 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %38 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %43 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  %47 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %48 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.mwl_hal*, %struct.mwl_hal** %10, align 8
  %51 = load %struct.mwl_txq*, %struct.mwl_txq** %8, align 8
  %52 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i64 @mwl_hal_setedcaparams(%struct.mwl_hal* %50, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %2
  %61 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %62 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** @ieee80211_wme_acnames, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32 0, i32* %3, align 4
  br label %71

70:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %60
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com*, %struct.chanAccParams*) #1

declare dso_local i64 @mwl_hal_setedcaparams(%struct.mwl_hal*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
