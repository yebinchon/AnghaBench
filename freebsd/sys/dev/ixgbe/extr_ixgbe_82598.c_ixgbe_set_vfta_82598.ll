; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_set_vfta_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_set_vfta_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"ixgbe_set_vfta_82598\00", align 1
@IXGBE_ERR_PARAM = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_vfta_82598(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @UNREFERENCED_1PARAMETER(i32 %16)
  %18 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 4095
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @IXGBE_ERR_PARAM, align 4
  store i32 %22, i32* %6, align 4
  br label %80

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 5
  %26 = and i32 %25, 127
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 3
  %29 = and i32 %28, 3
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 7
  %32 = shl i32 %31, 2
  store i32 %32, i32* %13, align 4
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @IXGBE_VFTAVIND(i32 %34, i32 %35)
  %37 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %33, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = shl i32 15, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %14, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %14, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @IXGBE_VFTAVIND(i32 %49, i32 %50)
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %48, i32 %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 31
  store i32 %55, i32* %13, align 4
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @IXGBE_VFTA(i32 %57)
  %59 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %56, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %23
  %63 = load i32, i32* %13, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %14, align 4
  br label %73

67:                                               ; preds = %23
  %68 = load i32, i32* %13, align 4
  %69 = shl i32 1, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @IXGBE_VFTA(i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %74, i32 %76, i32 %77)
  %79 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %73, %21
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @UNREFERENCED_1PARAMETER(i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFTAVIND(i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFTA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
