; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_get_tc_stats_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_get_tc_stats_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.ixgbe_hw = type { i32 }
%struct.ixgbe_hw_stats = type { i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"dcb_get_tc_stats\00", align 1
@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IXGBE_ERR_PARAM = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@tc_stats_array = common dso_local global %struct.TYPE_2__** null, align 8
@up = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_get_tc_stats_82598(%struct.ixgbe_hw* %0, %struct.ixgbe_hw_stats* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %struct.ixgbe_hw_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store %struct.ixgbe_hw_stats* %1, %struct.ixgbe_hw_stats** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @IXGBE_ERR_PARAM, align 4
  store i32 %14, i32* %4, align 4
  br label %82

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %77, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %16
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @IXGBE_QPTC(i32 %22)
  %24 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %21, i32 %23)
  %25 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %6, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %24
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @IXGBE_QBTC(i32 %36)
  %38 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %35, i32 %37)
  %39 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %6, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %38
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @IXGBE_QPRC(i32 %50)
  %52 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %49, i32 %51)
  %53 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %6, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %52
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @IXGBE_QBRC(i32 %64)
  %66 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %63, i32 %65)
  %67 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %6, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %66
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  br label %77

77:                                               ; preds = %20
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %16

80:                                               ; preds = %16
  %81 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %13
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_QPTC(i32) #1

declare dso_local i32 @IXGBE_QBTC(i32) #1

declare dso_local i32 @IXGBE_QPRC(i32) #1

declare dso_local i32 @IXGBE_QBRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
