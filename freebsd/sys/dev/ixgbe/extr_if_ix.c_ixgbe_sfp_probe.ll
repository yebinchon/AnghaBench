; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_sfp_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_sfp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i8*, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@FALSE = common dso_local global i8* null, align 8
@ixgbe_phy_nl = common dso_local global i64 0, align 8
@ixgbe_sfp_type_not_present = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unsupported SFP+ module detected!\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Reload driver with supported module.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"SFP+ module detected!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixgbe_sfp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_sfp_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @iflib_get_dev(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i8*, i8** @FALSE, align 8
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ixgbe_phy_nl, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %1
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ixgbe_sfp_type_not_present, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %22
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %36 = bitcast %struct.ixgbe_hw* %35 to %struct.ixgbe_hw.0*
  %37 = call i64 %34(%struct.ixgbe_hw.0* %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %67

41:                                               ; preds = %29
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %45, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %48 = bitcast %struct.ixgbe_hw* %47 to %struct.ixgbe_hw.1*
  %49 = call i64 %46(%struct.ixgbe_hw.1* %48)
  store i64 %49, i64* %7, align 8
  %50 = load i8*, i8** @FALSE, align 8
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %67

61:                                               ; preds = %41
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %22, %1
  br label %67

67:                                               ; preds = %66, %56, %40
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
