; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_dmac_config_tcs_X550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_dmac_config_tcs_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"ixgbe_dmac_config_tcs_X550\00", align 1
@IXGBE_DMACRXT_100M = common dso_local global i64 0, align 8
@IXGBE_DMACRXT_1G = common dso_local global i64 0, align 8
@IXGBE_DMACRXT_10G = common dso_local global i64 0, align 8
@IXGBE_MAXFRS = common dso_local global i32 0, align 4
@IXGBE_MHADD_MFS_SHIFT = common dso_local global i32 0, align 4
@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@IXGBE_DMCTH_DMACRXT_MASK = common dso_local global i64 0, align 8
@IXGBE_RXPBSIZE_MASK = common dso_local global i64 0, align 8
@IXGBE_RXPBSIZE_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dmac_config_tcs_X550(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %18 [
    i32 129, label %14
    i32 130, label %14
    i32 128, label %16
  ]

14:                                               ; preds = %1, %1
  %15 = load i64, i64* @IXGBE_DMACRXT_100M, align 8
  store i64 %15, i64* %5, align 8
  br label %20

16:                                               ; preds = %1
  %17 = load i64, i64* @IXGBE_DMACRXT_1G, align 8
  store i64 %17, i64* %5, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @IXGBE_DMACRXT_10G, align 8
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %18, %16, %14
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %22 = load i32, i32* @IXGBE_MAXFRS, align 4
  %23 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %21, i32 %22)
  %24 = load i32, i32* @IXGBE_MHADD_MFS_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = sdiv i32 %25, 1024
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %86, %20
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %89

32:                                               ; preds = %28
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @IXGBE_DMCTH(i64 %34)
  %36 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %33, i32 %35)
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* @IXGBE_DMCTH_DMACRXT_MASK, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %4, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %42, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %32
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @IXGBE_RXPBSIZE(i64 %51)
  %53 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %50, i32 %52)
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @IXGBE_RXPBSIZE_MASK, align 8
  %57 = and i64 %55, %56
  %58 = load i64, i64* @IXGBE_RXPBSIZE_SHIFT, align 8
  %59 = ashr i64 %57, %58
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %5, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %6, align 8
  br label %68

67:                                               ; preds = %49
  store i64 0, i64* %6, align 8
  br label %68

68:                                               ; preds = %67, %63
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  br label %76

74:                                               ; preds = %68
  %75 = load i64, i64* %7, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  %78 = load i64, i64* %4, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %76, %32
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @IXGBE_DMCTH(i64 %82)
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %81, i32 %83, i64 %84)
  br label %86

86:                                               ; preds = %80
  %87 = load i64, i64* %3, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %3, align 8
  br label %28

89:                                               ; preds = %28
  %90 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %90
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_DMCTH(i64) #1

declare dso_local i32 @IXGBE_RXPBSIZE(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
