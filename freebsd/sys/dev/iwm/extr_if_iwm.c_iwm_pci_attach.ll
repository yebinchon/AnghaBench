; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, i32, i32*, i32*, i32*, i32, i32 }

@PCI_CFG_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@PCIR_STATUS = common dso_local global i32 0, align 4
@PCIM_STATUS_INTxSTATE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"can't map mem space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"can't map interrupt\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@iwm_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"can't establish interrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iwm_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.iwm_softc* @device_get_softc(i32 %9)
  store %struct.iwm_softc* %10, %struct.iwm_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PCI_CFG_RETRY_TIMEOUT, align 4
  %13 = call i32 @pci_write_config(i32 %11, i32 %12, i32 0, i32 1)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pci_enable_busmaster(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PCIR_STATUS, align 4
  %18 = call i32 @pci_read_config(i32 %16, i32 %17, i32 4)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PCIM_STATUS_INTxSTATE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @PCIM_STATUS_INTxSTATE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PCIR_STATUS, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pci_write_config(i32 %29, i32 %30, i32 %31, i32 4)
  %33 = call i32 @PCIR_BAR(i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SYS_RES_MEMORY, align 4
  %36 = load i32, i32* @RF_ACTIVE, align 4
  %37 = call i8* @bus_alloc_resource_any(i32 %34, i32 %35, i32* %7, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %40 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %39, i32 0, i32 4
  store i32* %38, i32** %40, align 8
  %41 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %42 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %28
  %46 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %47 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %2, align 4
  br label %120

51:                                               ; preds = %28
  %52 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %53 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @rman_get_bustag(i32* %54)
  %56 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %57 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %59 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @rman_get_bushandle(i32* %60)
  %62 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %63 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @pci_alloc_msi(i32 %64, i32* %5)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  store i32 1, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @SYS_RES_IRQ, align 4
  %71 = load i32, i32* @RF_ACTIVE, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @RF_SHAREABLE, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i32 [ 0, %74 ], [ %76, %75 ]
  %79 = or i32 %71, %78
  %80 = call i8* @bus_alloc_resource_any(i32 %69, i32 %70, i32* %7, i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %83 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %82, i32 0, i32 3
  store i32* %81, i32** %83, align 8
  %84 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %85 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %77
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %120

92:                                               ; preds = %77
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %95 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @INTR_TYPE_NET, align 4
  %98 = load i32, i32* @INTR_MPSAFE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @iwm_intr, align 4
  %101 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %102 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %103 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %102, i32 0, i32 2
  %104 = call i32 @bus_setup_intr(i32 %93, i32* %96, i32 %99, i32* null, i32 %100, %struct.iwm_softc* %101, i32** %103)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %106 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %92
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %2, align 4
  br label %120

113:                                              ; preds = %92
  %114 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %115 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @bus_get_dma_tag(i32 %116)
  %118 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %119 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %113, %109, %88, %45
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.iwm_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.iwm_softc*, i32**) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
