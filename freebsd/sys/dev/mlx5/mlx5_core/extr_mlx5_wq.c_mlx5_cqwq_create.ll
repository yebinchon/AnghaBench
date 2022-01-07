; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_wq.c_mlx5_cqwq_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_wq.c_mlx5_cqwq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_wq_param = type { i32, i32, i64 }
%struct.mlx5_cqwq = type { i32, i32, i32, i32, i8* }
%struct.mlx5_wq_ctrl = type { %struct.TYPE_6__, %struct.mlx5_core_dev*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@cqe_sz = common dso_local global i32 0, align 4
@log_cq_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mlx5_db_alloc() failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"mlx5_buf_alloc() failed, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_cqwq_create(%struct.mlx5_core_dev* %0, %struct.mlx5_wq_param* %1, i8* %2, %struct.mlx5_cqwq* %3, %struct.mlx5_wq_ctrl* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_wq_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_cqwq*, align 8
  %11 = alloca %struct.mlx5_wq_ctrl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_wq_param* %1, %struct.mlx5_wq_param** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.mlx5_cqwq* %3, %struct.mlx5_cqwq** %10, align 8
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
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* @cqe_sz, align 4
  %26 = call i8* @MLX5_GET(i8* %23, i8* %24, i32 %25)
  %27 = getelementptr i8, i8* %26, i64 6
  %28 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %10, align 8
  %29 = getelementptr inbounds %struct.mlx5_cqwq, %struct.mlx5_cqwq* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* @log_cq_size, align 4
  %33 = call i8* @MLX5_GET(i8* %30, i8* %31, i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %10, align 8
  %36 = getelementptr inbounds %struct.mlx5_cqwq, %struct.mlx5_cqwq* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %10, align 8
  %38 = getelementptr inbounds %struct.mlx5_cqwq, %struct.mlx5_cqwq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 1, %39
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5_cqwq, %struct.mlx5_cqwq* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %45 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %46 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %45, i32 0, i32 0
  %47 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %48 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev* %44, %struct.TYPE_6__* %46, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %21
  %54 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %98

58:                                               ; preds = %21
  %59 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %60 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %10, align 8
  %61 = call i32 @mlx5_cqwq_get_byte_size(%struct.mlx5_cqwq* %60)
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %64 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %63, i32 0, i32 2
  %65 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %66 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @mlx5_buf_alloc_node(%struct.mlx5_core_dev* %59, i32 %61, i32 %62, %struct.TYPE_7__* %64, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %92

75:                                               ; preds = %58
  %76 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %77 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %10, align 8
  %82 = getelementptr inbounds %struct.mlx5_cqwq, %struct.mlx5_cqwq* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %84 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %10, align 8
  %88 = getelementptr inbounds %struct.mlx5_cqwq, %struct.mlx5_cqwq* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %90 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %91 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %90, i32 0, i32 1
  store %struct.mlx5_core_dev* %89, %struct.mlx5_core_dev** %91, align 8
  store i32 0, i32* %6, align 4
  br label %98

92:                                               ; preds = %71
  %93 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %94 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %95 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %94, i32 0, i32 0
  %96 = call i32 @mlx5_db_free(%struct.mlx5_core_dev* %93, %struct.TYPE_6__* %95)
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %92, %75, %53
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i8* @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_buf_alloc_node(%struct.mlx5_core_dev*, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mlx5_cqwq_get_byte_size(%struct.mlx5_cqwq*) #1

declare dso_local i32 @mlx5_db_free(%struct.mlx5_core_dev*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
