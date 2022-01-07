; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_set_rxpba_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_set_rxpba_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_RXPBSIZE_64KB = common dso_local global i32 0, align 4
@IXGBE_RXPBSIZE_80KB = common dso_local global i32 0, align 4
@IXGBE_RXPBSIZE_48KB = common dso_local global i32 0, align 4
@IXGBE_MAX_PACKET_BUFFERS = common dso_local global i32 0, align 4
@IXGBE_TXPBSIZE_40KB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*, i32, i32, i32)* @ixgbe_set_rxpba_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_set_rxpba_82598(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @IXGBE_RXPBSIZE_64KB, align 4
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @UNREFERENCED_1PARAMETER(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %65

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %36 [
    i32 128, label %19
    i32 129, label %35
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @IXGBE_RXPBSIZE_80KB, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %30, %19
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @IXGBE_RXPBSIZE(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %25, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %21

33:                                               ; preds = %21
  %34 = load i32, i32* @IXGBE_RXPBSIZE_48KB, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %17, %33
  br label %36

36:                                               ; preds = %17, %35
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @IXGBE_MAX_PACKET_BUFFERS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @IXGBE_RXPBSIZE(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %42, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %37

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @IXGBE_MAX_PACKET_BUFFERS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @IXGBE_TXPBSIZE(i32 %58)
  %60 = load i32, i32* @IXGBE_TXPBSIZE_40KB, align 4
  %61 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %52

65:                                               ; preds = %16, %52
  ret void
}

declare dso_local i32 @UNREFERENCED_1PARAMETER(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_RXPBSIZE(i32) #1

declare dso_local i32 @IXGBE_TXPBSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
