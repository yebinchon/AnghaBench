; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_vmdq_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_vmdq_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"ixgbe_set_vmdq_generic\00", align 1
@IXGBE_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RAR index %d is out of range.\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_vmdq_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @IXGBE_ERROR_ARGUMENT, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @ERROR_REPORT2(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %22, i32* %4, align 4
  br label %61

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %24, 32
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @IXGBE_MPSAR_LO(i64 %28)
  %30 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %27, i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %8, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @IXGBE_MPSAR_LO(i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %37, i32 %39, i64 %40)
  br label %59

42:                                               ; preds = %23
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @IXGBE_MPSAR_HI(i64 %44)
  %46 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %43, i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub nsw i64 %47, 32
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %8, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @IXGBE_MPSAR_HI(i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %54, i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %42, %26
  %60 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i64) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_MPSAR_LO(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_MPSAR_HI(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
