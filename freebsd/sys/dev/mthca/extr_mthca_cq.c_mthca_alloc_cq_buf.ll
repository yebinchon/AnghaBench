; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cq.c_mthca_alloc_cq_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cq.c_mthca_alloc_cq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_cq_buf = type { i32, i32, i32 }

@MTHCA_CQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@MTHCA_MAX_DIRECT_CQ_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_alloc_cq_buf(%struct.mthca_dev* %0, %struct.mthca_cq_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca %struct.mthca_cq_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store %struct.mthca_cq_buf* %1, %struct.mthca_cq_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MTHCA_CQ_ENTRY_SIZE, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* @MTHCA_MAX_DIRECT_CQ_SIZE, align 4
  %15 = load %struct.mthca_cq_buf*, %struct.mthca_cq_buf** %6, align 8
  %16 = getelementptr inbounds %struct.mthca_cq_buf, %struct.mthca_cq_buf* %15, i32 0, i32 2
  %17 = load %struct.mthca_cq_buf*, %struct.mthca_cq_buf** %6, align 8
  %18 = getelementptr inbounds %struct.mthca_cq_buf, %struct.mthca_cq_buf* %17, i32 0, i32 1
  %19 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %20 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %19, i32 0, i32 0
  %21 = load %struct.mthca_cq_buf*, %struct.mthca_cq_buf** %6, align 8
  %22 = getelementptr inbounds %struct.mthca_cq_buf, %struct.mthca_cq_buf* %21, i32 0, i32 0
  %23 = call i32 @mthca_buf_alloc(%struct.mthca_dev* %10, i32 %13, i32 %14, i32* %16, i32* %18, i32* %20, i32 1, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %42

28:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %38, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.mthca_cq_buf*, %struct.mthca_cq_buf** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @get_cqe_from_buf(%struct.mthca_cq_buf* %34, i32 %35)
  %37 = call i32 @set_cqe_hw(i32 %36)
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %29

41:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @mthca_buf_alloc(%struct.mthca_dev*, i32, i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @set_cqe_hw(i32) #1

declare dso_local i32 @get_cqe_from_buf(%struct.mthca_cq_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
