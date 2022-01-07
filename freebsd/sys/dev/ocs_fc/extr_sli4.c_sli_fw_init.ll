; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@SLI4_FW_READY_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"FW status is NOT ready\0A\00", align 1
@SLI4_BMBX_DELAY_US = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"bootstrap mailbox not ready\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"bootstrap mailbox write fail (FW_INIT)\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bad FW_INIT write\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"bad COM_FUNC_RESET write\0A\00", align 1
@SLI4_SLIPORT_CONTROL_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"if_type %d not supported\0A\00", align 1
@SLI4_SLIPORT_CONTROL_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @sli_fw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sli_fw_init(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = load i32, i32* @SLI4_FW_READY_TIMEOUT_MSEC, align 4
  %8 = call i32 @sli_wait_for_fw_ready(%struct.TYPE_11__* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ocs_log_crit(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %81

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %72 [
    i32 130, label %20
    i32 129, label %20
    i32 128, label %64
  ]

20:                                               ; preds = %16, %16
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = load i32, i32* @SLI4_BMBX_DELAY_US, align 4
  %23 = call i32 @sli_bmbx_wait(%struct.TYPE_11__* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ocs_log_crit(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %81

30:                                               ; preds = %20
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %37 = call i32 @sli_cmd_fw_initialize(%struct.TYPE_11__* %31, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = call i32 @sli_bmbx_command(%struct.TYPE_11__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ocs_log_crit(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %81

48:                                               ; preds = %39
  br label %54

49:                                               ; preds = %30
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ocs_log_crit(i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %81

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = call i32 @sli_common_function_reset(%struct.TYPE_11__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ocs_log_err(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %81

63:                                               ; preds = %54
  br label %80

64:                                               ; preds = %16
  %65 = load i32, i32* @SLI4_SLIPORT_CONTROL_LITTLE_ENDIAN, align 4
  store i32 %65, i32* %5, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @sli_sliport_control(%struct.TYPE_11__* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 -1, i32* %2, align 4
  br label %81

71:                                               ; preds = %64
  br label %80

72:                                               ; preds = %16
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ocs_log_test(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  store i32 -1, i32* %2, align 4
  br label %81

80:                                               ; preds = %71, %63
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %72, %70, %58, %49, %43, %25, %11
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @sli_wait_for_fw_ready(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ocs_log_crit(i32, i8*) #1

declare dso_local i32 @sli_bmbx_wait(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sli_cmd_fw_initialize(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @sli_bmbx_command(%struct.TYPE_11__*) #1

declare dso_local i32 @sli_common_function_reset(%struct.TYPE_11__*) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @sli_sliport_control(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
