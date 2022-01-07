; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.ncr53c9x_softc = type { i32, i32, i32, %struct.ncr53c9x_tinfo* }
%struct.ncr53c9x_tinfo = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@T_SYNCHOFF = common dso_local global i32 0, align 4
@T_RSELECTOFF = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.cam_path*, i8*)* @ncr53c9x_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncr53c9x_async(i8* %0, i32 %1, %struct.cam_path* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ncr53c9x_softc*, align 8
  %10 = alloca %struct.ncr53c9x_tinfo*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cam_path* %2, %struct.cam_path** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.ncr53c9x_softc* @cam_sim_softc(i8* %12)
  store %struct.ncr53c9x_softc* %13, %struct.ncr53c9x_softc** %9, align 8
  %14 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %9, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc* %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %95 [
    i32 128, label %18
  ]

18:                                               ; preds = %4
  %19 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %20 = call i32 @xpt_path_target_id(%struct.cam_path* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %9, align 8
  %26 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %18
  br label %95

30:                                               ; preds = %23
  %31 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %34 = call i32 @ncr53c9x_clear_target(%struct.ncr53c9x_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %9, align 8
  %36 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %35, i32 0, i32 3
  %37 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %37, i64 %39
  store %struct.ncr53c9x_tinfo* %40, %struct.ncr53c9x_tinfo** %10, align 8
  %41 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %9, align 8
  %42 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %30
  %46 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %9, align 8
  %47 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, 7
  %51 = add nsw i32 %50, 8
  %52 = shl i32 1, %51
  %53 = and i32 %48, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %58

56:                                               ; preds = %45, %30
  %57 = load i32, i32* @T_SYNCHOFF, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ 0, %55 ], [ %57, %56 ]
  %60 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %9, align 8
  %61 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 7
  %65 = shl i32 1, %64
  %66 = and i32 %62, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %71

69:                                               ; preds = %58
  %70 = load i32, i32* @T_RSELECTOFF, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ 0, %68 ], [ %70, %69 ]
  %73 = or i32 %59, %72
  %74 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %10, align 8
  %75 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %10, align 8
  %77 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 0, i32* %78, align 4
  %79 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %10, align 8
  %80 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 0, i32* %81, align 4
  %82 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %10, align 8
  %83 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  %85 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %10, align 8
  %86 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %89 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %10, align 8
  %90 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  %92 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %10, align 8
  %93 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %4, %71, %29
  ret void
}

declare dso_local %struct.ncr53c9x_softc* @cam_sim_softc(i8*) #1

declare dso_local i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @xpt_path_target_id(%struct.cam_path*) #1

declare dso_local i32 @ncr53c9x_clear_target(%struct.ncr53c9x_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
