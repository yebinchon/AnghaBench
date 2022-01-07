; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_san_mac_addr_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_san_mac_addr_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.1 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"ixgbe_get_san_mac_addr_generic\00", align 1
@IXGBE_SAN_MAC_ADDR_PORT1_OFFSET = common dso_local global i64 0, align 8
@IXGBE_SAN_MAC_ADDR_PORT0_OFFSET = common dso_local global i64 0, align 8
@IXGBE_ERROR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"eeprom read at offset %d failed\00", align 1
@IXGBE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_get_san_mac_addr_generic(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %12 = call i64 @ixgbe_get_san_mac_addr_offset(%struct.ixgbe_hw* %11, i32* %7)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 65535
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %2
  br label %91

22:                                               ; preds = %18
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %26, align 8
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %29 = bitcast %struct.ixgbe_hw* %28 to %struct.ixgbe_hw.1*
  %30 = call i32 %27(%struct.ixgbe_hw.1* %29)
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = load i64, i64* @IXGBE_SAN_MAC_ADDR_PORT1_OFFSET, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  br label %48

42:                                               ; preds = %22
  %43 = load i64, i64* @IXGBE_SAN_MAC_ADDR_PORT0_OFFSET, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi i32 [ %41, %36 ], [ %47, %42 ]
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %86, %48
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %89

53:                                               ; preds = %50
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %57, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %60 = bitcast %struct.ixgbe_hw* %59 to %struct.ixgbe_hw.0*
  %61 = load i32, i32* %7, align 4
  %62 = call i64 %58(%struct.ixgbe_hw.0* %60, i32 %61, i32* %6)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ERROR_REPORT2(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %91

69:                                               ; preds = %53
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = ashr i32 %76, 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 2
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %69
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %50

89:                                               ; preds = %50
  %90 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %90, i64* %3, align 8
  br label %105

91:                                               ; preds = %65, %21
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %100, %91
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 6
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 255, i32* %99, align 4
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %92

103:                                              ; preds = %92
  %104 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %104, i64* %3, align 8
  br label %105

105:                                              ; preds = %103, %89
  %106 = load i64, i64* %3, align 8
  ret i64 %106
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_get_san_mac_addr_offset(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
