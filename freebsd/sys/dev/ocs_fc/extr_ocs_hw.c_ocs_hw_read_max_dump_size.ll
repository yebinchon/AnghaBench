; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_read_max_dump_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_read_max_dump_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Function only supported for I/F type 2\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"FW version is too old for this feature\0A\00", align 1
@sli4_cmd_sli_config_t = common dso_local global i32 0, align 4
@payload = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"set dump location command failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Dump size %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @ocs_hw_read_max_dump_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_read_max_dump_size(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %12 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = call i64 @sli_get_if_type(i32* %18)
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %88

27:                                               ; preds = %1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ocs_log_test(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %88

39:                                               ; preds = %27
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ocs_get_bus_dev_func(i32 %42, i64* %6, i64* %7, i64* %8)
  %44 = load i64, i64* %8, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %50 = call i64 @sli_cmd_common_set_dump_location(i32* %48, i64* %15, i32 %49, i32 1, i32 0, i32* null, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %46
  %53 = load i32, i32* @sli4_cmd_sli_config_t, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @payload, i32 0, i32 0), align 4
  %55 = call i32 @offsetof(i32 %53, i32 %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %15, i64 %56
  %58 = bitcast i64* %57 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %11, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = load i32, i32* @OCS_CMD_POLL, align 4
  %61 = call i32 @ocs_hw_command(%struct.TYPE_9__* %59, i64* %15, i32 %60, i32* null, i32* null)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ocs_log_test(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %88

71:                                               ; preds = %52
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %46
  br label %86

86:                                               ; preds = %85, %39
  %87 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %87, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %65, %33, %21
  %89 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sli_get_if_type(i32*) #2

declare dso_local i32 @ocs_log_debug(i32, i8*, ...) #2

declare dso_local i32 @ocs_log_test(i32, i8*) #2

declare dso_local i32 @ocs_get_bus_dev_func(i32, i64*, i64*, i64*) #2

declare dso_local i64 @sli_cmd_common_set_dump_location(i32*, i64*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @offsetof(i32, i32) #2

declare dso_local i32 @ocs_hw_command(%struct.TYPE_9__*, i64*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
