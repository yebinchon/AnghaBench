; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_modify_to_rts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_modify_to_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_gsi_qp = type { i32 }
%struct.ib_qp = type { i32, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.ib_qp_attr = type { i64, i32, i32, i32, i32 }

@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QP1_QKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not change QP%d state to INIT: %d\0A\00", align 1
@IB_QPS_RTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not change QP%d state to RTR: %d\0A\00", align 1
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"could not change QP%d state to RTS: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_gsi_qp*, %struct.ib_qp*, i32)* @modify_to_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_to_rts(%struct.mlx5_ib_gsi_qp* %0, %struct.ib_qp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_gsi_qp*, align 8
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca %struct.ib_qp_attr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_ib_gsi_qp* %0, %struct.mlx5_ib_gsi_qp** %5, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %13 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mlx5_ib_dev* @to_mdev(i32 %14)
  store %struct.mlx5_ib_dev* %15, %struct.mlx5_ib_dev** %8, align 8
  %16 = load i32, i32* @IB_QP_STATE, align 4
  %17 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IB_QP_QKEY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IB_QP_PORT, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @IB_QPS_INIT, align 4
  %24 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @IB_QP1_QKEY, align 4
  %28 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ib_modify_qp(%struct.ib_qp* %33, %struct.ib_qp_attr* %9, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %3
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %40 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %41 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %4, align 4
  br label %82

46:                                               ; preds = %3
  %47 = load i32, i32* @IB_QPS_RTR, align 4
  %48 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %50 = load i32, i32* @IB_QP_STATE, align 4
  %51 = call i32 @ib_modify_qp(%struct.ib_qp* %49, %struct.ib_qp_attr* %9, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %56 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %57 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %82

62:                                               ; preds = %46
  %63 = load i32, i32* @IB_QPS_RTS, align 4
  %64 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %67 = load i32, i32* @IB_QP_STATE, align 4
  %68 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @ib_modify_qp(%struct.ib_qp* %66, %struct.ib_qp_attr* %9, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %62
  %74 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %75 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %76 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %73, %54, %38
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
