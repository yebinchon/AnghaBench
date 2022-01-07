; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_get_tc_stats_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_get_tc_stats_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%struct.ixgbe_hw_stats = type { i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"dcb_get_tc_stats\00", align 1
@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IXGBE_ERR_PARAM = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_get_tc_stats_82599(%struct.ixgbe_hw* %0, %struct.ixgbe_hw_stats* %1, i32 %2) #0 {
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
  br label %124

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %119, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %122

20:                                               ; preds = %16
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @IXGBE_QPTC(i32 %22)
  %24 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %21, i32 %23)
  %25 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %6, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %25, i32 0, i32 4
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
  %37 = call i32 @IXGBE_QBTC_L(i32 %36)
  %38 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %35, i32 %37)
  %39 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %6, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %39, i32 0, i32 0
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
  %51 = call i32 @IXGBE_QBTC_H(i32 %50)
  %52 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %49, i32 %51)
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 32
  %55 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %6, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %54
  store i32 %62, i32* %60, align 4
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @IXGBE_QPRC(i32 %64)
  %66 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %63, i32 %65)
  %67 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %6, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %66
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @IXGBE_QBRC_L(i32 %78)
  %80 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %77, i32 %79)
  %81 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %6, align 8
  %82 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %80
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @IXGBE_QBRC_H(i32 %92)
  %94 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %91, i32 %93)
  %95 = trunc i64 %94 to i32
  %96 = shl i32 %95, 32
  %97 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %6, align 8
  %98 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %96
  store i32 %104, i32* %102, align 4
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @IXGBE_QPRDC(i32 %106)
  %108 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %105, i32 %107)
  %109 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %6, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %108
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  br label %119

119:                                              ; preds = %20
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %16

122:                                              ; preds = %16
  %123 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %13
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_QPTC(i32) #1

declare dso_local i32 @IXGBE_QBTC_L(i32) #1

declare dso_local i32 @IXGBE_QBTC_H(i32) #1

declare dso_local i32 @IXGBE_QPRC(i32) #1

declare dso_local i32 @IXGBE_QBRC_L(i32) #1

declare dso_local i32 @IXGBE_QBRC_H(i32) #1

declare dso_local i32 @IXGBE_QPRDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
