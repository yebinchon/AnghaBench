; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_map_pci_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_map_pci_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_softc = type { i32*, i32, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to allocate pci resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioat_softc*)* @ioat_map_pci_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_map_pci_bar(%struct.ioat_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioat_softc*, align 8
  store %struct.ioat_softc* %0, %struct.ioat_softc** %3, align 8
  %4 = call i32 @PCIR_BAR(i32 0)
  %5 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %5, i32 0, i32 3
  store i32 %4, i32* %6, align 8
  %7 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SYS_RES_MEMORY, align 4
  %11 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %11, i32 0, i32 3
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i32* @bus_alloc_resource_any(i32 %9, i32 %10, i32* %12, i32 %13)
  %15 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = call i32 @ioat_log_message(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  store i32 %23, i32* %2, align 4
  br label %37

24:                                               ; preds = %1
  %25 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @rman_get_bustag(i32* %27)
  %29 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @rman_get_bushandle(i32* %33)
  %35 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @ioat_log_message(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
