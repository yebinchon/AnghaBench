; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_set_vmdq_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_set_vmdq_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"ixgbe_set_vmdq_82598\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"RAR index %d is out of range.\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IXGBE_RAH_VIND_MASK = common dso_local global i64 0, align 8
@IXGBE_RAH_VIND_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_vmdq_82598(%struct.ixgbe_hw* %0, i64 %1, i64 %2) #0 {
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
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %21, i32* %4, align 4
  br label %44

22:                                               ; preds = %3
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @IXGBE_RAH(i64 %24)
  %26 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %23, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* @IXGBE_RAH_VIND_MASK, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %8, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @IXGBE_RAH_VIND_SHIFT, align 8
  %33 = shl i64 %31, %32
  %34 = load i64, i64* @IXGBE_RAH_VIND_MASK, align 8
  %35 = and i64 %33, %34
  %36 = load i64, i64* %8, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %8, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @IXGBE_RAH(i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %38, i32 %40, i64 %41)
  %43 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %22, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RAH(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
