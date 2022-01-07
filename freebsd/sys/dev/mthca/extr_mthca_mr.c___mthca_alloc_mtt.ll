; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c___mthca_alloc_mtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c___mthca_alloc_mtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_mtt = type { i32, i64, %struct.mthca_buddy* }
%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mthca_buddy = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mthca_mtt* (%struct.mthca_dev*, i32, %struct.mthca_buddy*)* @__mthca_alloc_mtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mthca_mtt* @__mthca_alloc_mtt(%struct.mthca_dev* %0, i32 %1, %struct.mthca_buddy* %2) #0 {
  %4 = alloca %struct.mthca_mtt*, align 8
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_buddy*, align 8
  %8 = alloca %struct.mthca_mtt*, align 8
  %9 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mthca_buddy* %2, %struct.mthca_buddy** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.mthca_mtt* @ERR_PTR(i32 %14)
  store %struct.mthca_mtt* %15, %struct.mthca_mtt** %4, align 8
  br label %69

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mthca_mtt* @kmalloc(i32 24, i32 %17)
  store %struct.mthca_mtt* %18, %struct.mthca_mtt** %8, align 8
  %19 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %20 = icmp ne %struct.mthca_mtt* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.mthca_mtt* @ERR_PTR(i32 %23)
  store %struct.mthca_mtt* %24, %struct.mthca_mtt** %4, align 8
  br label %69

25:                                               ; preds = %16
  %26 = load %struct.mthca_buddy*, %struct.mthca_buddy** %7, align 8
  %27 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %28 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %27, i32 0, i32 2
  store %struct.mthca_buddy* %26, %struct.mthca_buddy** %28, align 8
  %29 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %30 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %32 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 8
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %45, %25
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %42 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %36

48:                                               ; preds = %36
  %49 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %50 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %51 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mthca_buddy*, %struct.mthca_buddy** %7, align 8
  %54 = call i32 @mthca_alloc_mtt_range(%struct.mthca_dev* %49, i64 %52, %struct.mthca_buddy* %53)
  %55 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %56 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %58 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %67

61:                                               ; preds = %48
  %62 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %63 = call i32 @kfree(%struct.mthca_mtt* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.mthca_mtt* @ERR_PTR(i32 %65)
  store %struct.mthca_mtt* %66, %struct.mthca_mtt** %4, align 8
  br label %69

67:                                               ; preds = %48
  %68 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  store %struct.mthca_mtt* %68, %struct.mthca_mtt** %4, align 8
  br label %69

69:                                               ; preds = %67, %61, %21, %12
  %70 = load %struct.mthca_mtt*, %struct.mthca_mtt** %4, align 8
  ret %struct.mthca_mtt* %70
}

declare dso_local %struct.mthca_mtt* @ERR_PTR(i32) #1

declare dso_local %struct.mthca_mtt* @kmalloc(i32, i32) #1

declare dso_local i32 @mthca_alloc_mtt_range(%struct.mthca_dev*, i64, %struct.mthca_buddy*) #1

declare dso_local i32 @kfree(%struct.mthca_mtt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
