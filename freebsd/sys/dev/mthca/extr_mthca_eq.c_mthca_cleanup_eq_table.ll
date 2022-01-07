; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_mthca_cleanup_eq_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_mthca_cleanup_eq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MTHCA_EQ_ASYNC = common dso_local global i64 0, align 8
@MTHCA_CMD_EVENT_MASK = common dso_local global i32 0, align 4
@MTHCA_EQ_CMD = common dso_local global i64 0, align 8
@MTHCA_NUM_EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_cleanup_eq_table(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %4 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %5 = call i32 @mthca_free_irqs(%struct.mthca_dev* %4)
  %6 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %7 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %8 = call i32 @async_mask(%struct.mthca_dev* %7)
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i64, i64* @MTHCA_EQ_ASYNC, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mthca_MAP_EQ(%struct.mthca_dev* %6, i32 %8, i32 1, i32 %16)
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %19 = load i32, i32* @MTHCA_CMD_EVENT_MASK, align 4
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* @MTHCA_EQ_CMD, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mthca_MAP_EQ(%struct.mthca_dev* %18, i32 %19, i32 1, i32 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %43, %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @MTHCA_NUM_EQ, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %36 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = call i32 @mthca_free_eq(%struct.mthca_dev* %34, %struct.TYPE_4__* %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %48 = call i32 @mthca_unmap_eq_regs(%struct.mthca_dev* %47)
  %49 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %50 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @mthca_alloc_cleanup(i32* %51)
  ret void
}

declare dso_local i32 @mthca_free_irqs(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_MAP_EQ(%struct.mthca_dev*, i32, i32, i32) #1

declare dso_local i32 @async_mask(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_free_eq(%struct.mthca_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @mthca_unmap_eq_regs(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_alloc_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
