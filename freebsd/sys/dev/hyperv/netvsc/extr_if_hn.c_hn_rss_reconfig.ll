; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rss_reconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rss_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32 }

@HN_FLAG_SYNTH_ATTACHED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"disable RSS\0A\00", align 1
@NDIS_RSS_FLAG_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"RSS disable failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"reconfig RSS\0A\00", align 1
@NDIS_RSS_FLAG_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"RSS reconfig failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*)* @hn_rss_reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_rss_reconfig(%struct.hn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  %5 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %6 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %5)
  %7 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %8 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load i64, i64* @bootverbose, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %20 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @if_printf(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %18, %15
  %24 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %25 = load i32, i32* @NDIS_RSS_FLAG_DISABLE, align 4
  %26 = call i32 @hn_rndis_conf_rss(%struct.hn_softc* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %31 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @if_printf(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %56

35:                                               ; preds = %23
  %36 = load i64, i64* @bootverbose, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %40 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @if_printf(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %35
  %44 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %45 = load i32, i32* @NDIS_RSS_FLAG_NONE, align 4
  %46 = call i32 @hn_rndis_conf_rss(%struct.hn_softc* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %51 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @if_printf(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %49, %29, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @hn_rndis_conf_rss(%struct.hn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
