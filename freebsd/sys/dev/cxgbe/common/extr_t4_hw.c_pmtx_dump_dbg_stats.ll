; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_pmtx_dump_dbg_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_pmtx_dump_dbg_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_PM_TX_DBG_CTRL = common dso_local global i32 0, align 4
@A_PM_TX_DBG_DATA = common dso_local global i32 0, align 4
@A_PM_TX_DBG_STAT0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"  - PM_TX_DBG_STAT%u (0x%x) = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32)* @pmtx_dump_dbg_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmtx_dump_dbg_stats(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [17 x i32], align 16
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = load i32, i32* @A_PM_TX_DBG_CTRL, align 4
  %11 = load i32, i32* @A_PM_TX_DBG_DATA, align 4
  %12 = getelementptr inbounds [17 x i32], [17 x i32]* %8, i64 0, i64 0
  %13 = getelementptr inbounds [17 x i32], [17 x i32]* %8, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = load i64, i64* @A_PM_TX_DBG_STAT0, align 8
  %16 = call i32 @t4_read_indirect(%struct.adapter* %9, i32 %10, i32 %11, i32* %12, i32 %14, i64 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %34, %3
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds [17 x i32], [17 x i32]* %8, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i64, i64* @A_PM_TX_DBG_STAT0, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [17 x i32], [17 x i32]* %8, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CH_ALERT(%struct.adapter* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %28, i32 %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %17

37:                                               ; preds = %17
  ret i32 0
}

declare dso_local i32 @t4_read_indirect(%struct.adapter*, i32, i32, i32*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @CH_ALERT(%struct.adapter*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
