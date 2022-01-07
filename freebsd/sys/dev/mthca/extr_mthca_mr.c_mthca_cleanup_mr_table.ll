; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c_mthca_cleanup_mr_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c_mthca_cleanup_mr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_cleanup_mr_table(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %3 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = call i32 @mthca_buddy_cleanup(i32* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = call i32 @mthca_buddy_cleanup(i32* %17)
  %19 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %27 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @iounmap(i64 %30)
  br label %32

32:                                               ; preds = %25, %14
  %33 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %34 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %41 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @iounmap(i64 %44)
  br label %46

46:                                               ; preds = %39, %32
  %47 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %48 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @mthca_alloc_cleanup(i32* %49)
  ret void
}

declare dso_local i32 @mthca_buddy_cleanup(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @mthca_alloc_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
