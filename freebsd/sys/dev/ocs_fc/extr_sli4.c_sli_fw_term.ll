; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fw_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fw_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_BE3_SKH_VF = common dso_local global i64 0, align 8
@SLI4_BMBX_DELAY_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"bootstrap mailbox not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"bad COM_FUNC_RESET write\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"bootstrap mailbox write fail (FW_DEINIT)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"bad FW_DEINIT write\0A\00", align 1
@SLI4_SLIPORT_CONTROL_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@SLI4_SLIPORT_CONTROL_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @sli_fw_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sli_fw_term(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_VF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = load i32, i32* @SLI4_BMBX_DELAY_US, align 4
  %19 = call i64 @sli_bmbx_wait(%struct.TYPE_10__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ocs_log_crit(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %66

26:                                               ; preds = %16
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = call i64 @sli_common_function_reset(%struct.TYPE_10__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ocs_log_err(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %66

35:                                               ; preds = %26
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %42 = call i64 @sli_cmd_fw_deinitialize(%struct.TYPE_10__* %36, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = call i64 @sli_bmbx_command(%struct.TYPE_10__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ocs_log_crit(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %66

53:                                               ; preds = %44
  br label %59

54:                                               ; preds = %35
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ocs_log_test(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %66

59:                                               ; preds = %53
  br label %65

60:                                               ; preds = %10
  %61 = load i32, i32* @SLI4_SLIPORT_CONTROL_LITTLE_ENDIAN, align 4
  store i32 %61, i32* %4, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @sli_sliport_control(%struct.TYPE_10__* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %59
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %54, %48, %30, %21
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @sli_bmbx_wait(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ocs_log_crit(i32, i8*) #1

declare dso_local i64 @sli_common_function_reset(%struct.TYPE_10__*) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i64 @sli_cmd_fw_deinitialize(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @sli_bmbx_command(%struct.TYPE_10__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

declare dso_local i32 @sli_sliport_control(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
