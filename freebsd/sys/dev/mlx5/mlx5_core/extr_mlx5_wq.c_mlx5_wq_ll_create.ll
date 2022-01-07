; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_wq.c_mlx5_wq_ll_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_wq.c_mlx5_wq_ll_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_wq_param = type { i32, i32, i64 }
%struct.mlx5_wq_ll = type { i32, i32, i32*, i32, i32 }
%struct.mlx5_wq_ctrl = type { %struct.TYPE_6__, %struct.mlx5_core_dev*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_wqe_srq_next_seg = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global i32 0, align 4
@log_wq_sz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mlx5_db_alloc() failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"mlx5_buf_alloc() failed, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_wq_ll_create(%struct.mlx5_core_dev* %0, %struct.mlx5_wq_param* %1, i8* %2, %struct.mlx5_wq_ll* %3, %struct.mlx5_wq_ctrl* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_wq_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_wq_ll*, align 8
  %11 = alloca %struct.mlx5_wq_ctrl*, align 8
  %12 = alloca %struct.mlx5_wqe_srq_next_seg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_wq_param* %1, %struct.mlx5_wq_param** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.mlx5_wq_ll* %3, %struct.mlx5_wq_ll** %10, align 8
  store %struct.mlx5_wq_ctrl* %4, %struct.mlx5_wq_ctrl** %11, align 8
  %16 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @INT_MAX, align 4
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %13, align 4
  %25 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* @log_wq_stride, align 4
  %28 = call i32 @MLX5_GET(%struct.mlx5_wq_ll* %25, i8* %26, i32 %27)
  %29 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %30 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* @log_wq_sz, align 4
  %34 = call i32 @MLX5_GET(%struct.mlx5_wq_ll* %31, i8* %32, i32 %33)
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %38 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %40 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %41 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %40, i32 0, i32 0
  %42 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev* %39, %struct.TYPE_6__* %41, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %23
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %6, align 4
  br label %119

53:                                               ; preds = %23
  %54 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %55 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %56 = call i32 @mlx5_wq_ll_get_byte_size(%struct.mlx5_wq_ll* %55)
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %59 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %58, i32 0, i32 2
  %60 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %61 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @mlx5_buf_alloc_node(%struct.mlx5_core_dev* %54, i32 %56, i32 %57, %struct.TYPE_7__* %59, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %113

70:                                               ; preds = %53
  %71 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %72 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %77 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %79 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %83 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %99, %70
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %87 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call %struct.mlx5_wqe_srq_next_seg* @mlx5_wq_ll_get_wqe(%struct.mlx5_wq_ll* %91, i32 %92)
  store %struct.mlx5_wqe_srq_next_seg* %93, %struct.mlx5_wqe_srq_next_seg** %12, align 8
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i32 @cpu_to_be16(i32 %95)
  %97 = load %struct.mlx5_wqe_srq_next_seg*, %struct.mlx5_wqe_srq_next_seg** %12, align 8
  %98 = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, %struct.mlx5_wqe_srq_next_seg* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %84

102:                                              ; preds = %84
  %103 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call %struct.mlx5_wqe_srq_next_seg* @mlx5_wq_ll_get_wqe(%struct.mlx5_wq_ll* %103, i32 %104)
  store %struct.mlx5_wqe_srq_next_seg* %105, %struct.mlx5_wqe_srq_next_seg** %12, align 8
  %106 = load %struct.mlx5_wqe_srq_next_seg*, %struct.mlx5_wqe_srq_next_seg** %12, align 8
  %107 = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, %struct.mlx5_wqe_srq_next_seg* %106, i32 0, i32 0
  %108 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %109 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %108, i32 0, i32 2
  store i32* %107, i32** %109, align 8
  %110 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %111 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %112 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %111, i32 0, i32 1
  store %struct.mlx5_core_dev* %110, %struct.mlx5_core_dev** %112, align 8
  store i32 0, i32* %6, align 4
  br label %119

113:                                              ; preds = %66
  %114 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %115 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %116 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %115, i32 0, i32 0
  %117 = call i32 @mlx5_db_free(%struct.mlx5_core_dev* %114, %struct.TYPE_6__* %116)
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %113, %102, %48
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @MLX5_GET(%struct.mlx5_wq_ll*, i8*, i32) #1

declare dso_local i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_buf_alloc_node(%struct.mlx5_core_dev*, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mlx5_wq_ll_get_byte_size(%struct.mlx5_wq_ll*) #1

declare dso_local %struct.mlx5_wqe_srq_next_seg* @mlx5_wq_ll_get_wqe(%struct.mlx5_wq_ll*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @mlx5_db_free(%struct.mlx5_core_dev*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
