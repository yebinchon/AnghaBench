; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic_osm_lib.c_aic_calc_geometry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic_osm_lib.c_aic_calc_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_calc_geometry = type { i64, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aic_calc_geometry(%struct.ccb_calc_geometry* %0, i32 %1) #0 {
  %3 = alloca %struct.ccb_calc_geometry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ccb_calc_geometry* %0, %struct.ccb_calc_geometry** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %8 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %11 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sdiv i64 1048576, %12
  %14 = sdiv i64 %9, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 1024
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %23 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %22, i32 0, i32 2
  store i32 255, i32* %23, align 8
  %24 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %25 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %24, i32 0, i32 3
  store i32 63, i32* %25, align 4
  br label %31

26:                                               ; preds = %18, %2
  %27 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %28 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %27, i32 0, i32 2
  store i32 64, i32* %28, align 8
  %29 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %30 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %29, i32 0, i32 3
  store i32 32, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %33 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %36 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %40 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = sdiv i64 %41, %43
  %45 = trunc i64 %44 to i32
  %46 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %47 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @CAM_REQ_CMP, align 4
  %49 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %50 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
