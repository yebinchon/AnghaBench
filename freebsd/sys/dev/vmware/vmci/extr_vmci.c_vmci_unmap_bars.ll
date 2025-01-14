; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_unmap_bars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_unmap_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_softc = type { i32*, i32, i32* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmci_softc*)* @vmci_unmap_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_unmap_bars(%struct.vmci_softc* %0) #0 {
  %2 = alloca %struct.vmci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vmci_softc* %0, %struct.vmci_softc** %2, align 8
  %4 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = call i32 @PCIR_BAR(i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SYS_RES_IOPORT, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @bus_release_resource(i32 %12, i32 %13, i32 %14, i32* %17)
  %19 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %20 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %8, %1
  %22 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %23 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = call i32 @PCIR_BAR(i32 1)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %29 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SYS_RES_MEMORY, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %34 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 %32, i32* %35)
  %37 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %38 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
