; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_pci_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_pci_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psycho_softc = type { i64, i32 }

@PCR_AFA = common dso_local global i32 0, align 4
@PCR_AFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: PCI bus %c error AFAR %#lx AFSR %#lx\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @psycho_pci_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psycho_pci_bus(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.psycho_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.psycho_softc*
  store %struct.psycho_softc* %7, %struct.psycho_softc** %3, align 8
  %8 = load %struct.psycho_softc*, %struct.psycho_softc** %3, align 8
  %9 = load i32, i32* @PCR_AFA, align 4
  %10 = call i64 @PCICTL_READ8(%struct.psycho_softc* %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.psycho_softc*, %struct.psycho_softc** %3, align 8
  %12 = load i32, i32* @PCR_AFS, align 4
  %13 = call i64 @PCICTL_READ8(%struct.psycho_softc* %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.psycho_softc*, %struct.psycho_softc** %3, align 8
  %15 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_get_nameunit(i32 %16)
  %18 = load %struct.psycho_softc*, %struct.psycho_softc** %3, align 8
  %19 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 65, %20
  %22 = load i64, i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %5, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %21, i32 %23, i32 %25)
  %27 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %27
}

declare dso_local i64 @PCICTL_READ8(%struct.psycho_softc*, i32) #1

declare dso_local i32 @panic(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
