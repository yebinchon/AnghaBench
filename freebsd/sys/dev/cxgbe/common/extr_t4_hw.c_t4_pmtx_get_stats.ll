; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_pmtx_get_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_pmtx_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@A_PM_TX_STAT_CONFIG = common dso_local global i32 0, align 4
@A_PM_TX_STAT_COUNT = common dso_local global i32 0, align 4
@A_PM_TX_STAT_LSB = common dso_local global i32 0, align 4
@A_PM_TX_DBG_CTRL = common dso_local global i32 0, align 4
@A_PM_TX_DBG_DATA = common dso_local global i32 0, align 4
@A_PM_TX_DBG_STAT_MSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_pmtx_get_stats(%struct.adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %59, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %9
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = load i32, i32* @A_PM_TX_STAT_CONFIG, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @t4_write_reg(%struct.adapter* %18, i32 %19, i32 %21)
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = load i32, i32* @A_PM_TX_STAT_COUNT, align 4
  %25 = call i32 @t4_read_reg(%struct.adapter* %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = call i64 @is_t4(%struct.adapter* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %17
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = load i32, i32* @A_PM_TX_STAT_LSB, align 4
  %36 = call i32 @t4_read_reg64(%struct.adapter* %34, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %58

41:                                               ; preds = %17
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = load i32, i32* @A_PM_TX_DBG_CTRL, align 4
  %44 = load i32, i32* @A_PM_TX_DBG_DATA, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %46 = load i32, i32* @A_PM_TX_DBG_STAT_MSB, align 4
  %47 = call i32 @t4_read_indirect(%struct.adapter* %42, i32 %43, i32 %44, i32* %45, i32 2, i32 %46)
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 32
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %50, %52
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %41, %33
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %9

62:                                               ; preds = %9
  ret void
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i32 @t4_read_reg64(%struct.adapter*, i32) #1

declare dso_local i32 @t4_read_indirect(%struct.adapter*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
