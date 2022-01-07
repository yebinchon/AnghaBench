; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_setup_mac_link_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_setup_mac_link_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"ixgbe_setup_mac_link_82598\00", align 1
@IXGBE_ERR_LINK_SETUP = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_AN = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_AN_1G_AN = common dso_local global i64 0, align 8
@IXGBE_AUTOC_KX4_KX_SUPP_MASK = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32)* @ixgbe_setup_mac_link_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_mac_link_82598(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %17 = load i32, i32* @IXGBE_AUTOC, align 4
  %18 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %16, i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %12, align 8
  %23 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %25 = call i32 @ixgbe_get_link_capabilities(%struct.ixgbe_hw* %24, i32* %9, i32* %7)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i64, i64* @IXGBE_ERR_LINK_SETUP, align 8
  store i64 %33, i64* %8, align 8
  br label %75

34:                                               ; preds = %3
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_AN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_AN_1G_AN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38, %34
  %43 = load i64, i64* @IXGBE_AUTOC_KX4_KX_SUPP_MASK, align 8
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %11, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %11, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i64, i64* @IXGBE_AUTOC_KX4_SUPP, align 8
  %53 = load i64, i64* %11, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %51, %42
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i64, i64* @IXGBE_AUTOC_KX_SUPP, align 8
  %62 = load i64, i64* %11, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %11, align 8
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %70 = load i32, i32* @IXGBE_AUTOC, align 4
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %69, i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %68, %64
  br label %74

74:                                               ; preds = %73, %38
  br label %75

75:                                               ; preds = %74, %32
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @IXGBE_SUCCESS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @ixgbe_start_mac_link_82598(%struct.ixgbe_hw* %80, i32 %81)
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i64, i64* %8, align 8
  ret i64 %84
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_get_link_capabilities(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i64 @ixgbe_start_mac_link_82598(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
