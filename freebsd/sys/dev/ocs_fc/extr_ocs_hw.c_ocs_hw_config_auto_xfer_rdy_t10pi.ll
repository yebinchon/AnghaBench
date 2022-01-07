; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_config_auto_xfer_rdy_t10pi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_config_auto_xfer_rdy_t10pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@OCS_HW_DIF_MODE_INLINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"unsupported p_type %d\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@SLI4_SET_FEATURES_SET_CONFIG_AUTO_XFER_RDY_T10PI = common dso_local global i32 0, align 4
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ocs_hw_command returns %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Auto XFER RDY T10 PI configured rtc:%d atv:%d p_type:%d app_tag:%x blk_size:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @ocs_hw_config_auto_xfer_rdy_t10pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_config_auto_xfer_rdy_t10pi(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %8, i32* %6, align 4
  %9 = call i32 @ocs_memset(%struct.TYPE_9__* %7, i32 0, i32 24)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OCS_HW_DIF_MODE_INLINE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %53 [
    i32 1, label %49
    i32 3, label %51
  ]

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i32 0, i32* %50, align 4
  br label %63

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i32 2, i32* %52, align 4
  br label %63

53:                                               ; preds = %2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ocs_log_err(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %62, i32* %3, align 4
  br label %99

63:                                               ; preds = %51, %49
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %68 = load i32, i32* @SLI4_SET_FEATURES_SET_CONFIG_AUTO_XFER_RDY_T10PI, align 4
  %69 = call i32 @sli_cmd_common_set_features(i32* %65, i32* %66, i32 %67, i32 %68, i32 24, %struct.TYPE_9__* %7)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @OCS_CMD_POLL, align 4
  %73 = call i32 @ocs_hw_command(%struct.TYPE_10__* %70, i32* %71, i32 %72, i32* null, i32* null)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %63
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @ocs_log_err(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %97

82:                                               ; preds = %63
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ocs_log_test(i32 %85, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %89, i32 %91, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %82, %76
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %53
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @ocs_memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*, i32) #1

declare dso_local i32 @sli_cmd_common_set_features(i32*, i32*, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ocs_hw_command(%struct.TYPE_10__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
