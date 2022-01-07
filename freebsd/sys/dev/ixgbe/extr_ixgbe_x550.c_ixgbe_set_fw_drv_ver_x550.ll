; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_set_fw_drv_ver_x550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_set_fw_drv_ver_x550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ixgbe_hic_drv_info2 = type { %struct.TYPE_6__, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"ixgbe_set_fw_drv_ver_x550\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
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
define dso_local i64 @ixgbe_set_fw_drv_ver_x550(%struct.ixgbe_hw* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ixgbe_hic_drv_info2, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %19 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %19, i64* %17, align 8
  %20 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %7
  %24 = load i8*, i8** %15, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %28, 4
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %23, %7
  %31 = load i64, i64* @IXGBE_ERR_INVALID_ARGUMENT, align 8
  store i64 %31, i64* %8, align 8
  br label %107

32:                                               ; preds = %26
  %33 = load i32, i32* @FW_CEM_CMD_DRIVER_INFO, align 4
  %34 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* @FW_CEM_CMD_DRIVER_INFO_LEN, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @FW_CEM_CMD_RESERVED, align 4
  %43 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %47 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 6
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 5
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 4
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 3
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @memcpy(i32 %63, i8* %64, i32 %65)
  %67 = bitcast %struct.ixgbe_hic_drv_info2* %16 to i8**
  %68 = load i64, i64* @FW_CEM_HDR_LEN, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = call i64 @ixgbe_calculate_checksum(i8** %67, i64 %72)
  %74 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  store i32 0, i32* %18, align 4
  br label %76

76:                                               ; preds = %102, %32
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* @FW_CEM_MAX_RETRIES, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %76
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %82 = bitcast %struct.ixgbe_hic_drv_info2* %16 to i32*
  %83 = load i32, i32* @IXGBE_HI_COMMAND_TIMEOUT, align 4
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i64 @ixgbe_host_interface_command(%struct.ixgbe_hw* %81, i32* %82, i32 88, i32 %83, i32 %84)
  store i64 %85, i64* %17, align 8
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* @IXGBE_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %102

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @FW_CEM_RESP_STATUS_SUCCESS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %98, i64* %17, align 8
  br label %101

99:                                               ; preds = %90
  %100 = load i64, i64* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 8
  store i64 %100, i64* %17, align 8
  br label %101

101:                                              ; preds = %99, %97
  br label %105

102:                                              ; preds = %89
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %18, align 4
  br label %76

105:                                              ; preds = %101, %76
  %106 = load i64, i64* %17, align 8
  store i64 %106, i64* %8, align 8
  br label %107

107:                                              ; preds = %105, %30
  %108 = load i64, i64* %8, align 8
  ret i64 %108
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @ixgbe_calculate_checksum(i8**, i64) #1

declare dso_local i64 @ixgbe_host_interface_command(%struct.ixgbe_hw*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
