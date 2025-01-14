; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_cam_machdep.c_scsi_da_bios_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_cam_machdep.c_scsi_da_bios_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_calc_geometry = type { i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_da_bios_params(%struct.ccb_calc_geometry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccb_calc_geometry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ccb_calc_geometry* %0, %struct.ccb_calc_geometry** %3, align 8
  %6 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %7 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %13 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sdiv i64 1048576, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %68

20:                                               ; preds = %11
  %21 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %22 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %27 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1052819775
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %32 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %31, i32 0, i32 2
  store i32 255, i32* %32, align 4
  %33 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %34 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %33, i32 0, i32 3
  store i32 255, i32* %34, align 8
  br label %49

35:                                               ; preds = %20
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 1024
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %40 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %39, i32 0, i32 2
  store i32 255, i32* %40, align 4
  %41 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %42 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %41, i32 0, i32 3
  store i32 63, i32* %42, align 8
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %45 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %44, i32 0, i32 2
  store i32 64, i32* %45, align 4
  %46 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %47 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %46, i32 0, i32 3
  store i32 32, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %30
  %50 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %51 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %54 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %68

60:                                               ; preds = %49
  %61 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %62 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sdiv i32 %63, %64
  %66 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %67 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  store i32 1, i32* %2, align 4
  br label %68

68:                                               ; preds = %60, %59, %19, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
