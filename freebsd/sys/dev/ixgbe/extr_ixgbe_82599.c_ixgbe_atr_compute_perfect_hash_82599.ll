; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_atr_compute_perfect_hash_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_atr_compute_perfect_hash_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ixgbe_atr_input = type { i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_atr_compute_perfect_hash_82599(%union.ixgbe_atr_input* %0, %union.ixgbe_atr_input* %1) #0 {
  %3 = alloca %union.ixgbe_atr_input*, align 8
  %4 = alloca %union.ixgbe_atr_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %union.ixgbe_atr_input* %0, %union.ixgbe_atr_input** %3, align 8
  store %union.ixgbe_atr_input* %1, %union.ixgbe_atr_input** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 14
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %16 = bitcast %union.ixgbe_atr_input* %15 to i32**
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %23 = bitcast %union.ixgbe_atr_input* %22 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %21
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %35 = bitcast %union.ixgbe_atr_input* %34 to i32**
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @IXGBE_NTOHL(i32 %38)
  store i32 %39, i32* %7, align 4
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %53, %33
  %41 = load i32, i32* %10, align 4
  %42 = icmp sle i32 %41, 13
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %45 = bitcast %union.ixgbe_atr_input* %44 to i32**
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = xor i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %40

56:                                               ; preds = %40
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @IXGBE_NTOHL(i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = ashr i32 %59, 16
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %60, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 16
  %67 = xor i32 %64, %66
  %68 = load i32, i32* %5, align 4
  %69 = xor i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 0)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 16
  %74 = xor i32 %71, %73
  %75 = load i32, i32* %6, align 4
  %76 = xor i32 %75, %74
  store i32 %76, i32* %6, align 4
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %83, %56
  %78 = load i32, i32* %10, align 4
  %79 = icmp sle i32 %78, 15
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 %81)
  br label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %77

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 8191
  %89 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %90 = bitcast %union.ixgbe_atr_input* %89 to %struct.TYPE_2__*
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  ret void
}

declare dso_local i32 @IXGBE_NTOHL(i32) #1

declare dso_local i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
