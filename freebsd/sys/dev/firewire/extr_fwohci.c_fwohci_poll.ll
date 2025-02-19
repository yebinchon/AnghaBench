; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i32 }
%struct.fwohci_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fwohci_poll(%struct.firewire_comm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.firewire_comm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fwohci_softc*, align 8
  store %struct.firewire_comm* %0, %struct.firewire_comm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %9 = bitcast %struct.firewire_comm* %8 to %struct.fwohci_softc*
  store %struct.fwohci_softc* %9, %struct.fwohci_softc** %7, align 8
  %10 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %11 = call i32 @FW_GLOCK(%struct.firewire_comm* %10)
  %12 = load %struct.fwohci_softc*, %struct.fwohci_softc** %7, align 8
  %13 = call i32 @fwohci_check_stat(%struct.fwohci_softc* %12)
  %14 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %15 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %14)
  ret void
}

declare dso_local i32 @FW_GLOCK(%struct.firewire_comm*) #1

declare dso_local i32 @fwohci_check_stat(%struct.fwohci_softc*) #1

declare dso_local i32 @FW_GUNLOCK(%struct.firewire_comm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
