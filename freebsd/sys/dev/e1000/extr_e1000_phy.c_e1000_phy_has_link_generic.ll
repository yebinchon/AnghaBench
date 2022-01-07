; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_has_link_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_has_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i64*)* }
%struct.e1000_hw.0 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"e1000_phy_has_link_generic\00", align 1
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %13, i64* %10, align 8
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %18, align 8
  %20 = icmp ne i64 (%struct.e1000_hw.0*, i32, i64*)* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %22, i64* %5, align 8
  br label %91

23:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %24

24:                                               ; preds = %81, %23
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %84

28:                                               ; preds = %24
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.0*
  %36 = load i32, i32* @PHY_STATUS, align 4
  %37 = call i64 %33(%struct.e1000_hw.0* %35, i32 %36, i64* %12)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %28
  %41 = load i64, i64* %8, align 8
  %42 = icmp sge i64 %41, 1000
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = sdiv i64 %44, 1000
  %46 = call i32 @msec_delay(i64 %45)
  br label %50

47:                                               ; preds = %40
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @usec_delay(i64 %48)
  br label %50

50:                                               ; preds = %47, %43
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.0*
  %59 = load i32, i32* @PHY_STATUS, align 4
  %60 = call i64 %56(%struct.e1000_hw.0* %58, i32 %59, i64* %12)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %84

64:                                               ; preds = %51
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @MII_SR_LINK_STATUS, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %84

70:                                               ; preds = %64
  %71 = load i64, i64* %8, align 8
  %72 = icmp sge i64 %71, 1000
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i64, i64* %8, align 8
  %75 = sdiv i64 %74, 1000
  %76 = call i32 @msec_delay(i64 %75)
  br label %80

77:                                               ; preds = %70
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @usec_delay(i64 %78)
  br label %80

80:                                               ; preds = %77, %73
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %11, align 8
  br label %24

84:                                               ; preds = %69, %63, %24
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp slt i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i64, i64* %10, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %84, %21
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @msec_delay(i64) #1

declare dso_local i32 @usec_delay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
