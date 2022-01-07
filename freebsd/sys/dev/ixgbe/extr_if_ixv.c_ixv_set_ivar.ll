; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_set_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_set_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_IVAR_ALLOC_VAL = common dso_local global i32 0, align 4
@IXGBE_VTIVAR_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32, i32)* @ixv_set_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_set_ivar(%struct.adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %9, align 8
  %14 = load i32, i32* @IXGBE_IVAR_ALLOC_VAL, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %21 = load i32, i32* @IXGBE_VTIVAR_MISC, align 4
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, -256
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %29 = load i32, i32* @IXGBE_VTIVAR_MISC, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %28, i32 %29, i32 %30)
  br label %60

32:                                               ; preds = %4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 1
  %35 = mul nsw i32 16, %34
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 8, %36
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 1
  %42 = call i32 @IXGBE_VTIVAR(i32 %41)
  %43 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 255, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 1
  %57 = call i32 @IXGBE_VTIVAR(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %54, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %32, %19
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VTIVAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
