; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_user_buf_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_user_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_ib_create_qp = type { i32 }
%struct.mlx5_ib_qp_base = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ib_qp_init_attr = type { i64 }

@max_wqe_sz_sq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"desc_sz %d, max_sq_desc_sz %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"sq_wqe_count %d, sq_wqe_count %d\0A\00", align 1
@log_max_qp_sz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"wqe_cnt %d, max_wqes %d\0A\00", align 1
@IB_QPT_RAW_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_qp_base*, %struct.ib_qp_init_attr*)* @set_user_buf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_user_buf_size(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_create_qp* %2, %struct.mlx5_ib_qp_base* %3, %struct.ib_qp_init_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.mlx5_ib_qp*, align 8
  %9 = alloca %struct.mlx5_ib_create_qp*, align 8
  %10 = alloca %struct.mlx5_ib_qp_base*, align 8
  %11 = alloca %struct.ib_qp_init_attr*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %7, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %8, align 8
  store %struct.mlx5_ib_create_qp* %2, %struct.mlx5_ib_create_qp** %9, align 8
  store %struct.mlx5_ib_qp_base* %3, %struct.mlx5_ib_qp_base** %10, align 8
  store %struct.ib_qp_init_attr* %4, %struct.ib_qp_init_attr** %11, align 8
  %13 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @max_wqe_sz_sq, align 4
  %23 = call i32 @MLX5_CAP_GEN(i32 %21, i32 %22)
  %24 = icmp sgt i32 %18, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @max_wqe_sz_sq, align 4
  %32 = call i32 @MLX5_CAP_GEN(i32 %30, i32 %31)
  %33 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %144

36:                                               ; preds = %5
  %37 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %9, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %9, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ilog2(i32 %44)
  %46 = shl i32 1, %45
  %47 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %9, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %53 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %9, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %9, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %144

62:                                               ; preds = %41, %36
  %63 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %9, align 8
  %64 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %74 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @log_max_qp_sz, align 4
  %77 = call i32 @MLX5_CAP_GEN(i32 %75, i32 %76)
  %78 = shl i32 1, %77
  %79 = icmp sgt i32 %72, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %62
  %81 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %82 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %87 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @log_max_qp_sz, align 4
  %90 = call i32 @MLX5_CAP_GEN(i32 %88, i32 %89)
  %91 = shl i32 1, %90
  %92 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %144

95:                                               ; preds = %62
  %96 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %11, align 8
  %97 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %95
  %102 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %103 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %107 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %105, %109
  %111 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %10, align 8
  %112 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %115 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 6
  %119 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %120 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i32 %118, i32* %123, align 4
  br label %143

124:                                              ; preds = %95
  %125 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %126 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %130 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %128, %132
  %134 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %135 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 6
  %139 = add nsw i32 %133, %138
  %140 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %10, align 8
  %141 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 4
  br label %143

143:                                              ; preds = %124, %101
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %80, %51, %25
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
