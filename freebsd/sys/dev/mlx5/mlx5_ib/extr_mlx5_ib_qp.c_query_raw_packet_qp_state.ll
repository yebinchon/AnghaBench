; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_query_raw_packet_qp_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_query_raw_packet_qp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.mlx5_ib_raw_packet_qp }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_rq, %struct.mlx5_ib_sq }
%struct.mlx5_ib_rq = type { i32 }
%struct.mlx5_ib_sq = type { i32 }

@MLX5_SQ_STATE_NA = common dso_local global i32 0, align 4
@MLX5_RQ_STATE_NA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, i32*)* @query_raw_packet_qp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_raw_packet_qp_state(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_ib_qp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx5_ib_raw_packet_qp*, align 8
  %9 = alloca %struct.mlx5_ib_sq*, align 8
  %10 = alloca %struct.mlx5_ib_rq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %14, i32 0, i32 2
  store %struct.mlx5_ib_raw_packet_qp* %15, %struct.mlx5_ib_raw_packet_qp** %8, align 8
  %16 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %16, i32 0, i32 1
  store %struct.mlx5_ib_sq* %17, %struct.mlx5_ib_sq** %9, align 8
  %18 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %8, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %18, i32 0, i32 0
  store %struct.mlx5_ib_rq* %19, %struct.mlx5_ib_rq** %10, align 8
  %20 = load i32, i32* @MLX5_SQ_STATE_NA, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @MLX5_RQ_STATE_NA, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %29 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %9, align 8
  %30 = call i32 @query_raw_packet_qp_sq_state(%struct.mlx5_ib_dev* %28, %struct.mlx5_ib_sq* %29, i32* %12)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %57

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %44 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %10, align 8
  %45 = call i32 @query_raw_packet_qp_rq_state(%struct.mlx5_ib_dev* %43, %struct.mlx5_ib_rq* %44, i32* %13)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %57

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @sqrq_state_to_qp_state(i32 %52, i32 %53, %struct.mlx5_ib_qp* %54, i32* %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %48, %33
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @query_raw_packet_qp_sq_state(%struct.mlx5_ib_dev*, %struct.mlx5_ib_sq*, i32*) #1

declare dso_local i32 @query_raw_packet_qp_rq_state(%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32*) #1

declare dso_local i32 @sqrq_state_to_qp_state(i32, i32, %struct.mlx5_ib_qp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
