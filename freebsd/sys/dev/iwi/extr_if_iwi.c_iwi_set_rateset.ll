; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_set_rateset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_set_rateset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }
%struct.ieee80211_rateset = type { i64, i32 }
%struct.iwi_rateset = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Truncating negotiated rate set from %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Setting .11%c%s %s rates (%u)\0A\00", align 1
@IWI_MODE_11A = common dso_local global i32 0, align 4
@IWI_MODE_11G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IWI_RATESET_TYPE_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"supported\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"negotiated\00", align 1
@IWI_CMD_SET_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*, %struct.ieee80211_rateset*, i32, i32)* @iwi_set_rateset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_set_rateset(%struct.iwi_softc* %0, %struct.ieee80211_rateset* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwi_softc*, align 8
  %6 = alloca %struct.ieee80211_rateset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwi_rateset, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %5, align 8
  store %struct.ieee80211_rateset* %1, %struct.ieee80211_rateset** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.iwi_rateset* %9, i32 0, i32 24)
  %11 = load i32, i32* %7, align 4
  %12 = getelementptr inbounds %struct.iwi_rateset, %struct.iwi_rateset* %9, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.iwi_rateset, %struct.iwi_rateset* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.iwi_rateset, %struct.iwi_rateset* %9, i32 0, i32 2
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.iwi_rateset, %struct.iwi_rateset* %9, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.iwi_rateset, %struct.iwi_rateset* %9, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @nitems(i32 %22)
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.iwi_rateset, %struct.iwi_rateset* %9, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @DPRINTF(i8* %28)
  %30 = getelementptr inbounds %struct.iwi_rateset, %struct.iwi_rateset* %9, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @nitems(i32 %31)
  %33 = getelementptr inbounds %struct.iwi_rateset, %struct.iwi_rateset* %9, i32 0, i32 2
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %25, %4
  %35 = getelementptr inbounds %struct.iwi_rateset, %struct.iwi_rateset* %9, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.iwi_rateset, %struct.iwi_rateset* %9, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @memcpy(i32 %36, i32 %39, i64 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @IWI_MODE_11A, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 97, i32 98
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @IWI_MODE_11G, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @IWI_RATESET_TYPE_SUPPORTED, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)
  %58 = getelementptr inbounds %struct.iwi_rateset, %struct.iwi_rateset* %9, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @DPRINTF(i8* %60)
  %62 = load %struct.iwi_softc*, %struct.iwi_softc** %5, align 8
  %63 = load i32, i32* @IWI_CMD_SET_RATES, align 4
  %64 = call i32 @iwi_cmd(%struct.iwi_softc* %62, i32 %63, %struct.iwi_rateset* %9, i32 24)
  ret i32 %64
}

declare dso_local i32 @memset(%struct.iwi_rateset*, i32, i32) #1

declare dso_local i64 @nitems(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @iwi_cmd(%struct.iwi_softc*, i32, %struct.iwi_rateset*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
