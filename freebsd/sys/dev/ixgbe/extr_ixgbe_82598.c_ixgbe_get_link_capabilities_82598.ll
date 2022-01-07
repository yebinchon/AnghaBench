; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_get_link_capabilities_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_get_link_capabilities_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ixgbe_get_link_capabilities_82598\00", align 1
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i32 0, align 4
@IXGBE_ERR_LINK_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*, i32*)* @ixgbe_get_link_capabilities_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_link_capabilities_82598(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %23 = load i32, i32* @IXGBE_AUTOC, align 4
  %24 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %69 [
    i32 130, label %29
    i32 132, label %34
    i32 131, label %39
    i32 129, label %44
    i32 128, label %44
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %71

34:                                               ; preds = %25
  %35 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %71

39:                                               ; preds = %25
  %40 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %71

44:                                               ; preds = %25, %25
  %45 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %44
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* @TRUE, align 4
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  br label %71

69:                                               ; preds = %25
  %70 = load i32, i32* @IXGBE_ERR_LINK_SETUP, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %66, %39, %34, %29
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
