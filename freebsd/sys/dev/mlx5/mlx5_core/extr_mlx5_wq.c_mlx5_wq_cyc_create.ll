; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_wq.c_mlx5_wq_cyc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_wq.c_mlx5_wq_cyc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_wq_param = type { i32, i32, i64 }
%struct.mlx5_wq_cyc = type { i32, i32, i32, i32 }
%struct.mlx5_wq_ctrl = type { %struct.TYPE_6__, %struct.mlx5_core_dev*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global i32 0, align 4
@log_wq_sz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mlx5_db_alloc() failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"mlx5_buf_alloc() failed, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev* %0, %struct.mlx5_wq_param* %1, i8* %2, %struct.mlx5_wq_cyc* %3, %struct.mlx5_wq_ctrl* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_wq_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_wq_cyc*, align 8
  %11 = alloca %struct.mlx5_wq_ctrl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_wq_param* %1, %struct.mlx5_wq_param** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.mlx5_wq_cyc* %3, %struct.mlx5_wq_cyc** %10, align 8
  store %struct.mlx5_wq_ctrl* %4, %struct.mlx5_wq_ctrl** %11, align 8
  %14 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %15 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @INT_MAX, align 4
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %12, align 4
  %23 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* @log_wq_stride, align 4
  %26 = call i32 @MLX5_GET(%struct.mlx5_wq_cyc* %23, i8* %24, i32 %25)
  %27 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %28 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @log_wq_sz, align 4
  %32 = call i32 @MLX5_GET(%struct.mlx5_wq_cyc* %29, i8* %30, i32 %31)
  %33 = shl i32 1, %32
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %36 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %38 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %39 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %38, i32 0, i32 0
  %40 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %41 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev* %37, %struct.TYPE_6__* %39, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %21
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %91

51:                                               ; preds = %21
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %53 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %54 = call i32 @mlx5_wq_cyc_get_byte_size(%struct.mlx5_wq_cyc* %53)
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %57 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %56, i32 0, i32 2
  %58 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %59 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @mlx5_buf_alloc_node(%struct.mlx5_core_dev* %52, i32 %54, i32 %55, %struct.TYPE_7__* %57, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %85

68:                                               ; preds = %51
  %69 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %70 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %75 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %77 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %81 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %83 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %84 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %83, i32 0, i32 1
  store %struct.mlx5_core_dev* %82, %struct.mlx5_core_dev** %84, align 8
  store i32 0, i32* %6, align 4
  br label %91

85:                                               ; preds = %64
  %86 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %87 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %88 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %87, i32 0, i32 0
  %89 = call i32 @mlx5_db_free(%struct.mlx5_core_dev* %86, %struct.TYPE_6__* %88)
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %85, %68, %46
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @MLX5_GET(%struct.mlx5_wq_cyc*, i8*, i32) #1

declare dso_local i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_buf_alloc_node(%struct.mlx5_core_dev*, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mlx5_wq_cyc_get_byte_size(%struct.mlx5_wq_cyc*) #1

declare dso_local i32 @mlx5_db_free(%struct.mlx5_core_dev*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
