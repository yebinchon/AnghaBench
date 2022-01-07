; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_get_fdirtcpm_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_get_fdirtcpm_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ixgbe_atr_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IXGBE_FDIRTCPM_DPORTM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ixgbe_atr_input*)* @ixgbe_get_fdirtcpm_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_fdirtcpm_82599(%union.ixgbe_atr_input* %0) #0 {
  %2 = alloca %union.ixgbe_atr_input*, align 8
  %3 = alloca i32, align 4
  store %union.ixgbe_atr_input* %0, %union.ixgbe_atr_input** %2, align 8
  %4 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %2, align 8
  %5 = bitcast %union.ixgbe_atr_input* %4 to %struct.TYPE_2__*
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @IXGBE_NTOHS(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @IXGBE_FDIRTCPM_DPORTM_SHIFT, align 4
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %2, align 8
  %13 = bitcast %union.ixgbe_atr_input* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IXGBE_NTOHS(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 1431655765
  %21 = shl i32 %20, 1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, -1431655766
  %24 = lshr i32 %23, 1
  %25 = or i32 %21, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 858993459
  %28 = shl i32 %27, 2
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, -858993460
  %31 = lshr i32 %30, 2
  %32 = or i32 %28, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 252645135
  %35 = shl i32 %34, 4
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, -252645136
  %38 = lshr i32 %37, 4
  %39 = or i32 %35, %38
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 16711935
  %42 = shl i32 %41, 8
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, -16711936
  %45 = lshr i32 %44, 8
  %46 = or i32 %42, %45
  ret i32 %46
}

declare dso_local i32 @IXGBE_NTOHS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
