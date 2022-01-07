; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_hw_reset_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_hw_reset_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque

@.str = private unnamed_addr constant [27 x i8] c"e1000_phy_hw_reset_generic\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_hw_reset_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %12, align 8
  %14 = icmp ne i64 (%struct.e1000_hw.3*)* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.3*
  %22 = call i64 %19(%struct.e1000_hw.3* %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %26, i64* %2, align 8
  br label %77

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %30 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %31, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = bitcast %struct.e1000_hw* %33 to %struct.e1000_hw.2*
  %35 = call i64 %32(%struct.e1000_hw.2* %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %77

40:                                               ; preds = %28
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = load i32, i32* @E1000_CTRL, align 4
  %43 = call i32 @E1000_READ_REG(%struct.e1000_hw* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = load i32, i32* @E1000_CTRL, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %44, i32 %45, i32 %48)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %50)
  %52 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %53 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @usec_delay(i32 %54)
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = load i32, i32* @E1000_CTRL, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %56, i32 %57, i32 %58)
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %60)
  %62 = call i32 @usec_delay(i32 150)
  %63 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.1*
  %69 = call i32 %66(%struct.e1000_hw.1* %68)
  %70 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %71 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %72, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = bitcast %struct.e1000_hw* %74 to %struct.e1000_hw.0*
  %76 = call i64 %73(%struct.e1000_hw.0* %75)
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %40, %38, %25
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
