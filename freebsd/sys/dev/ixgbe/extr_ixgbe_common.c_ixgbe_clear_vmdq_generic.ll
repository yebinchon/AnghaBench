; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_clear_vmdq_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_clear_vmdq_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [25 x i8] c"ixgbe_clear_vmdq_generic\00", align 1
@IXGBE_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RAR index %d is out of range.\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IXGBE_CLEAR_VMDQ_ALL = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_clear_vmdq_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @IXGBE_ERROR_ARGUMENT, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @ERROR_REPORT2(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %23, i32* %4, align 4
  br label %127

24:                                               ; preds = %3
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @IXGBE_MPSAR_LO(i64 %26)
  %28 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %25, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @IXGBE_MPSAR_HI(i64 %30)
  %32 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %29, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IXGBE_REMOVED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %125

39:                                               ; preds = %24
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %125

46:                                               ; preds = %42, %39
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @IXGBE_CLEAR_VMDQ_ALL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @IXGBE_MPSAR_LO(i64 %55)
  %57 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %54, i32 %56, i64 0)
  store i64 0, i64* %8, align 8
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @IXGBE_MPSAR_HI(i64 %63)
  %65 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %62, i32 %64, i64 0)
  store i64 0, i64* %9, align 8
  br label %66

66:                                               ; preds = %61, %58
  br label %98

67:                                               ; preds = %46
  %68 = load i64, i64* %7, align 8
  %69 = icmp slt i64 %68, 32
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i64, i64* %7, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 1, %72
  %74 = xor i32 %73, -1
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %8, align 8
  %77 = and i64 %76, %75
  store i64 %77, i64* %8, align 8
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @IXGBE_MPSAR_LO(i64 %79)
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %78, i32 %80, i64 %81)
  br label %97

83:                                               ; preds = %67
  %84 = load i64, i64* %7, align 8
  %85 = sub nsw i64 %84, 32
  %86 = trunc i64 %85 to i32
  %87 = shl i32 1, %86
  %88 = xor i32 %87, -1
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %9, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %9, align 8
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @IXGBE_MPSAR_HI(i64 %93)
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %92, i32 %94, i64 %95)
  br label %97

97:                                               ; preds = %83, %70
  br label %98

98:                                               ; preds = %97, %66
  %99 = load i64, i64* %8, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %98
  %102 = load i64, i64* %9, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %101
  %105 = load i64, i64* %6, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load i64, i64* %6, align 8
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %108, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32 (%struct.ixgbe_hw.0*, i64)*, i32 (%struct.ixgbe_hw.0*, i64)** %118, align 8
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %121 = bitcast %struct.ixgbe_hw* %120 to %struct.ixgbe_hw.0*
  %122 = load i64, i64* %6, align 8
  %123 = call i32 %119(%struct.ixgbe_hw.0* %121, i64 %122)
  br label %124

124:                                              ; preds = %114, %107, %104, %101, %98
  br label %125

125:                                              ; preds = %124, %45, %38
  %126 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %19
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i64) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_MPSAR_LO(i64) #1

declare dso_local i32 @IXGBE_MPSAR_HI(i64) #1

declare dso_local i64 @IXGBE_REMOVED(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
