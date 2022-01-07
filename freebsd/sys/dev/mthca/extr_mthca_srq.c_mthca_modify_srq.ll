; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_srq.c_mthca_modify_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_srq.c_mthca_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i64 }
%struct.ib_udata = type { i32 }
%struct.mthca_dev = type { i32 }
%struct.mthca_srq = type { i64, i32, i32 }

@IB_SRQ_MAX_WR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_SRQ_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_modify_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_srq*, align 8
  %7 = alloca %struct.ib_srq_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.mthca_dev*, align 8
  %11 = alloca %struct.mthca_srq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %6, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %14 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %15 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mthca_dev* @to_mdev(i32 %16)
  store %struct.mthca_dev* %17, %struct.mthca_dev** %10, align 8
  %18 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %19 = call %struct.mthca_srq* @to_msrq(%struct.ib_srq* %18)
  store %struct.mthca_srq* %19, %struct.mthca_srq** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @IB_SRQ_MAX_WR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %72

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IB_SRQ_LIMIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %27
  %33 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %34 = call i64 @mthca_is_memfree(%struct.mthca_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.mthca_srq*, %struct.mthca_srq** %11, align 8
  %38 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  br label %45

41:                                               ; preds = %32
  %42 = load %struct.mthca_srq*, %struct.mthca_srq** %11, align 8
  %43 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i64 [ %40, %36 ], [ %44, %41 ]
  store i64 %46, i64* %13, align 8
  %47 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %7, align 8
  %48 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %72

55:                                               ; preds = %45
  %56 = load %struct.mthca_srq*, %struct.mthca_srq** %11, align 8
  %57 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %56, i32 0, i32 1
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %60 = load %struct.mthca_srq*, %struct.mthca_srq** %11, align 8
  %61 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %7, align 8
  %64 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @mthca_ARM_SRQ(%struct.mthca_dev* %59, i32 %62, i64 %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.mthca_srq*, %struct.mthca_srq** %11, align 8
  %68 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %70

70:                                               ; preds = %55, %27
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %52, %24
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local %struct.mthca_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mthca_ARM_SRQ(%struct.mthca_dev*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
