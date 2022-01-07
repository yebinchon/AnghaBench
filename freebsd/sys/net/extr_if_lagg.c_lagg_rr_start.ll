; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_rr_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_rr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_softc = type { i64, i64, i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.lagg_port = type { i32 }

@lp_entries = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lagg_softc*, %struct.mbuf*)* @lagg_rr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lagg_rr_start(%struct.lagg_softc* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lagg_softc*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.lagg_port*, align 8
  %7 = alloca i32, align 4
  store %struct.lagg_softc* %0, %struct.lagg_softc** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %9 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %14 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %19 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %22 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %17, %12, %2
  %24 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %25 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %30 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %29, i32 0, i32 0
  %31 = call i32 @atomic_subtract_int(i64* %30, i32 1)
  %32 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %33 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %32, i32 0, i32 0
  %34 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %35 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @atomic_cmpset_int(i64* %33, i32 0, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %41 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %40, i32 0, i32 4
  %42 = call i32 @atomic_fetchadd_32(i32* %41, i32 1)
  store i32 %42, i32* %7, align 4
  br label %47

43:                                               ; preds = %28
  %44 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %45 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %52

48:                                               ; preds = %23
  %49 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %50 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %49, i32 0, i32 4
  %51 = call i32 @atomic_fetchadd_32(i32* %50, i32 1)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %47
  %53 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %54 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = srem i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %59 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %58, i32 0, i32 2
  %60 = call %struct.lagg_port* @CK_SLIST_FIRST(i32* %59)
  store %struct.lagg_port* %60, %struct.lagg_port** %6, align 8
  br label %61

61:                                               ; preds = %65, %52
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.lagg_port*, %struct.lagg_port** %6, align 8
  %67 = load i32, i32* @lp_entries, align 4
  %68 = call %struct.lagg_port* @CK_SLIST_NEXT(%struct.lagg_port* %66, i32 %67)
  store %struct.lagg_port* %68, %struct.lagg_port** %6, align 8
  br label %61

69:                                               ; preds = %61
  %70 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %71 = load %struct.lagg_port*, %struct.lagg_port** %6, align 8
  %72 = call %struct.lagg_port* @lagg_link_active(%struct.lagg_softc* %70, %struct.lagg_port* %71)
  store %struct.lagg_port* %72, %struct.lagg_port** %6, align 8
  %73 = icmp eq %struct.lagg_port* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %76 = call i32 @m_freem(%struct.mbuf* %75)
  %77 = load i32, i32* @ENETDOWN, align 4
  store i32 %77, i32* %3, align 4
  br label %84

78:                                               ; preds = %69
  %79 = load %struct.lagg_port*, %struct.lagg_port** %6, align 8
  %80 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %83 = call i32 @lagg_enqueue(i32 %81, %struct.mbuf* %82)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %78, %74
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @atomic_subtract_int(i64*, i32) #1

declare dso_local i64 @atomic_cmpset_int(i64*, i32, i64) #1

declare dso_local i32 @atomic_fetchadd_32(i32*, i32) #1

declare dso_local %struct.lagg_port* @CK_SLIST_FIRST(i32*) #1

declare dso_local %struct.lagg_port* @CK_SLIST_NEXT(%struct.lagg_port*, i32) #1

declare dso_local %struct.lagg_port* @lagg_link_active(%struct.lagg_softc*, %struct.lagg_port*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @lagg_enqueue(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
