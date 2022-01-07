; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_mlx5_ib_gsi_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_mlx5_ib_gsi_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_gsi_qp = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"modifying GSI QP to state %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to modify GSI rx QP: %d\0A\00", align 1
@IB_QPS_RTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_gsi_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_qp_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.mlx5_ib_gsi_qp*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %11 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mlx5_ib_dev* @to_mdev(i32 %12)
  store %struct.mlx5_ib_dev* %13, %struct.mlx5_ib_dev** %7, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %15 = call %struct.mlx5_ib_gsi_qp* @gsi_qp(%struct.ib_qp* %14)
  store %struct.mlx5_ib_gsi_qp* %15, %struct.mlx5_ib_gsi_qp** %8, align 8
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %17 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %18 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ib_modify_qp(i32 %26, %struct.ib_qp_attr* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %49

36:                                               ; preds = %3
  %37 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_2__* @to_mqp(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IB_QPS_RTS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %47 = call i32 @setup_qps(%struct.mlx5_ib_gsi_qp* %46)
  br label %48

48:                                               ; preds = %45, %36
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_gsi_qp* @gsi_qp(%struct.ib_qp*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @to_mqp(i32) #1

declare dso_local i32 @setup_qps(%struct.mlx5_ib_gsi_qp*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
