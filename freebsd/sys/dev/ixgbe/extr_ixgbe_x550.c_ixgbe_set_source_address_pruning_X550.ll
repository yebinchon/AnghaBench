; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_set_source_address_pruning_X550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_set_source_address_pruning_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_PFFLPL = common dso_local global i32 0, align 4
@IXGBE_PFFLPH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_source_address_pruning_X550(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ugt i32 %8, 63
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %52

11:                                               ; preds = %3
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %13 = load i32, i32* @IXGBE_PFFLPL, align 4
  %14 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %12, i32 %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %17 = load i32, i32* @IXGBE_PFFLPH, align 4
  %18 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %16, i32 %17)
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 32
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %11
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 1, %27
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = or i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  br label %42

33:                                               ; preds = %11
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = xor i64 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %33, %25
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %44 = load i32, i32* @IXGBE_PFFLPL, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %43, i32 %44, i32 %45)
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %48 = load i32, i32* @IXGBE_PFFLPH, align 4
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 32
  %51 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %42, %10
  ret void
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
