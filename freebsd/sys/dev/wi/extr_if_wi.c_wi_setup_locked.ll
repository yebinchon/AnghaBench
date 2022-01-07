; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_setup_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_setup_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i32, i32, i64, i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@WI_RID_PORTTYPE = common dso_local global i32 0, align 4
@WI_RID_CREATE_IBSS = common dso_local global i32 0, align 4
@WI_RID_MAX_DATALEN = common dso_local global i32 0, align 4
@WI_RID_ALT_RETRY_CNT = common dso_local global i32 0, align 4
@WI_FLAGS_HAS_ROAMING = common dso_local global i32 0, align 4
@WI_RID_ROAMING_MODE = common dso_local global i32 0, align 4
@WI_RID_MAC_NODE = common dso_local global i32 0, align 4
@IEEE80211_MAX_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"tx buffer allocation failed (error %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wi_softc*, i32, i32, i32*)* @wi_setup_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wi_setup_locked(%struct.wi_softc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wi_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wi_softc* %0, %struct.wi_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %15 = call i32 @wi_reset(%struct.wi_softc* %14)
  %16 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %17 = load i32, i32* @WI_RID_PORTTYPE, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @wi_write_val(%struct.wi_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %21 = load i32, i32* @WI_RID_CREATE_IBSS, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @wi_write_val(%struct.wi_softc* %20, i32 %21, i32 %22)
  %24 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %25 = load i32, i32* @WI_RID_MAX_DATALEN, align 4
  %26 = call i32 @wi_write_val(%struct.wi_softc* %24, i32 %25, i32 2304)
  %27 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %28 = load i32, i32* @WI_RID_ALT_RETRY_CNT, align 4
  %29 = call i32 @wi_write_val(%struct.wi_softc* %27, i32 %28, i32 2)
  %30 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %31 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @WI_FLAGS_HAS_ROAMING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %38 = load i32, i32* @WI_RID_ROAMING_MODE, align 4
  %39 = call i32 @wi_write_val(%struct.wi_softc* %37, i32 %38, i32 3)
  br label %40

40:                                               ; preds = %36, %4
  %41 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %42 = load i32, i32* @WI_RID_MAC_NODE, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %45 = call i32 @wi_write_rid(%struct.wi_softc* %41, i32 %42, i32* %43, i32 %44)
  %46 = load i64, i64* @IEEE80211_MAX_LEN, align 8
  %47 = add i64 %46, 4
  %48 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %49 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %48, i32 0, i32 6
  store i64 %47, i64* %49, align 8
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %86, %40
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %53 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  %57 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %58 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %59 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %62 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = call i32 @wi_alloc_fid(%struct.wi_softc* %57, i64 %60, i32* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %56
  %72 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %73 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %94

78:                                               ; preds = %56
  %79 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %80 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %50

89:                                               ; preds = %50
  %90 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %91 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %93 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %89, %71
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @wi_reset(%struct.wi_softc*) #1

declare dso_local i32 @wi_write_val(%struct.wi_softc*, i32, i32) #1

declare dso_local i32 @wi_write_rid(%struct.wi_softc*, i32, i32*, i32) #1

declare dso_local i32 @wi_alloc_fid(%struct.wi_softc*, i64, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
