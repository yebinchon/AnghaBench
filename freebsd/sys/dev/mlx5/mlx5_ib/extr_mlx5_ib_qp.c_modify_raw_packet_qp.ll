; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_modify_raw_packet_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_modify_raw_packet_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.mlx5_ib_raw_packet_qp }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_sq, %struct.mlx5_ib_rq }
%struct.mlx5_ib_sq = type { i32 }
%struct.mlx5_ib_rq = type { i32 }
%struct.mlx5_modify_raw_qp_param = type { i32, i32 }

@MLX5_RQC_STATE_RDY = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RDY = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_ERR = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_ERR = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.mlx5_modify_raw_qp_param*, i32)* @modify_raw_packet_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_raw_packet_qp(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, %struct.mlx5_modify_raw_qp_param* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_qp*, align 8
  %8 = alloca %struct.mlx5_modify_raw_qp_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_ib_raw_packet_qp*, align 8
  %11 = alloca %struct.mlx5_ib_rq*, align 8
  %12 = alloca %struct.mlx5_ib_sq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %7, align 8
  store %struct.mlx5_modify_raw_qp_param* %2, %struct.mlx5_modify_raw_qp_param** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %16, i32 0, i32 2
  store %struct.mlx5_ib_raw_packet_qp* %17, %struct.mlx5_ib_raw_packet_qp** %10, align 8
  %18 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %10, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %18, i32 0, i32 1
  store %struct.mlx5_ib_rq* %19, %struct.mlx5_ib_rq** %11, align 8
  %20 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %10, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %20, i32 0, i32 0
  store %struct.mlx5_ib_sq* %21, %struct.mlx5_ib_sq** %12, align 8
  %22 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %43 [
    i32 130, label %25
    i32 134, label %28
    i32 133, label %31
    i32 132, label %34
    i32 131, label %34
    i32 129, label %34
    i32 128, label %34
  ]

25:                                               ; preds = %4
  %26 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @MLX5_SQC_STATE_RDY, align 4
  store i32 %27, i32* %14, align 4
  br label %47

28:                                               ; preds = %4
  %29 = load i32, i32* @MLX5_RQC_STATE_ERR, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @MLX5_SQC_STATE_ERR, align 4
  store i32 %30, i32* %14, align 4
  br label %47

31:                                               ; preds = %4
  %32 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  store i32 %33, i32* %14, align 4
  br label %47

34:                                               ; preds = %4, %4, %4, %4
  %35 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %8, align 8
  %36 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %93

42:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %93

43:                                               ; preds = %4
  %44 = call i32 @WARN_ON(i32 1)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %93

47:                                               ; preds = %31, %28, %25
  %48 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %55 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %8, align 8
  %58 = call i32 @modify_raw_packet_qp_rq(%struct.mlx5_ib_dev* %54, %struct.mlx5_ib_rq* %55, i32 %56, %struct.mlx5_modify_raw_qp_param* %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %5, align 4
  br label %93

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %66 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %12, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @modify_raw_packet_tx_affinity(i32 %76, %struct.mlx5_ib_sq* %77, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %5, align 4
  br label %93

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %87 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %12, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @modify_raw_packet_qp_sq(i32 %88, %struct.mlx5_ib_sq* %89, i32 %90)
  store i32 %91, i32* %5, align 4
  br label %93

92:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %85, %82, %61, %43, %42, %39
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @modify_raw_packet_qp_rq(%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32, %struct.mlx5_modify_raw_qp_param*) #1

declare dso_local i32 @modify_raw_packet_tx_affinity(i32, %struct.mlx5_ib_sq*, i32) #1

declare dso_local i32 @modify_raw_packet_qp_sq(i32, %struct.mlx5_ib_sq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
