; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_device_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32 }
%struct.pvscsi_cmd_desc_reset_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Device reset for target %u\0A\00", align 1
@PVSCSI_CMD_RESET_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"device reset done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_softc*, i32)* @pvscsi_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_device_reset(%struct.pvscsi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.pvscsi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvscsi_cmd_desc_reset_device, align 4
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.pvscsi_cmd_desc_reset_device* %5, i32 0, i32 4)
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.pvscsi_cmd_desc_reset_device, %struct.pvscsi_cmd_desc_reset_device* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @device_printf(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %15 = load i32, i32* @PVSCSI_CMD_RESET_DEVICE, align 4
  %16 = call i32 @pvscsi_write_cmd(%struct.pvscsi_softc* %14, i32 %15, %struct.pvscsi_cmd_desc_reset_device* %5, i32 4)
  %17 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %18 = call i32 @pvscsi_process_cmp_ring(%struct.pvscsi_softc* %17)
  %19 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DEBUG_PRINTF(i32 2, i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(%struct.pvscsi_cmd_desc_reset_device*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pvscsi_write_cmd(%struct.pvscsi_softc*, i32, %struct.pvscsi_cmd_desc_reset_device*, i32) #1

declare dso_local i32 @pvscsi_process_cmp_ring(%struct.pvscsi_softc*) #1

declare dso_local i32 @DEBUG_PRINTF(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
