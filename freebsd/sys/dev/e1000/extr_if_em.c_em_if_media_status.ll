; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32 }
%struct.adapter = type { i32, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@IFM_1000_SX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"em_if_media_status: begin\00", align 1
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@e1000_82545 = common dso_local global i64 0, align 8
@IFM_1000_LX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifmediareq*)* @em_if_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_if_media_status(i32 %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %5, align 8
  %9 = load i32, i32* @IFM_1000_SX, align 4
  store i32 %9, i32* %6, align 4
  %10 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @iflib_admin_intr_deferred(i32 %11)
  %13 = load i32, i32* @IFM_AVALID, align 4
  %14 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %15 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IFM_ETHER, align 4
  %17 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %18 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %104

24:                                               ; preds = %2
  %25 = load i32, i32* @IFM_ACTIVE, align 4
  %26 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %27 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.adapter*, %struct.adapter** %5, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @e1000_media_type_fiber, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %24
  %38 = load %struct.adapter*, %struct.adapter** %5, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %37, %24
  %46 = load %struct.adapter*, %struct.adapter** %5, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @e1000_82545, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @IFM_1000_LX, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %45
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @IFM_FDX, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %60 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %104

63:                                               ; preds = %37
  %64 = load %struct.adapter*, %struct.adapter** %5, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %85 [
    i32 10, label %67
    i32 100, label %73
    i32 1000, label %79
  ]

67:                                               ; preds = %63
  %68 = load i32, i32* @IFM_10_T, align 4
  %69 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %70 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %85

73:                                               ; preds = %63
  %74 = load i32, i32* @IFM_100_TX, align 4
  %75 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %76 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %85

79:                                               ; preds = %63
  %80 = load i32, i32* @IFM_1000_T, align 4
  %81 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %82 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %63, %79, %73, %67
  %86 = load %struct.adapter*, %struct.adapter** %5, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FULL_DUPLEX, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i32, i32* @IFM_FDX, align 4
  %93 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %94 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %103

97:                                               ; preds = %85
  %98 = load i32, i32* @IFM_HDX, align 4
  %99 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %100 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %91
  br label %104

104:                                              ; preds = %23, %103, %55
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @iflib_admin_intr_deferred(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
