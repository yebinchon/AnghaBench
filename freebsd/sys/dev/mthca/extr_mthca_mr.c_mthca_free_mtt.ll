; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c_mthca_free_mtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c_mthca_free_mtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mthca_mtt = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_free_mtt(%struct.mthca_dev* %0, %struct.mthca_mtt* %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_mtt*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store %struct.mthca_mtt* %1, %struct.mthca_mtt** %4, align 8
  %5 = load %struct.mthca_mtt*, %struct.mthca_mtt** %4, align 8
  %6 = icmp ne %struct.mthca_mtt* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %40

8:                                                ; preds = %2
  %9 = load %struct.mthca_mtt*, %struct.mthca_mtt** %4, align 8
  %10 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.mthca_mtt*, %struct.mthca_mtt** %4, align 8
  %13 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mthca_mtt*, %struct.mthca_mtt** %4, align 8
  %16 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @mthca_buddy_free(i32 %11, i64 %14, i32 %17)
  %19 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mthca_mtt*, %struct.mthca_mtt** %4, align 8
  %25 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mthca_mtt*, %struct.mthca_mtt** %4, align 8
  %28 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mthca_mtt*, %struct.mthca_mtt** %4, align 8
  %31 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %29, %34
  %36 = sub nsw i64 %35, 1
  %37 = call i32 @mthca_table_put_range(%struct.mthca_dev* %19, i32 %23, i64 %26, i64 %36)
  %38 = load %struct.mthca_mtt*, %struct.mthca_mtt** %4, align 8
  %39 = call i32 @kfree(%struct.mthca_mtt* %38)
  br label %40

40:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @mthca_buddy_free(i32, i64, i32) #1

declare dso_local i32 @mthca_table_put_range(%struct.mthca_dev*, i32, i64, i64) #1

declare dso_local i32 @kfree(%struct.mthca_mtt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
