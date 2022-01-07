; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_remove_qp_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_remove_qp_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_qp = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@RES_QP_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"resource tracker: fail to remove qp, state %d, ref_count %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RES_QP_RESERVED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.res_qp*)* @remove_qp_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_qp_ok(%struct.res_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.res_qp*, align 8
  store %struct.res_qp* %0, %struct.res_qp** %3, align 8
  %4 = load %struct.res_qp*, %struct.res_qp** %3, align 8
  %5 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RES_QP_BUSY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.res_qp*, %struct.res_qp** %3, align 8
  %12 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %11, i32 0, i32 1
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.res_qp*, %struct.res_qp** %3, align 8
  %17 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %16, i32 0, i32 2
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15, %10, %1
  %21 = load %struct.res_qp*, %struct.res_qp** %3, align 8
  %22 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.res_qp*, %struct.res_qp** %3, align 8
  %26 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %25, i32 0, i32 1
  %27 = call i64 @atomic_read(i32* %26)
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %43

31:                                               ; preds = %15
  %32 = load %struct.res_qp*, %struct.res_qp** %3, align 8
  %33 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RES_QP_RESERVED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %38, %20
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
