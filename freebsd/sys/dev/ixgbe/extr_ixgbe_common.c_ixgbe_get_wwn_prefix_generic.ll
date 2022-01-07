; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_wwn_prefix_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_wwn_prefix_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"ixgbe_get_wwn_prefix_generic\00", align 1
@IXGBE_ALT_SAN_MAC_ADDR_BLK_PTR = common dso_local global i32 0, align 4
@IXGBE_ALT_SAN_MAC_ADDR_CAPS_OFFSET = common dso_local global i32 0, align 4
@IXGBE_ALT_SAN_MAC_ADDR_CAPS_ALTWWN = common dso_local global i32 0, align 4
@IXGBE_ALT_SAN_MAC_ADDR_WWNN_OFFSET = common dso_local global i32 0, align 4
@IXGBE_ERROR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"eeprom read at offset %d failed\00", align 1
@IXGBE_ALT_SAN_MAC_ADDR_WWPN_OFFSET = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_wwn_prefix_generic(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %6, align 8
  store i32 65535, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 65535, i32* %13, align 4
  %14 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_BLK_PTR, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %18, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = bitcast %struct.ixgbe_hw* %20 to %struct.ixgbe_hw.0*
  %22 = load i32, i32* %8, align 4
  %23 = call i64 %19(%struct.ixgbe_hw.0* %21, i32 %22, i32* %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %92

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 65535
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  br label %90

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_CAPS_OFFSET, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %40, align 8
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = bitcast %struct.ixgbe_hw* %42 to %struct.ixgbe_hw.0*
  %44 = load i32, i32* %8, align 4
  %45 = call i64 %41(%struct.ixgbe_hw.0* %43, i32 %44, i32* %9)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %92

48:                                               ; preds = %33
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_CAPS_ALTWWN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %90

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_WWNN_OFFSET, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %61, align 8
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %64 = bitcast %struct.ixgbe_hw* %63 to %struct.ixgbe_hw.0*
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 %62(%struct.ixgbe_hw.0* %64, i32 %65, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ERROR_REPORT2(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %54
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_WWPN_OFFSET, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %80, align 8
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %83 = bitcast %struct.ixgbe_hw* %82 to %struct.ixgbe_hw.0*
  %84 = load i32, i32* %8, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = call i64 %81(%struct.ixgbe_hw.0* %83, i32 %84, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  br label %92

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %53, %32
  %91 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %91, i32* %4, align 4
  br label %97

92:                                               ; preds = %88, %47, %25
  %93 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @ERROR_REPORT2(i32 %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %90
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
