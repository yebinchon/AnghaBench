; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_ocs_hw_rqpair_auto_xfer_rdy_move_to_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_ocs_hw_rqpair_auto_xfer_rdy_move_to_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no buffer for command\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i32 0, align 4
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_rqpair_auto_xfer_rdy_move_to_port_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"SGL post failed\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_rqpair_auto_xfer_rdy_move_to_port(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = call i32 @sli_get_sgl_preregister(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %62, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i32* %15, i32** %7, align 8
  store i32** %7, i32*** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %20 = load i32, i32* @OCS_M_NOWAIT, align 4
  %21 = call i32* @ocs_malloc(i32 %18, i32 %19, i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ocs_log_err(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @OCS_HW_RTN_NO_MEMORY, align 4
  store i32 %29, i32* %3, align 4
  br label %80

30:                                               ; preds = %13
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32**, i32*** %8, align 8
  %39 = call i64 @sli_cmd_fcoe_post_sgl_pages(i32* %32, i32* %33, i32 %34, i32 %37, i32 1, i32** %38, i32* null, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %30
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %45 = load i32, i32* @ocs_hw_rqpair_auto_xfer_rdy_move_to_port_cb, align 4
  %46 = call i64 @ocs_hw_command(%struct.TYPE_8__* %42, i32* %43, i32 %44, i32 %45, i32* null)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %54 = call i32 @ocs_free(i32 %51, i32* %52, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ocs_log_err(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %59, i32* %3, align 4
  br label %80

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60, %30
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = call i32 @ocs_lock(i32* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = call i64 @ocs_hw_rqpair_auto_xfer_rdy_buffer_post(%struct.TYPE_8__* %66, %struct.TYPE_9__* %67, i32 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @ocs_unlock(i32* %72)
  %74 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %74, i32* %3, align 4
  br label %80

75:                                               ; preds = %62
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call i32 @ocs_unlock(i32* %77)
  %79 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %70, %48, %24
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @sli_get_sgl_preregister(i32*) #1

declare dso_local i32* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i64 @sli_cmd_fcoe_post_sgl_pages(i32*, i32*, i32, i32, i32, i32**, i32*, i32*) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_8__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ocs_free(i32, i32*, i32) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i64 @ocs_hw_rqpair_auto_xfer_rdy_buffer_post(%struct.TYPE_8__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @ocs_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
