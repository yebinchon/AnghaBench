; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_calibration_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_calibration_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i64, i64, i32, i32, %struct.mlx5e_clbr_point* }
%struct.mlx5e_clbr_point = type { i32, i32, i64, i32, i32 }
%struct.timespec = type { i32 }

@MLX5E_TSTMP_PREC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"HW failed tstmp frozen %#jx %#jx, disabling\0A\00", align 1
@mlx5e_calibration_duration = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mlx5e_calibration_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_calibration_callout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_clbr_point*, align 8
  %5 = alloca %struct.mlx5e_clbr_point*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mlx5e_priv*
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %3, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 4
  %12 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %11, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %12, i64 %15
  store %struct.mlx5e_clbr_point* %16, %struct.mlx5e_clbr_point** %5, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 4
  %25 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %24, align 8
  %26 = call i32 @nitems(%struct.mlx5e_clbr_point* %25)
  %27 = icmp sge i32 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %30, i32 0, i32 4
  %32 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %32, i64 %34
  store %struct.mlx5e_clbr_point* %35, %struct.mlx5e_clbr_point** %4, align 8
  %36 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %47 = call i32 @mlx5e_hw_clock(%struct.mlx5e_priv* %46)
  %48 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  %57 = load i32, i32* @MLX5E_TSTMP_PREC, align 4
  %58 = ashr i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %29
  %61 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %62 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %67 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %4, align 8
  %70 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %5, align 8
  %73 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mlx5_en_err(i32 %68, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %77 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %65, %60
  %79 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %79, i32 0, i32 2
  %81 = call i32 @atomic_store_rel_int(i64* %80, i32 0)
  br label %114

82:                                               ; preds = %29
  %83 = call i32 @nanouptime(%struct.timespec* %6)
  %84 = call i32 @mlx5e_timespec2usec(%struct.timespec* %6)
  %85 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %4, align 8
  %86 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %5, align 8
  %88 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = call i32 (...) @atomic_thread_fence_rel()
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %93 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %4, align 8
  %95 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %94, i32 0, i32 2
  %96 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %97 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = call i32 @atomic_store_rel_int(i64* %95, i32 %99)
  %101 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %102 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @mlx5e_calibration_duration, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %82
  %107 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %108 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %106, %82
  %112 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %113 = call i32 @mlx5e_reset_calibration_callout(%struct.mlx5e_priv* %112)
  br label %114

114:                                              ; preds = %111, %78
  ret void
}

declare dso_local i32 @nitems(%struct.mlx5e_clbr_point*) #1

declare dso_local i32 @mlx5e_hw_clock(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_en_err(i32, i8*, i32, i32) #1

declare dso_local i32 @atomic_store_rel_int(i64*, i32) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

declare dso_local i32 @mlx5e_timespec2usec(%struct.timespec*) #1

declare dso_local i32 @atomic_thread_fence_rel(...) #1

declare dso_local i32 @mlx5e_reset_calibration_callout(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
