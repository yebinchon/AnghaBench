; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_dif_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_dif_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_HW_DIF_MODE_INLINE = common dso_local global i64 0, align 8
@SLI4_SET_FEATURES_DIF_MEMORY_MODE = common dso_local global i32 0, align 4
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ocs_hw_command returns %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"DIF mode set to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"sli_cmd_common_set_features failed\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @ocs_hw_set_dif_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_set_dif_mode(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = call i32 @ocs_memset(%struct.TYPE_8__* %6, i32 0, i32 4)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OCS_HW_DIF_MODE_INLINE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %25 = load i32, i32* @SLI4_SET_FEATURES_DIF_MEMORY_MODE, align 4
  %26 = bitcast %struct.TYPE_8__* %6 to i32*
  %27 = call i64 @sli_cmd_common_set_features(i32* %23, i32* %11, i32 %24, i32 %25, i32 4, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = load i32, i32* @OCS_CMD_POLL, align 4
  %32 = call i64 @ocs_hw_command(%struct.TYPE_9__* %30, i32* %11, i32 %31, i32* null, i32* null)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %54

41:                                               ; preds = %29
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @OCS_HW_DIF_MODE_INLINE, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %53 = call i32 @ocs_log_test(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %41, %35
  br label %61

55:                                               ; preds = %1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %55, %54
  %62 = load i64, i64* %3, align 8
  %63 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %63)
  ret i64 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ocs_memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i64 @sli_cmd_common_set_features(i32*, i32*, i32, i32, i32, i32*) #2

declare dso_local i64 @ocs_hw_command(%struct.TYPE_9__*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #2

declare dso_local i32 @ocs_log_test(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
