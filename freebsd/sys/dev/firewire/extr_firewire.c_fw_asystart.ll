; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_asystart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_asystart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { %struct.TYPE_2__*, i32*, i32, %struct.firewire_comm* }
%struct.TYPE_2__ = type { i32 (%struct.firewire_comm*)*, i32, i32 }
%struct.firewire_comm = type { i32 }

@FWXF_INQ = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_xfer*)* @fw_asystart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_asystart(%struct.fw_xfer* %0) #0 {
  %2 = alloca %struct.fw_xfer*, align 8
  %3 = alloca %struct.firewire_comm*, align 8
  store %struct.fw_xfer* %0, %struct.fw_xfer** %2, align 8
  %4 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %5 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %4, i32 0, i32 3
  %6 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  store %struct.firewire_comm* %6, %struct.firewire_comm** %3, align 8
  %7 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %8 = call i32 @FW_GLOCK(%struct.firewire_comm* %7)
  %9 = load i32, i32* @FWXF_INQ, align 4
  %10 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %11 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %13 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %17 = load i32, i32* @link, align 4
  %18 = call i32 @STAILQ_INSERT_TAIL(i32* %15, %struct.fw_xfer* %16, i32 %17)
  %19 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %20 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %19)
  %21 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %22 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %27 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.firewire_comm*)*, i32 (%struct.firewire_comm*)** %29, align 8
  %31 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %32 = call i32 %30(%struct.firewire_comm* %31)
  br label %33

33:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @FW_GLOCK(%struct.firewire_comm*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_xfer*, i32) #1

declare dso_local i32 @FW_GUNLOCK(%struct.firewire_comm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
