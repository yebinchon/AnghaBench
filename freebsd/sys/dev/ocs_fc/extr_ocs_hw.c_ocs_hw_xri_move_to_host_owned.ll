; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_xri_move_to_host_owned.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_xri_move_to_host_owned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no buffer for command\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_cb_release_xri = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"release_xri failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_xri_move_to_host_owned(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %13 = load i32, i32* @OCS_M_NOWAIT, align 4
  %14 = call i32* @ocs_malloc(i32 %11, i32 %12, i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ocs_log_err(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %22, i64* %3, align 8
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @sli_cmd_release_xri(i32* %25, i32* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %23
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %35 = load i32, i32* @ocs_hw_cb_release_xri, align 4
  %36 = call i64 @ocs_hw_command(%struct.TYPE_4__* %32, i32* %33, i32 %34, i32 %35, i32* null)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ocs_log_err(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %31
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32*, i32** %6, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %59 = call i32 @ocs_free(i32 %56, i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %49, %46
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %60, %17
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i64 @sli_cmd_release_xri(i32*, i32*, i32, i32) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_4__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ocs_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
