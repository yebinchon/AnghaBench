; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_modify_raw_packet_qp_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_modify_raw_packet_qp_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_ib_rq = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_modify_raw_qp_param = type { i32, i32 }

@modify_rq_in = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@rqn = common dso_local global i32 0, align 4
@rq_state = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_RAW_QP_MOD_SET_RQ_Q_CTR_ID = common dso_local global i32 0, align 4
@modify_rq_counters_set_id = common dso_local global i32 0, align 4
@modify_bitmask = common dso_local global i32 0, align 4
@MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_MODIFY_RQ_COUNTER_SET_ID = common dso_local global i32 0, align 4
@counter_set_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%s: RAW PACKET QP counters are not supported on current FW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32, %struct.mlx5_modify_raw_qp_param*)* @modify_raw_packet_qp_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_raw_packet_qp_rq(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_rq* %1, i32 %2, %struct.mlx5_modify_raw_qp_param* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_rq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_modify_raw_qp_param*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.mlx5_ib_rq* %1, %struct.mlx5_ib_rq** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlx5_modify_raw_qp_param* %3, %struct.mlx5_modify_raw_qp_param** %9, align 8
  %14 = load i8*, i8** @modify_rq_in, align 8
  %15 = call i32 @MLX5_ST_SZ_BYTES(i8* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i8* @mlx5_vzalloc(i32 %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %100

23:                                               ; preds = %4
  %24 = load i8*, i8** @modify_rq_in, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* @rqn, align 4
  %27 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MLX5_SET(i8* %24, i8* %25, i32 %26, i32 %31)
  %33 = load i8*, i8** @modify_rq_in, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* @rq_state, align 4
  %36 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MLX5_SET(i8* %33, i8* %34, i32 %35, i32 %38)
  %40 = load i8*, i8** @modify_rq_in, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @ctx, align 4
  %43 = call i8* @MLX5_ADDR_OF(i8* %40, i8* %41, i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* @state, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @MLX5_SET(i8* %44, i8* %45, i32 %46, i32 %47)
  %49 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %9, align 8
  %50 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MLX5_RAW_QP_MOD_SET_RQ_Q_CTR_ID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %23
  %56 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @modify_rq_counters_set_id, align 4
  %60 = call i64 @MLX5_CAP_GEN(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load i8*, i8** @modify_rq_in, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* @modify_bitmask, align 4
  %66 = load i32, i32* @MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_MODIFY_RQ_COUNTER_SET_ID, align 4
  %67 = call i32 @MLX5_SET64(i8* %63, i8* %64, i32 %65, i32 %66)
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* @counter_set_id, align 4
  %71 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %9, align 8
  %72 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @MLX5_SET(i8* %68, i8* %69, i32 %70, i32 %73)
  br label %81

75:                                               ; preds = %55
  %76 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %77 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pr_info_once(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %62
  br label %82

82:                                               ; preds = %81, %23
  %83 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %84 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @mlx5_core_modify_rq(i32 %85, i8* %86, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %96

92:                                               ; preds = %82
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %7, align 8
  %95 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %91
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @kvfree(i8* %97)
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %20
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @pr_info_once(i8*, i32) #1

declare dso_local i32 @mlx5_core_modify_rq(i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
