; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_clear_rar_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_clear_rar_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64, i32)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [24 x i8] c"ixgbe_clear_rar_generic\00", align 1
@IXGBE_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RAR index %d is out of range.\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@IXGBE_CLEAR_VMDQ_ALL = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_clear_rar_generic(%struct.ixgbe_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @IXGBE_ERROR_ARGUMENT, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @ERROR_REPORT2(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @IXGBE_RAH(i64 %23)
  %25 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i32, i32* @IXGBE_RAH_AV, align 4
  %27 = or i32 65535, %26
  %28 = xor i32 %27, -1
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %6, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @IXGBE_RAL(i64 %33)
  %35 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %32, i32 %34, i64 0)
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @IXGBE_RAH(i64 %37)
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %36, i32 %38, i64 %39)
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.ixgbe_hw.0*, i64, i32)*, i32 (%struct.ixgbe_hw.0*, i64, i32)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.0*
  %48 = load i64, i64* %5, align 8
  %49 = load i32, i32* @IXGBE_CLEAR_VMDQ_ALL, align 4
  %50 = call i32 %45(%struct.ixgbe_hw.0* %47, i64 %48, i32 %49)
  %51 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %21, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
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
