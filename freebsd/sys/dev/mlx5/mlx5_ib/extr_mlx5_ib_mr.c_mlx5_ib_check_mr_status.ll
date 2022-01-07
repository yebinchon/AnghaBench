; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mlx5_ib_check_mr_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mlx5_ib_check_mr_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i64 }
%struct.ib_mr_status = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.mlx5_ib_mr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@IB_MR_CHECK_SIG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid status check mask\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"signature status check requested on a non-signature enabled MR\0A\00", align 1
@IB_SIG_BAD_GUARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_check_mr_status(%struct.ib_mr* %0, i32 %1, %struct.ib_mr_status* %2) #0 {
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_mr_status*, align 8
  %7 = alloca %struct.mlx5_ib_mr*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_mr_status* %2, %struct.ib_mr_status** %6, align 8
  %9 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %10 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %9)
  store %struct.mlx5_ib_mr* %10, %struct.mlx5_ib_mr** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IB_MR_CHECK_SIG_STATUS, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %95

20:                                               ; preds = %3
  %21 = load %struct.ib_mr_status*, %struct.ib_mr_status** %6, align 8
  %22 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IB_MR_CHECK_SIG_STATUS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %94

27:                                               ; preds = %20
  %28 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %95

36:                                               ; preds = %27
  %37 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %95

48:                                               ; preds = %36
  %49 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %50 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %51, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.ib_mr_status*, %struct.ib_mr_status** %6, align 8
  %61 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %60, i32 0, i32 1
  %62 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %63 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = call i32 @memcpy(%struct.TYPE_5__* %61, %struct.TYPE_6__* %65, i32 24)
  br label %84

67:                                               ; preds = %48
  %68 = load i32, i32* @IB_SIG_BAD_GUARD, align 4
  %69 = load %struct.ib_mr_status*, %struct.ib_mr_status** %6, align 8
  %70 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.ib_mr_status*, %struct.ib_mr_status** %6, align 8
  %73 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ib_mr_status*, %struct.ib_mr_status** %6, align 8
  %82 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %67, %59
  %85 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %86 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* @IB_MR_CHECK_SIG_STATUS, align 4
  %90 = load %struct.ib_mr_status*, %struct.ib_mr_status** %6, align 8
  %91 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %84, %20
  br label %95

95:                                               ; preds = %94, %47, %32, %16
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
