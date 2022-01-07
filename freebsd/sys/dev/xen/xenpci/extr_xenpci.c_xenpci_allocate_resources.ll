; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenpci/extr_xenpci.c_xenpci_allocate_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenpci/extr_xenpci.c_xenpci_allocate_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenpci_softc = type { i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"xenpci Could not allocate irq.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xenpci_allocate_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenpci_allocate_resources(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenpci_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.xenpci_softc* @device_get_softc(i32 %5)
  store %struct.xenpci_softc* %6, %struct.xenpci_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SYS_RES_IRQ, align 4
  %9 = load %struct.xenpci_softc*, %struct.xenpci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.xenpci_softc, %struct.xenpci_softc* %9, i32 0, i32 1
  %11 = load i32, i32* @RF_SHAREABLE, align 4
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = or i32 %11, %12
  %14 = call i32* @bus_alloc_resource_any(i32 %7, i32 %8, i32* %10, i32 %13)
  %15 = load %struct.xenpci_softc*, %struct.xenpci_softc** %4, align 8
  %16 = getelementptr inbounds %struct.xenpci_softc, %struct.xenpci_softc* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.xenpci_softc*, %struct.xenpci_softc** %4, align 8
  %18 = getelementptr inbounds %struct.xenpci_softc, %struct.xenpci_softc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @xenpci_deallocate_resources(i32 %25)
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.xenpci_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @xenpci_deallocate_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
