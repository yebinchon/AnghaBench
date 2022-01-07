; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_setup_req_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_setup_req_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32 }
%struct.pvscsi_cmd_desc_setup_req_call = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"pvscsi_use_req_call_threshold\00", align 1
@pvscsi_use_req_call_threshold = common dso_local global i32 0, align 4
@PVSCSI_REG_OFFSET_COMMAND = common dso_local global i32 0, align 4
@PVSCSI_CMD_SETUP_REQCALLTHRESHOLD = common dso_local global i32 0, align 4
@PVSCSI_REG_OFFSET_COMMAND_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_softc*, i32)* @pvscsi_setup_req_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_setup_req_call(%struct.pvscsi_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvscsi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvscsi_cmd_desc_setup_req_call, align 4
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %9 = load i32, i32* @pvscsi_use_req_call_threshold, align 4
  %10 = call i32 @pvscsi_get_tunable(%struct.pvscsi_softc* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %15 = load i32, i32* @PVSCSI_REG_OFFSET_COMMAND, align 4
  %16 = load i32, i32* @PVSCSI_CMD_SETUP_REQCALLTHRESHOLD, align 4
  %17 = call i32 @pvscsi_reg_write(%struct.pvscsi_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %19 = load i32, i32* @PVSCSI_REG_OFFSET_COMMAND_STATUS, align 4
  %20 = call i32 @pvscsi_reg_read(%struct.pvscsi_softc* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = call i32 @bzero(%struct.pvscsi_cmd_desc_setup_req_call* %7, i32 4)
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.pvscsi_cmd_desc_setup_req_call, %struct.pvscsi_cmd_desc_setup_req_call* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %28 = load i32, i32* @PVSCSI_CMD_SETUP_REQCALLTHRESHOLD, align 4
  %29 = call i32 @pvscsi_write_cmd(%struct.pvscsi_softc* %27, i32 %28, %struct.pvscsi_cmd_desc_setup_req_call* %7, i32 4)
  %30 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %31 = load i32, i32* @PVSCSI_REG_OFFSET_COMMAND_STATUS, align 4
  %32 = call i32 @pvscsi_reg_read(%struct.pvscsi_softc* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %23, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @pvscsi_get_tunable(%struct.pvscsi_softc*, i8*, i32) #1

declare dso_local i32 @pvscsi_reg_write(%struct.pvscsi_softc*, i32, i32) #1

declare dso_local i32 @pvscsi_reg_read(%struct.pvscsi_softc*, i32) #1

declare dso_local i32 @bzero(%struct.pvscsi_cmd_desc_setup_req_call*, i32) #1

declare dso_local i32 @pvscsi_write_cmd(%struct.pvscsi_softc*, i32, %struct.pvscsi_cmd_desc_setup_req_call*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
