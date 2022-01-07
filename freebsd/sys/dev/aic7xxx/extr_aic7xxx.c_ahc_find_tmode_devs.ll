; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_find_tmode_devs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_find_tmode_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, %struct.ahc_tmode_tstate**, %struct.ahc_tmode_lstate* }
%struct.ahc_tmode_lstate = type { i32 }
%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ahc_tmode_tstate = type { %struct.ahc_tmode_lstate** }

@AHC_TARGETMODE = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@AHC_WIDE = common dso_local global i32 0, align 4
@CAM_TID_INVALID = common dso_local global i32 0, align 4
@AHC_NUM_LUNS = common dso_local global i64 0, align 8
@CAM_LUN_INVALID = common dso_local global i32 0, align 4
@CAM_PATH_INVALID = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_find_tmode_devs(%struct.ahc_softc* %0, %struct.cam_sim* %1, %union.ccb* %2, %struct.ahc_tmode_tstate** %3, %struct.ahc_tmode_lstate** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ahc_softc*, align 8
  %9 = alloca %struct.cam_sim*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca %struct.ahc_tmode_tstate**, align 8
  %12 = alloca %struct.ahc_tmode_lstate**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %8, align 8
  store %struct.cam_sim* %1, %struct.cam_sim** %9, align 8
  store %union.ccb* %2, %union.ccb** %10, align 8
  store %struct.ahc_tmode_tstate** %3, %struct.ahc_tmode_tstate*** %11, align 8
  store %struct.ahc_tmode_lstate** %4, %struct.ahc_tmode_lstate*** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %16 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AHC_TARGETMODE, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @CAM_REQ_INVALID, align 4
  store i32 %22, i32* %7, align 4
  br label %109

23:                                               ; preds = %6
  %24 = load %union.ccb*, %union.ccb** %10, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %union.ccb*, %union.ccb** %10, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %11, align 8
  store %struct.ahc_tmode_tstate* null, %struct.ahc_tmode_tstate** %38, align 8
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %40 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %39, i32 0, i32 2
  %41 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %40, align 8
  %42 = load %struct.ahc_tmode_lstate**, %struct.ahc_tmode_lstate*** %12, align 8
  store %struct.ahc_tmode_lstate* %41, %struct.ahc_tmode_lstate** %42, align 8
  br label %98

43:                                               ; preds = %30, %23
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %45 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AHC_WIDE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 15, i32 7
  store i32 %51, i32* %14, align 4
  %52 = load %union.ccb*, %union.ccb** %10, align 8
  %53 = bitcast %union.ccb* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, i32* @CAM_TID_INVALID, align 4
  store i32 %59, i32* %7, align 4
  br label %109

60:                                               ; preds = %43
  %61 = load %union.ccb*, %union.ccb** %10, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AHC_NUM_LUNS, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @CAM_LUN_INVALID, align 4
  store i32 %68, i32* %7, align 4
  br label %109

69:                                               ; preds = %60
  %70 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %71 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %70, i32 0, i32 1
  %72 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %71, align 8
  %73 = load %union.ccb*, %union.ccb** %10, align 8
  %74 = bitcast %union.ccb* %73 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %72, i64 %77
  %79 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %78, align 8
  %80 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %11, align 8
  store %struct.ahc_tmode_tstate* %79, %struct.ahc_tmode_tstate** %80, align 8
  %81 = load %struct.ahc_tmode_lstate**, %struct.ahc_tmode_lstate*** %12, align 8
  store %struct.ahc_tmode_lstate* null, %struct.ahc_tmode_lstate** %81, align 8
  %82 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %11, align 8
  %83 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %82, align 8
  %84 = icmp ne %struct.ahc_tmode_tstate* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %69
  %86 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %11, align 8
  %87 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %86, align 8
  %88 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %87, i32 0, i32 0
  %89 = load %struct.ahc_tmode_lstate**, %struct.ahc_tmode_lstate*** %88, align 8
  %90 = load %union.ccb*, %union.ccb** %10, align 8
  %91 = bitcast %union.ccb* %90 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %89, i64 %93
  %95 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %94, align 8
  %96 = load %struct.ahc_tmode_lstate**, %struct.ahc_tmode_lstate*** %12, align 8
  store %struct.ahc_tmode_lstate* %95, %struct.ahc_tmode_lstate** %96, align 8
  br label %97

97:                                               ; preds = %85, %69
  br label %98

98:                                               ; preds = %97, %37
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.ahc_tmode_lstate**, %struct.ahc_tmode_lstate*** %12, align 8
  %103 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %102, align 8
  %104 = icmp eq %struct.ahc_tmode_lstate* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @CAM_PATH_INVALID, align 4
  store i32 %106, i32* %7, align 4
  br label %109

107:                                              ; preds = %101, %98
  %108 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %105, %67, %58, %21
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
