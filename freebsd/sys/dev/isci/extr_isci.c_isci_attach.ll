; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_softc = type { i32 }

@g_isci = common dso_local global %struct.isci_softc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.isci_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.isci_softc* @DEVICE2SOFTC(i32 %6)
  store %struct.isci_softc* %7, %struct.isci_softc** %5, align 8
  %8 = load %struct.isci_softc*, %struct.isci_softc** %5, align 8
  store %struct.isci_softc* %8, %struct.isci_softc** @g_isci, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.isci_softc*, %struct.isci_softc** %5, align 8
  %11 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pci_enable_busmaster(i32 %12)
  %14 = load %struct.isci_softc*, %struct.isci_softc** %5, align 8
  %15 = call i32 @isci_allocate_pci_memory(%struct.isci_softc* %14)
  %16 = load %struct.isci_softc*, %struct.isci_softc** %5, align 8
  %17 = call i32 @isci_initialize(%struct.isci_softc* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @isci_detach(i32 %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.isci_softc*, %struct.isci_softc** %5, align 8
  %26 = call i32 @isci_interrupt_setup(%struct.isci_softc* %25)
  %27 = load %struct.isci_softc*, %struct.isci_softc** %5, align 8
  %28 = call i32 @isci_sysctl_initialize(%struct.isci_softc* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.isci_softc* @DEVICE2SOFTC(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @isci_allocate_pci_memory(%struct.isci_softc*) #1

declare dso_local i32 @isci_initialize(%struct.isci_softc*) #1

declare dso_local i32 @isci_detach(i32) #1

declare dso_local i32 @isci_interrupt_setup(%struct.isci_softc*) #1

declare dso_local i32 @isci_sysctl_initialize(%struct.isci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
