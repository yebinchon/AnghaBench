; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_cfg_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_cfg_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcib_softc = type { i32 }

@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@WIN_IO = common dso_local global i32 0, align 4
@WIN_MEM = common dso_local global i32 0, align 4
@WIN_PMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcib_softc*)* @pcib_cfg_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcib_cfg_restore(%struct.pcib_softc* %0) #0 {
  %2 = alloca %struct.pcib_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.pcib_softc* %0, %struct.pcib_softc** %2, align 8
  %4 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %5 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PCIR_COMMAND, align 4
  %8 = call i32 @pci_read_config(i32 %6, i32 %7, i32 2)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %15 = call i32 @pcib_set_io_decode(%struct.pcib_softc* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %23 = call i32 @pcib_set_mem_decode(%struct.pcib_softc* %22)
  br label %24

24:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pcib_set_io_decode(%struct.pcib_softc*) #1

declare dso_local i32 @pcib_set_mem_decode(%struct.pcib_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
