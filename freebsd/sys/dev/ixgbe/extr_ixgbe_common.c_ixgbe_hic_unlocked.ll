; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_hic_unlocked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_hic_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ixgbe_hic_unlocked\00", align 1
@IXGBE_HI_MAX_BLOCK_BYTE_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Buffer length failure buffersize=%d.\0A\00", align 1
@IXGBE_ERR_HOST_INTERFACE_COMMAND = common dso_local global i32 0, align 4
@IXGBE_FWSTS = common dso_local global i32 0, align 4
@IXGBE_FWSTS_FWRI = common dso_local global i32 0, align 4
@IXGBE_HICR = common dso_local global i32 0, align 4
@IXGBE_HICR_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"IXGBE_HOST_EN bit disabled.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Buffer length failure, not aligned to dword\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IXGBE_FLEX_MNG = common dso_local global i32 0, align 4
@IXGBE_HICR_C = common dso_local global i32 0, align 4
@IXGBE_HICR_SV = common dso_local global i32 0, align 4
@IXGBE_ERROR_CAUTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Command has failed with no status valid.\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_hic_unlocked(%struct.ixgbe_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @IXGBE_HI_MAX_BLOCK_BYTE_LENGTH, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 4
  store i32 %24, i32* %5, align 4
  br label %119

25:                                               ; preds = %17
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %27 = load i32, i32* @IXGBE_FWSTS, align 4
  %28 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %30 = load i32, i32* @IXGBE_FWSTS, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @IXGBE_FWSTS_FWRI, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %29, i32 %30, i32 %33)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %36 = load i32, i32* @IXGBE_HICR, align 4
  %37 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @IXGBE_HICR_EN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %25
  %43 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 4
  store i32 %44, i32* %5, align 4
  br label %119

45:                                               ; preds = %25
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = urem i64 %47, 4
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %52, i32* %5, align 4
  br label %119

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 2
  store i32 %55, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %71, %53
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %62 = load i32, i32* @IXGBE_FLEX_MNG, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IXGBE_CPU_TO_LE32(i32 %68)
  %70 = call i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw* %61, i32 %62, i32 %63, i32 %69)
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %76 = load i32, i32* @IXGBE_HICR, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @IXGBE_HICR_C, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %75, i32 %76, i32 %79)
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %96, %74
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %87 = load i32, i32* @IXGBE_HICR, align 4
  %88 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @IXGBE_HICR_C, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %99

94:                                               ; preds = %85
  %95 = call i32 @msec_delay(i32 1)
  br label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %81

99:                                               ; preds = %93, %81
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %108 = load i32, i32* @IXGBE_HICR, align 4
  %109 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %107, i32 %108)
  %110 = load i32, i32* @IXGBE_HICR_SV, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %106, %102
  %114 = load i32, i32* @IXGBE_ERROR_CAUTION, align 4
  %115 = call i32 @ERROR_REPORT1(i32 %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i32, i32* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 4
  store i32 %116, i32* %5, align 4
  br label %119

117:                                              ; preds = %106
  %118 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %113, %50, %42, %21
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw*, i32, i32, i32) #1

declare dso_local i32 @IXGBE_CPU_TO_LE32(i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
