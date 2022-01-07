; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_wait_autoneg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_wait_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i32, i64*)* }
%struct.e1000_hw.0 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"e1000_wait_autoneg\00", align 1
@PHY_AUTO_NEG_LIMIT = common dso_local global i64 0, align 8
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_AUTONEG_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_wait_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_wait_autoneg(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %7, i64* %4, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %12, align 8
  %14 = icmp ne i64 (%struct.e1000_hw.0*, i32, i64*)* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %16, i64* %2, align 8
  br label %61

17:                                               ; preds = %1
  %18 = load i64, i64* @PHY_AUTO_NEG_LIMIT, align 8
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %56, %17
  %20 = load i64, i64* %5, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %19
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %26, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = bitcast %struct.e1000_hw* %28 to %struct.e1000_hw.0*
  %30 = load i32, i32* @PHY_STATUS, align 4
  %31 = call i64 %27(%struct.e1000_hw.0* %29, i32 %30, i64* %6)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %59

35:                                               ; preds = %22
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %39, align 8
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = bitcast %struct.e1000_hw* %41 to %struct.e1000_hw.0*
  %43 = load i32, i32* @PHY_STATUS, align 4
  %44 = call i64 %40(%struct.e1000_hw.0* %42, i32 %43, i64* %6)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %59

48:                                               ; preds = %35
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @MII_SR_AUTONEG_COMPLETE, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %59

54:                                               ; preds = %48
  %55 = call i32 @msec_delay(i32 100)
  br label %56

56:                                               ; preds = %54
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %5, align 8
  br label %19

59:                                               ; preds = %53, %47, %34, %19
  %60 = load i64, i64* %4, align 8
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %59, %15
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
