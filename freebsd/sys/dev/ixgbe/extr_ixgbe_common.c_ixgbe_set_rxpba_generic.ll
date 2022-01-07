; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_rxpba_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_rxpba_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_RXPBSIZE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TXPBSIZE_MAX = common dso_local global i32 0, align 4
@IXGBE_TXPKT_SIZE_MAX = common dso_local global i32 0, align 4
@IXGBE_MAX_PB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_rxpba_generic(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %4
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %78 [
    i32 128, label %26
    i32 129, label %56
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 5
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sdiv i32 %28, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 2
  %35 = mul nsw i32 %32, %34
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @IXGBE_RXPBSIZE_SHIFT, align 4
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %52, %26
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sdiv i32 %43, 2
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @IXGBE_RXPBSIZE(i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %41

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %24, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sdiv i32 %57, %60
  %62 = load i32, i32* @IXGBE_RXPBSIZE_SHIFT, align 4
  %63 = shl i32 %61, %62
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %74, %56
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @IXGBE_RXPBSIZE(i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %69, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %64

77:                                               ; preds = %64
  br label %79

78:                                               ; preds = %24
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i32, i32* @IXGBE_TXPBSIZE_MAX, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = sdiv i32 %83, 1024
  %85 = load i32, i32* @IXGBE_TXPKT_SIZE_MAX, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %102, %79
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @IXGBE_TXPBSIZE(i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %92, i32 %94, i32 %95)
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @IXGBE_TXPBTHRESH(i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %97, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %87

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %123, %105
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @IXGBE_MAX_PB, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @IXGBE_RXPBSIZE(i32 %112)
  %114 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %111, i32 %113, i32 0)
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @IXGBE_TXPBSIZE(i32 %116)
  %118 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %115, i32 %117, i32 0)
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @IXGBE_TXPBTHRESH(i32 %120)
  %122 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %119, i32 %121, i32 0)
  br label %123

123:                                              ; preds = %110
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %106

126:                                              ; preds = %106
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_RXPBSIZE(i32) #1

declare dso_local i32 @IXGBE_TXPBSIZE(i32) #1

declare dso_local i32 @IXGBE_TXPBTHRESH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
