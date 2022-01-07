; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_rar_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_rar_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64, i64)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [22 x i8] c"ixgbe_set_rar_generic\00", align 1
@IXGBE_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RAR index %d is out of range.\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_rar_generic(%struct.ixgbe_hw* %0, i64 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %14, align 8
  %19 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %14, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i32, i32* @IXGBE_ERROR_ARGUMENT, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @ERROR_REPORT2(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %27, i32* %6, align 4
  br label %96

28:                                               ; preds = %5
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ixgbe_hw.0*, i64, i64)*, i32 (%struct.ixgbe_hw.0*, i64, i64)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.0*
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 %33(%struct.ixgbe_hw.0* %35, i64 %36, i64 %37)
  %39 = load i64*, i64** %9, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = shl i64 %44, 8
  %46 = or i64 %41, %45
  %47 = load i64*, i64** %9, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = shl i64 %49, 16
  %51 = or i64 %46, %50
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 3
  %54 = load i64, i64* %53, align 8
  %55 = shl i64 %54, 24
  %56 = or i64 %51, %55
  store i64 %56, i64* %12, align 8
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @IXGBE_RAH(i64 %58)
  %60 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %57, i32 %59)
  store i64 %60, i64* %13, align 8
  %61 = load i32, i32* @IXGBE_RAH_AV, align 4
  %62 = or i32 65535, %61
  %63 = xor i32 %62, -1
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %13, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %13, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 4
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 5
  %72 = load i64, i64* %71, align 8
  %73 = shl i64 %72, 8
  %74 = or i64 %69, %73
  %75 = load i64, i64* %13, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %11, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %28
  %80 = load i32, i32* @IXGBE_RAH_AV, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %13, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %13, align 8
  br label %84

84:                                               ; preds = %79, %28
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @IXGBE_RAL(i64 %86)
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %85, i32 %87, i64 %88)
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @IXGBE_RAH(i64 %91)
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %90, i32 %92, i64 %93)
  %95 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %84, %23
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i64) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RAH(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_RAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
