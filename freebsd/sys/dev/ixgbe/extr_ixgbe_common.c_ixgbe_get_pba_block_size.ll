; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_pba_block_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_pba_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.1*, i64, i32, i64*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@.str = private unnamed_addr constant [25 x i8] c"ixgbe_get_pba_block_size\00", align 1
@IXGBE_PBANUM0_PTR = common dso_local global i64 0, align 8
@IXGBE_PBANUM1_PTR = common dso_local global i64 0, align 8
@IXGBE_ERR_PARAM = common dso_local global i64 0, align 8
@IXGBE_PBANUM_PTR_GUARD = common dso_local global i64 0, align 8
@IXGBE_ERR_PBA_SECTION = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_get_pba_block_size(%struct.ixgbe_hw* %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [2 x i64], align 16
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i64*, i64** %7, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64 (%struct.ixgbe_hw.1*, i64, i32, i64*)*, i64 (%struct.ixgbe_hw.1*, i64, i32, i64*)** %20, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %23 = bitcast %struct.ixgbe_hw* %22 to %struct.ixgbe_hw.1*
  %24 = load i64, i64* @IXGBE_PBANUM0_PTR, align 8
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %26 = call i64 %21(%struct.ixgbe_hw.1* %23, i64 %24, i32 2, i64* %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i64, i64* %10, align 8
  store i64 %30, i64* %5, align 8
  br label %108

31:                                               ; preds = %16
  br label %50

32:                                               ; preds = %4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @IXGBE_PBANUM1_PTR, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* @IXGBE_PBANUM0_PTR, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 %40, i64* %41, align 16
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* @IXGBE_PBANUM1_PTR, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 %45, i64* %46, align 8
  br label %49

47:                                               ; preds = %32
  %48 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %48, i64* %5, align 8
  br label %108

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %31
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %52 = load i64, i64* %51, align 16
  %53 = load i64, i64* @IXGBE_PBANUM_PTR_GUARD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %99

55:                                               ; preds = %50
  %56 = load i64*, i64** %7, align 8
  %57 = icmp eq i64* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %62, align 8
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %65 = bitcast %struct.ixgbe_hw* %64 to %struct.ixgbe_hw.0*
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 0
  %69 = call i64 %63(%struct.ixgbe_hw.0* %65, i64 %68, i64* %12)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %5, align 8
  br label %108

74:                                               ; preds = %58
  br label %90

75:                                               ; preds = %55
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ugt i64 %76, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i64*, i64** %7, align 8
  %82 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 0
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %12, align 8
  br label %89

87:                                               ; preds = %75
  %88 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %88, i64* %5, align 8
  br label %108

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %74
  %91 = load i64, i64* %12, align 8
  %92 = icmp eq i64 %91, 65535
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %12, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93, %90
  %97 = load i64, i64* @IXGBE_ERR_PBA_SECTION, align 8
  store i64 %97, i64* %5, align 8
  br label %108

98:                                               ; preds = %93
  br label %100

99:                                               ; preds = %50
  store i64 0, i64* %12, align 8
  br label %100

100:                                              ; preds = %99, %98
  %101 = load i64*, i64** %9, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i64, i64* %12, align 8
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %107, i64* %5, align 8
  br label %108

108:                                              ; preds = %106, %96, %87, %72, %47, %29
  %109 = load i64, i64* %5, align 8
  ret i64 %109
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
