; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_eth_license.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_eth_license.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@OCS_HW_DMTF_CLP_CMD_MAX = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Function only supported for I/F type 2\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"set / OEMELX_Ethernet_License=%X\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i32 0, align 4
@OCS_HW_DMTF_CLP_RSP_MAX = common dso_local global i64 0, align 8
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"CLP cmd=\22%s\22 failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @ocs_hw_set_eth_license to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_set_eth_license(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @OCS_HW_DMTF_CLP_CMD_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = call i64 @sli_get_if_type(i32* %19)
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ocs_log_test(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %95

28:                                               ; preds = %2
  %29 = load i32, i32* @OCS_HW_DMTF_CLP_CMD_MAX, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ocs_snprintf(i8* %16, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ocs_strlen(i8* %16)
  %36 = add nsw i64 %35, 1
  %37 = call i64 @ocs_dma_alloc(i32 %34, %struct.TYPE_10__* %9, i64 %36, i32 4096)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @OCS_HW_RTN_NO_MEMORY, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %95

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @ocs_strlen(i8* %16)
  %49 = add nsw i64 %48, 1
  %50 = call i32 @ocs_memset(i64 %47, i32 0, i64 %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @ocs_strlen(i8* %16)
  %54 = call i32 @ocs_memcpy(i64 %52, i8* %16, i64 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* @OCS_HW_DMTF_CLP_RSP_MAX, align 8
  %59 = call i64 @ocs_dma_alloc(i32 %57, %struct.TYPE_10__* %10, i64 %58, i32 4096)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %45
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ocs_dma_free(i32 %68, %struct.TYPE_10__* %9)
  %70 = load i32, i32* @OCS_HW_RTN_NO_MEMORY, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %95

71:                                               ; preds = %45
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = load i32, i32* @OCS_CMD_POLL, align 4
  %74 = call i64 @ocs_hw_exec_dmtf_clp_cmd(%struct.TYPE_9__* %72, %struct.TYPE_10__* %9, %struct.TYPE_10__* %10, i32 %73, i32* null, i32* null)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %76, %71
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ocs_dma_free(i32 %88, %struct.TYPE_10__* %9)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ocs_dma_free(i32 %92, %struct.TYPE_10__* %10)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %95

95:                                               ; preds = %85, %61, %39, %22
  %96 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sli_get_if_type(i32*) #2

declare dso_local i32 @ocs_log_test(i32, i8*) #2

declare dso_local i32 @ocs_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @ocs_dma_alloc(i32, %struct.TYPE_10__*, i64, i32) #2

declare dso_local i64 @ocs_strlen(i8*) #2

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #2

declare dso_local i32 @ocs_memset(i64, i32, i64) #2

declare dso_local i32 @ocs_memcpy(i64, i8*, i64) #2

declare dso_local i32 @ocs_dma_free(i32, %struct.TYPE_10__*) #2

declare dso_local i64 @ocs_hw_exec_dmtf_clp_cmd(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
