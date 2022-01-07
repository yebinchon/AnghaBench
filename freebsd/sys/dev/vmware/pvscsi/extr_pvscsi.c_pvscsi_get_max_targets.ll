; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_get_max_targets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_get_max_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32 }

@PVSCSI_CMD_GET_MAX_TARGETS = common dso_local global i32 0, align 4
@PVSCSI_REG_OFFSET_COMMAND_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_softc*)* @pvscsi_get_max_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_get_max_targets(%struct.pvscsi_softc* %0) #0 {
  %2 = alloca %struct.pvscsi_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %2, align 8
  %4 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %5 = load i32, i32* @PVSCSI_CMD_GET_MAX_TARGETS, align 4
  %6 = call i32 @pvscsi_write_cmd(%struct.pvscsi_softc* %4, i32 %5, i32* null, i32 0)
  %7 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %8 = load i32, i32* @PVSCSI_REG_OFFSET_COMMAND_STATUS, align 4
  %9 = call i32 @pvscsi_reg_read(%struct.pvscsi_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 16, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @pvscsi_write_cmd(%struct.pvscsi_softc*, i32, i32*, i32) #1

declare dso_local i32 @pvscsi_reg_read(%struct.pvscsi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
