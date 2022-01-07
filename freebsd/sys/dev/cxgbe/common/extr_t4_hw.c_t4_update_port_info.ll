; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_update_port_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_update_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.fw_port_cmd = type { i8*, i8* }

@FW_PORT_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_READ = common dso_local global i32 0, align 4
@FW_PORT_ACTION_GET_PORT_INFO32 = common dso_local global i32 0, align 4
@FW_PORT_ACTION_GET_PORT_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_update_port_info(%struct.port_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port_info*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.fw_port_cmd, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.port_info* %0, %struct.port_info** %3, align 8
  %8 = load %struct.port_info*, %struct.port_info** %3, align 8
  %9 = getelementptr inbounds %struct.port_info, %struct.port_info* %8, i32 0, i32 1
  %10 = load %struct.adapter*, %struct.adapter** %9, align 8
  store %struct.adapter* %10, %struct.adapter** %4, align 8
  %11 = call i32 @memset(%struct.fw_port_cmd* %5, i32 0, i32 16)
  %12 = load i32, i32* @FW_PORT_CMD, align 4
  %13 = call i32 @V_FW_CMD_OP(i32 %12)
  %14 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @F_FW_CMD_READ, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.port_info*, %struct.port_info** %3, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @V_FW_PORT_CMD_PORTID(i32 %20)
  %22 = or i32 %17, %21
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %5, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @FW_PORT_ACTION_GET_PORT_INFO32, align 4
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @FW_PORT_ACTION_GET_PORT_INFO, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @V_FW_PORT_CMD_ACTION(i32 %36)
  %38 = bitcast %struct.fw_port_cmd* %5 to { i8*, i8* }*
  %39 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %38, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @FW_LEN16(i8* %40, i8* %42)
  %44 = or i32 %37, %43
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %5, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = load %struct.adapter*, %struct.adapter** %4, align 8
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @t4_wr_mbox_ns(%struct.adapter* %47, i32 %50, %struct.fw_port_cmd* %5, i32 16, %struct.fw_port_cmd* %5)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %34
  %57 = load %struct.port_info*, %struct.port_info** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @handle_port_info(%struct.port_info* %57, %struct.fw_port_cmd* %5, i32 %58, i32* null, i32* null)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %54
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @memset(%struct.fw_port_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @V_FW_PORT_CMD_PORTID(i32) #1

declare dso_local i32 @V_FW_PORT_CMD_ACTION(i32) #1

declare dso_local i32 @FW_LEN16(i8*, i8*) #1

declare dso_local i32 @t4_wr_mbox_ns(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, %struct.fw_port_cmd*) #1

declare dso_local i32 @handle_port_info(%struct.port_info*, %struct.fw_port_cmd*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
