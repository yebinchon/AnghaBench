; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_mlx4_ib_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_mlx4_ib_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_qp = type { i64 }
%struct.mlx4_ib_sqp = type { i64 }

@MLX4_IB_QPT_GSI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Failed to modify GSI QP for RoCEv2 (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.mlx4_ib_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_ib_sqp*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %14 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %13)
  store %struct.mlx4_ib_qp* %14, %struct.mlx4_ib_qp** %9, align 8
  %15 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %16 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.ib_udata*, %struct.ib_udata** %8, align 8
  %19 = call i32 @_mlx4_ib_modify_qp(%struct.ib_qp* %15, %struct.ib_qp_attr* %16, i32 %17, %struct.ib_udata* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MLX4_IB_QPT_GSI, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %4
  %26 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %27 = call %struct.mlx4_ib_sqp* @to_msqp(%struct.mlx4_ib_qp* %26)
  store %struct.mlx4_ib_sqp* %27, %struct.mlx4_ib_sqp** %11, align 8
  store i32 0, i32* %12, align 4
  %28 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %11, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %11, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ib_modify_qp(i64 %35, %struct.ib_qp_attr* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @_mlx4_ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_udata*) #1

declare dso_local %struct.mlx4_ib_sqp* @to_msqp(%struct.mlx4_ib_qp*) #1

declare dso_local i32 @ib_modify_qp(i64, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
