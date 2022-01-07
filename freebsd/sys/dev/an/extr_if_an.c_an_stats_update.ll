; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.ifnet* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ifnet = type { i32 }
%struct.an_ltv_gen = type { i32 }

@AN_RID_STATUS = common dso_local global i32 0, align 4
@AN_STATUS_OPMODE_IN_SYNC = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@AN_RID_32BITS_CUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @an_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_stats_update(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.an_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.an_softc*
  store %struct.an_softc* %6, %struct.an_softc** %3, align 8
  %7 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %8 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %7)
  %9 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %10 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %9, i32 0, i32 5
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %13 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %18 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %24 = call i32 @an_watchdog(%struct.an_softc* %23)
  br label %25

25:                                               ; preds = %22, %16, %1
  %26 = load i32, i32* @AN_RID_STATUS, align 4
  %27 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %28 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %31 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %34 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %35 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %34, i32 0, i32 4
  %36 = bitcast %struct.TYPE_3__* %35 to %struct.an_ltv_gen*
  %37 = call i64 @an_read_record(%struct.an_softc* %33, %struct.an_ltv_gen* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %89

40:                                               ; preds = %25
  %41 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %42 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AN_STATUS_OPMODE_IN_SYNC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %50 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  br label %54

51:                                               ; preds = %40
  %52 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %53 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %63 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %62, i32 0, i32 2
  %64 = load i32, i32* @hz, align 4
  %65 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %66 = call i32 @callout_reset(i32* %63, i32 %64, void (i8*)* @an_stats_update, %struct.an_softc* %65)
  br label %89

67:                                               ; preds = %54
  %68 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %69 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 4, i32* %70, align 8
  %71 = load i32, i32* @AN_RID_32BITS_CUM, align 4
  %72 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %73 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %76 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %77 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = bitcast i32* %78 to %struct.an_ltv_gen*
  %80 = call i64 @an_read_record(%struct.an_softc* %75, %struct.an_ltv_gen* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %89

83:                                               ; preds = %67
  %84 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %85 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %84, i32 0, i32 2
  %86 = load i32, i32* @hz, align 4
  %87 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %88 = call i32 @callout_reset(i32* %85, i32 %86, void (i8*)* @an_stats_update, %struct.an_softc* %87)
  br label %89

89:                                               ; preds = %83, %82, %61, %39
  ret void
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i32 @an_watchdog(%struct.an_softc*) #1

declare dso_local i64 @an_read_record(%struct.an_softc*, %struct.an_ltv_gen*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.an_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
