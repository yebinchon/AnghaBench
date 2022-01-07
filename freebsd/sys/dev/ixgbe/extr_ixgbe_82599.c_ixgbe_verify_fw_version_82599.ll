; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_verify_fw_version_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_verify_fw_version_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i64, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@IXGBE_ERR_EEPROM_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ixgbe_verify_fw_version_82599\00", align 1
@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_FW_PTR = common dso_local global i64 0, align 8
@IXGBE_ERROR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"eeprom read at offset %d failed\00", align 1
@IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR = common dso_local global i64 0, align 8
@IXGBE_FW_PATCH_VERSION_4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_verify_fw_version_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_verify_fw_version_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load i32, i32* @IXGBE_ERR_EEPROM_VERSION, align 4
  store i32 %8, i32* %4, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %17, i32* %4, align 4
  br label %98

18:                                               ; preds = %1
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64 (%struct.ixgbe_hw.0*, i64, i32*)*, i64 (%struct.ixgbe_hw.0*, i64, i32*)** %22, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = bitcast %struct.ixgbe_hw* %24 to %struct.ixgbe_hw.0*
  %26 = load i64, i64* @IXGBE_FW_PTR, align 8
  %27 = call i64 %23(%struct.ixgbe_hw.0* %25, i64 %26, i32* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %31 = load i64, i64* @IXGBE_FW_PTR, align 8
  %32 = call i32 @ERROR_REPORT2(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @IXGBE_ERR_EEPROM_VERSION, align 4
  store i32 %33, i32* %2, align 4
  br label %100

34:                                               ; preds = %18
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 65535
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34
  br label %98

41:                                               ; preds = %37
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64 (%struct.ixgbe_hw.0*, i64, i32*)*, i64 (%struct.ixgbe_hw.0*, i64, i32*)** %45, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = bitcast %struct.ixgbe_hw* %47 to %struct.ixgbe_hw.0*
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i64 %46(%struct.ixgbe_hw.0* %48, i64 %52, i32* %6)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %41
  %56 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @ERROR_REPORT2(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @IXGBE_ERR_EEPROM_VERSION, align 4
  store i32 %62, i32* %2, align 4
  br label %100

63:                                               ; preds = %41
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 65535
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %63
  br label %98

70:                                               ; preds = %66
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64 (%struct.ixgbe_hw.0*, i64, i32*)*, i64 (%struct.ixgbe_hw.0*, i64, i32*)** %74, align 8
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %77 = bitcast %struct.ixgbe_hw* %76 to %struct.ixgbe_hw.0*
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @IXGBE_FW_PATCH_VERSION_4, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i64 %75(%struct.ixgbe_hw.0* %77, i64 %81, i32* %7)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %70
  %85 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @IXGBE_FW_PATCH_VERSION_4, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @ERROR_REPORT2(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* @IXGBE_ERR_EEPROM_VERSION, align 4
  store i32 %91, i32* %2, align 4
  br label %100

92:                                               ; preds = %70
  %93 = load i32, i32* %7, align 4
  %94 = icmp sgt i32 %93, 5
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %92
  br label %98

98:                                               ; preds = %97, %69, %40, %16
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %84, %55, %29
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
