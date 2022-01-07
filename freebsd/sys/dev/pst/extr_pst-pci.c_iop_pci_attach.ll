; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-pci.c_iop_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-pci.c_iop_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { i32, i32, i64, %struct.i2o_registers*, i8*, i8* }
%struct.i2o_registers = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pst lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iop_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.iop_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.iop_softc* @device_get_softc(i32 %6)
  store %struct.iop_softc* %7, %struct.iop_softc** %4, align 8
  %8 = call i32 @PCIR_BAR(i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SYS_RES_MEMORY, align 4
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = call i8* @bus_alloc_resource_any(i32 %9, i32 %10, i32* %5, i32 %11)
  %13 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %14 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %16 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %15, i32 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %58

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SYS_RES_IRQ, align 4
  %24 = load i32, i32* @RF_SHAREABLE, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @bus_alloc_resource_any(i32 %22, i32 %23, i32* %5, i32 %26)
  %28 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %29 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @pci_enable_busmaster(i32 %30)
  %32 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %33 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @rman_get_virtual(i8* %34)
  %36 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %37 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %39 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.i2o_registers*
  %42 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %43 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %42, i32 0, i32 3
  store %struct.i2o_registers* %41, %struct.i2o_registers** %43, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %46 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %48 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %47, i32 0, i32 0
  %49 = load i32, i32* @MTX_DEF, align 4
  %50 = call i32 @mtx_init(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %49)
  %51 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %52 = call i32 @iop_init(%struct.iop_softc* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %58

55:                                               ; preds = %21
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @bus_generic_attach(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %54, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.iop_softc* @device_get_softc(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i64 @rman_get_virtual(i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @iop_init(%struct.iop_softc*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
