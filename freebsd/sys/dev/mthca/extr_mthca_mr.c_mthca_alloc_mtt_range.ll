; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c_mthca_alloc_mtt_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c_mthca_alloc_mtt_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mthca_buddy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, i32, %struct.mthca_buddy*)* @mthca_alloc_mtt_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_alloc_mtt_range(%struct.mthca_dev* %0, i32 %1, %struct.mthca_buddy* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_buddy*, align 8
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mthca_buddy* %2, %struct.mthca_buddy** %7, align 8
  %9 = load %struct.mthca_buddy*, %struct.mthca_buddy** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @mthca_buddy_alloc(%struct.mthca_buddy* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %41

15:                                               ; preds = %3
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %17 = call i64 @mthca_is_memfree(%struct.mthca_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %21 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %22 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = add nsw i32 %26, %28
  %30 = sub nsw i32 %29, 1
  %31 = call i64 @mthca_table_get_range(%struct.mthca_dev* %20, i32 %24, i32 %25, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.mthca_buddy*, %struct.mthca_buddy** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mthca_buddy_free(%struct.mthca_buddy* %34, i32 %35, i32 %36)
  store i32 -1, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %19
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @mthca_buddy_alloc(%struct.mthca_buddy*, i32) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i64 @mthca_table_get_range(%struct.mthca_dev*, i32, i32, i32) #1

declare dso_local i32 @mthca_buddy_free(%struct.mthca_buddy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
