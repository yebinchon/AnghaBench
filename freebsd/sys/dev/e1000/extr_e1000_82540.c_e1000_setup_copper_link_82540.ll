; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_setup_copper_link_82540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_setup_copper_link_82540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_setup_copper_link_82540\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@e1000_82545_rev_3 = common dso_local global i64 0, align 8
@e1000_82546_rev_3 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_copper_link_82540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_copper_link_82540(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = load i32, i32* @E1000_CTRL, align 4
  %9 = call i32 @E1000_READ_REG(%struct.e1000_hw* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @E1000_CTRL_SLU, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %14 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = load i32, i32* @E1000_CTRL, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %19, i32 %20, i32 %21)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = call i64 @e1000_set_phy_mode_82540(%struct.e1000_hw* %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %81

28:                                               ; preds = %1
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e1000_82545_rev_3, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @e1000_82546_rev_3, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %35, %28
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %46, align 8
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = bitcast %struct.e1000_hw* %48 to %struct.e1000_hw.1*
  %50 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %51 = call i64 %47(%struct.e1000_hw.1* %49, i32 %50, i32* %5)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %81

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, 8
  store i32 %57, i32* %5, align 4
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %61, align 8
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %64 = bitcast %struct.e1000_hw* %63 to %struct.e1000_hw.0*
  %65 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i64 %62(%struct.e1000_hw.0* %64, i32 %65, i32 %66)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %81

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %35
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %74 = call i64 @e1000_copper_link_setup_m88(%struct.e1000_hw* %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %81

78:                                               ; preds = %72
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %80 = call i64 @e1000_setup_copper_link_generic(%struct.e1000_hw* %79)
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %78, %77, %70, %54, %27
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_set_phy_mode_82540(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_setup_m88(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_setup_copper_link_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
