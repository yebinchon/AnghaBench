; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_send_rx_ctrl_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_send_rx_ctrl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.lio_soft_command = type { i32, %struct.lio_soft_command*, i32, i32, i64, i64 }
%struct.lio_rx_ctl_context = type { i64, i32 }
%union.octeon_cmd = type { i64 }
%struct.octeon_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@OCTEON_CMD_SIZE = common dso_local global i32 0, align 4
@LIO_CMD_RX_CTL = common dso_local global i32 0, align 4
@LIO_OPCODE_NIC = common dso_local global i32 0, align 4
@LIO_OPCODE_NIC_CMD = common dso_local global i32 0, align 4
@lio_rx_ctl_callback = common dso_local global i32 0, align 4
@LIO_IQ_SEND_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to send RX Control message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lio*, i32)* @lio_send_rx_ctrl_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_send_rx_ctrl_cmd(%struct.lio* %0, i32 %1) #0 {
  %3 = alloca %struct.lio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lio_soft_command*, align 8
  %6 = alloca %struct.lio_rx_ctl_context*, align 8
  %7 = alloca %union.octeon_cmd*, align 8
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.lio*, %struct.lio** %3, align 8
  %12 = getelementptr inbounds %struct.lio, %struct.lio* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.octeon_device*
  store %struct.octeon_device* %14, %struct.octeon_device** %8, align 8
  store i32 16, i32* %9, align 4
  %15 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %105

22:                                               ; preds = %2
  %23 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %24 = load i32, i32* @OCTEON_CMD_SIZE, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.lio_soft_command* @lio_alloc_soft_command(%struct.octeon_device* %23, i32 %24, i32 16, i32 %25)
  store %struct.lio_soft_command* %26, %struct.lio_soft_command** %5, align 8
  %27 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %28 = icmp eq %struct.lio_soft_command* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %105

30:                                               ; preds = %22
  %31 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %32 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %union.octeon_cmd*
  store %union.octeon_cmd* %34, %union.octeon_cmd** %7, align 8
  %35 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %36 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.lio_rx_ctl_context*
  store %struct.lio_rx_ctl_context* %38, %struct.lio_rx_ctl_context** %6, align 8
  %39 = load %struct.lio_rx_ctl_context*, %struct.lio_rx_ctl_context** %6, align 8
  %40 = getelementptr inbounds %struct.lio_rx_ctl_context, %struct.lio_rx_ctl_context* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %42 = call i32 @lio_get_device_id(%struct.octeon_device* %41)
  %43 = load %struct.lio_rx_ctl_context*, %struct.lio_rx_ctl_context** %6, align 8
  %44 = getelementptr inbounds %struct.lio_rx_ctl_context, %struct.lio_rx_ctl_context* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %union.octeon_cmd*, %union.octeon_cmd** %7, align 8
  %46 = bitcast %union.octeon_cmd* %45 to i64*
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @LIO_CMD_RX_CTL, align 4
  %48 = load %union.octeon_cmd*, %union.octeon_cmd** %7, align 8
  %49 = bitcast %union.octeon_cmd* %48 to %struct.TYPE_6__*
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %union.octeon_cmd*, %union.octeon_cmd** %7, align 8
  %53 = bitcast %union.octeon_cmd* %52 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %union.octeon_cmd*, %union.octeon_cmd** %7, align 8
  %56 = bitcast %union.octeon_cmd* %55 to i32*
  %57 = load i32, i32* @OCTEON_CMD_SIZE, align 4
  %58 = ashr i32 %57, 3
  %59 = call i32 @lio_swap_8B_data(i32* %56, i32 %58)
  %60 = load %struct.lio*, %struct.lio** %3, align 8
  %61 = getelementptr inbounds %struct.lio, %struct.lio* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %69 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %71 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %72 = load i32, i32* @LIO_OPCODE_NIC, align 4
  %73 = load i32, i32* @LIO_OPCODE_NIC_CMD, align 4
  %74 = call i32 @lio_prepare_soft_command(%struct.octeon_device* %70, %struct.lio_soft_command* %71, i32 %72, i32 %73, i32 0, i32 0, i32 0)
  %75 = load i32, i32* @lio_rx_ctl_callback, align 4
  %76 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %77 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %79 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %80 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %79, i32 0, i32 1
  store %struct.lio_soft_command* %78, %struct.lio_soft_command** %80, align 8
  %81 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %82 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %81, i32 0, i32 0
  store i32 5000, i32* %82, align 8
  %83 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %84 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %85 = call i32 @lio_send_soft_command(%struct.octeon_device* %83, %struct.lio_soft_command* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @LIO_IQ_SEND_FAILED, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %30
  %90 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %91 = call i32 @lio_dev_err(%struct.octeon_device* %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %101

92:                                               ; preds = %30
  %93 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %94 = load %struct.lio_rx_ctl_context*, %struct.lio_rx_ctl_context** %6, align 8
  %95 = getelementptr inbounds %struct.lio_rx_ctl_context, %struct.lio_rx_ctl_context* %94, i32 0, i32 0
  %96 = call i32 @lio_sleep_cond(%struct.octeon_device* %93, i64* %95)
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %99 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %92, %89
  %102 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %103 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %104 = call i32 @lio_free_soft_command(%struct.octeon_device* %102, %struct.lio_soft_command* %103)
  br label %105

105:                                              ; preds = %101, %29, %21
  ret void
}

declare dso_local %struct.lio_soft_command* @lio_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @lio_get_device_id(%struct.octeon_device*) #1

declare dso_local i32 @lio_swap_8B_data(i32*, i32) #1

declare dso_local i32 @lio_prepare_soft_command(%struct.octeon_device*, %struct.lio_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lio_send_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

declare dso_local i32 @lio_sleep_cond(%struct.octeon_device*, i64*) #1

declare dso_local i32 @lio_free_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
