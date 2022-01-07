; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_fw_drv_ver_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_fw_drv_ver_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ixgbe_hic_drv_info = type { %struct.TYPE_6__, i64, i64, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"ixgbe_set_fw_drv_ver_generic\00", align 1
@FW_CEM_CMD_DRIVER_INFO = common dso_local global i32 0, align 4
@FW_CEM_CMD_DRIVER_INFO_LEN = common dso_local global i64 0, align 8
@FW_CEM_CMD_RESERVED = common dso_local global i32 0, align 4
@FW_CEM_HDR_LEN = common dso_local global i64 0, align 8
@FW_CEM_MAX_RETRIES = common dso_local global i32 0, align 4
@IXGBE_HI_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FW_CEM_RESP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_ERR_HOST_INTERFACE_COMMAND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_set_fw_drv_ver_generic(%struct.ixgbe_hw* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ixgbe_hic_drv_info, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %18 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %18, i64* %17, align 8
  %19 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %13, align 4
  %21 = load i8*, i8** %14, align 8
  %22 = call i32 @UNREFERENCED_2PARAMETER(i32 %20, i8* %21)
  %23 = load i32, i32* @FW_CEM_CMD_DRIVER_INFO, align 4
  %24 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* @FW_CEM_CMD_DRIVER_INFO_LEN, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @FW_CEM_CMD_RESERVED, align 4
  %30 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 7
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 6
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 5
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 4
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = bitcast %struct.ixgbe_hic_drv_info* %15 to i8**
  %52 = load i64, i64* @FW_CEM_HDR_LEN, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = call i64 @ixgbe_calculate_checksum(i8** %51, i64 %56)
  %58 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %86, %7
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @FW_CEM_MAX_RETRIES, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %66 = bitcast %struct.ixgbe_hic_drv_info* %15 to i32*
  %67 = load i32, i32* @IXGBE_HI_COMMAND_TIMEOUT, align 4
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i64 @ixgbe_host_interface_command(%struct.ixgbe_hw* %65, i32* %66, i32 96, i32 %67, i32 %68)
  store i64 %69, i64* %17, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* @IXGBE_SUCCESS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %86

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.ixgbe_hic_drv_info, %struct.ixgbe_hic_drv_info* %15, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FW_CEM_RESP_STATUS_SUCCESS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %82, i64* %17, align 8
  br label %85

83:                                               ; preds = %74
  %84 = load i64, i64* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 8
  store i64 %84, i64* %17, align 8
  br label %85

85:                                               ; preds = %83, %81
  br label %89

86:                                               ; preds = %73
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %60

89:                                               ; preds = %85, %60
  %90 = load i64, i64* %17, align 8
  ret i64 %90
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @UNREFERENCED_2PARAMETER(i32, i8*) #1

declare dso_local i64 @ixgbe_calculate_checksum(i8**, i64) #1

declare dso_local i64 @ixgbe_host_interface_command(%struct.ixgbe_hw*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
