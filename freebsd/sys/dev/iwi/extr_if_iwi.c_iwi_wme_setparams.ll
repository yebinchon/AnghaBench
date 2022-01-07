; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_wme_setparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_wme_setparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { %struct.TYPE_2__*, %struct.ieee80211com }
%struct.TYPE_2__ = type { i32*, i32*, i8**, i8**, i32* }
%struct.ieee80211com = type { i32 }
%struct.chanAccParams = type { %struct.wmeParams* }
%struct.wmeParams = type { i32, i32, i32, i32, i32 }

@WME_NUM_AC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Setting WME parameters\0A\00", align 1
@IWI_CMD_SET_WME_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*)* @iwi_wme_setparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_wme_setparams(%struct.iwi_softc* %0) #0 {
  %2 = alloca %struct.iwi_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.chanAccParams, align 8
  %5 = alloca %struct.wmeParams*, align 8
  %6 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %2, align 8
  %7 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %7, i32 0, i32 1
  store %struct.ieee80211com* %8, %struct.ieee80211com** %3, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = call i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com* %9, %struct.chanAccParams* %4)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %84, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @WME_NUM_AC, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %87

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.chanAccParams, %struct.chanAccParams* %4, i32 0, i32 0
  %17 = load %struct.wmeParams*, %struct.wmeParams** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %17, i64 %19
  store %struct.wmeParams* %20, %struct.wmeParams** %5, align 8
  %21 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %22 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %25 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %23, i32* %32, align 4
  %33 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %34 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @IWI_EXP2(i32 %35)
  %37 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %38 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %36, i8** %45, align 8
  %46 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %47 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @IWI_EXP2(i32 %48)
  %50 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %51 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %49, i8** %58, align 8
  %59 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %60 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @IWI_USEC(i32 %61)
  %63 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %64 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %62, i32* %71, align 4
  %72 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %73 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %76 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %74, i32* %83, align 4
  br label %84

84:                                               ; preds = %15
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %11

87:                                               ; preds = %11
  %88 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %90 = load i32, i32* @IWI_CMD_SET_WME_PARAMS, align 4
  %91 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %92 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = call i32 @iwi_cmd(%struct.iwi_softc* %89, i32 %90, %struct.TYPE_2__* %93, i32 8)
  ret i32 %94
}

declare dso_local i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com*, %struct.chanAccParams*) #1

declare dso_local i8* @IWI_EXP2(i32) #1

declare dso_local i32 @IWI_USEC(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @iwi_cmd(%struct.iwi_softc*, i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
