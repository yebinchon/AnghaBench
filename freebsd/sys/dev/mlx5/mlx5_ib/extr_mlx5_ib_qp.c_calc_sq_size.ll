; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_calc_sq_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_calc_sq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_qp_init_attr = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mlx5_ib_qp = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"wqe_size %d\0A\00", align 1
@max_wqe_sz_sq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"wqe_size(%d) > max_sq_desc_sz(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_QP_CREATE_SIGNATURE_EN = common dso_local global i32 0, align 4
@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@log_max_qp_sz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"wqe count(%d) exceeds limits(%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.ib_qp_init_attr*, %struct.mlx5_ib_qp*)* @calc_sq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_sq_size(%struct.mlx5_ib_dev* %0, %struct.ib_qp_init_attr* %1, %struct.mlx5_ib_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.mlx5_ib_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %6, align 8
  store %struct.mlx5_ib_qp* %2, %struct.mlx5_ib_qp** %7, align 8
  %10 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %11 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %156

16:                                               ; preds = %3
  %17 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %18 = call i32 @calc_send_wqe(%struct.ib_qp_init_attr* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %156

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @max_wqe_sz_sq, align 4
  %32 = call i32 @MLX5_CAP_GEN(i32 %30, i32 %31)
  %33 = icmp sgt i32 %27, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @max_wqe_sz_sq, align 4
  %41 = call i32 @MLX5_CAP_GEN(i32 %39, i32 %40)
  %42 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %156

45:                                               ; preds = %26
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %48 = call i32 @sq_overhead(%struct.ib_qp_init_attr* %47)
  %49 = sub nsw i32 %46, %48
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %59 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %62 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IB_QP_CREATE_SIGNATURE_EN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %45
  %68 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %69 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %45
  %71 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %72 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %74, %75
  %77 = call i32 @roundup_pow_of_two(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %80 = sdiv i32 %78, %79
  %81 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %82 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %85 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @log_max_qp_sz, align 4
  %92 = call i32 @MLX5_CAP_GEN(i32 %90, i32 %91)
  %93 = shl i32 1, %92
  %94 = icmp sgt i32 %87, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %70
  %96 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %97 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %98 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %102 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @log_max_qp_sz, align 4
  %105 = call i32 @MLX5_CAP_GEN(i32 %103, i32 %104)
  %106 = shl i32 1, %105
  %107 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %106)
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %156

110:                                              ; preds = %70
  %111 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %112 = call i32 @ilog2(i32 %111)
  %113 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %114 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  store i32 %112, i32* %115, align 4
  %116 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @get_send_sge(%struct.ib_qp_init_attr* %116, i32 %117)
  %119 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %120 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 4
  %122 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %123 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %127 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %125, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %110
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %156

134:                                              ; preds = %110
  %135 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %136 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %140 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %8, align 4
  %144 = sdiv i32 %142, %143
  %145 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %146 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %149 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %153 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %134, %131, %95, %34, %24, %15
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @calc_send_wqe(%struct.ib_qp_init_attr*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, ...) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @sq_overhead(%struct.ib_qp_init_attr*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @get_send_sge(%struct.ib_qp_init_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
