; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl_pci.c_mwl_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl_pci.c_mwl_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_pci_softc = type { i32*, i32*, i32*, i32, %struct.mwl_softc }
%struct.mwl_softc = type { i32, i32, i8*, i8*, i8*, i8*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@BS_BAR0 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot map BAR0 register space\0A\00", align 1
@BS_BAR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot map BAR1 register space\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"could not map interrupt\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@mwl_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"could not establish interrupt\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@MWL_TXDESC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot allocate DMA tag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mwl_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwl_pci_softc*, align 8
  %5 = alloca %struct.mwl_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mwl_pci_softc* @device_get_softc(i32 %8)
  store %struct.mwl_pci_softc* %9, %struct.mwl_pci_softc** %4, align 8
  %10 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %10, i32 0, i32 4
  store %struct.mwl_softc* %11, %struct.mwl_softc** %5, align 8
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %15 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @pci_enable_busmaster(i32 %16)
  %18 = load i32, i32* @BS_BAR0, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SYS_RES_MEMORY, align 4
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call i8* @bus_alloc_resource_any(i32 %19, i32 %20, i32* %6, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %172

33:                                               ; preds = %1
  %34 = load i32, i32* @BS_BAR1, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SYS_RES_MEMORY, align 4
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = call i8* @bus_alloc_resource_any(i32 %35, i32 %36, i32* %6, i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %41 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %164

49:                                               ; preds = %33
  %50 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %51 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  store i32 0, i32* %6, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SYS_RES_IRQ, align 4
  %54 = load i32, i32* @RF_SHAREABLE, align 4
  %55 = load i32, i32* @RF_ACTIVE, align 4
  %56 = or i32 %54, %55
  %57 = call i8* @bus_alloc_resource_any(i32 %52, i32 %53, i32* %6, i32 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %60 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %62 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %156

68:                                               ; preds = %49
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %71 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @INTR_TYPE_NET, align 4
  %74 = load i32, i32* @INTR_MPSAFE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @mwl_intr, align 4
  %77 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %78 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %79 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %78, i32 0, i32 3
  %80 = call i64 @bus_setup_intr(i32 %69, i32* %72, i32 %75, i32* null, i32 %76, %struct.mwl_softc* %77, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %68
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %149

85:                                               ; preds = %68
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @bus_get_dma_tag(i32 %86)
  %88 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %89 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %90 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %91 = load i32, i32* @MWL_TXDESC, align 4
  %92 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %93 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %94 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %93, i32 0, i32 1
  %95 = call i64 @bus_dma_tag_create(i32 %87, i32 1, i32 0, i32 %88, i32 %89, i32* null, i32* null, i32 %90, i32 %91, i32 %92, i32 0, i32* null, i32* null, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %140

100:                                              ; preds = %85
  %101 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %102 = call i32 @MWL_LOCK_INIT(%struct.mwl_softc* %101)
  %103 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %104 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i8* @rman_get_bustag(i32* %105)
  %107 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %108 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %110 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i8* @rman_get_bushandle(i32* %111)
  %113 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %114 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  %115 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %116 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i8* @rman_get_bustag(i32* %117)
  %119 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %120 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %122 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i8* @rman_get_bushandle(i32* %123)
  %125 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %126 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @pci_get_device(i32 %127)
  %129 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %130 = call i64 @mwl_attach(i32 %128, %struct.mwl_softc* %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %174

133:                                              ; preds = %100
  %134 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %135 = call i32 @MWL_LOCK_DESTROY(%struct.mwl_softc* %134)
  %136 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %137 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @bus_dma_tag_destroy(i32 %138)
  br label %140

140:                                              ; preds = %133, %97
  %141 = load i32, i32* %3, align 4
  %142 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %143 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %146 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @bus_teardown_intr(i32 %141, i32* %144, i32 %147)
  br label %149

149:                                              ; preds = %140, %82
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @SYS_RES_IRQ, align 4
  %152 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %153 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @bus_release_resource(i32 %150, i32 %151, i32 0, i32* %154)
  br label %156

156:                                              ; preds = %149, %65
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @SYS_RES_MEMORY, align 4
  %159 = load i32, i32* @BS_BAR1, align 4
  %160 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %161 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @bus_release_resource(i32 %157, i32 %158, i32 %159, i32* %162)
  br label %164

164:                                              ; preds = %156, %46
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @SYS_RES_MEMORY, align 4
  %167 = load i32, i32* @BS_BAR0, align 4
  %168 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %4, align 8
  %169 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @bus_release_resource(i32 %165, i32 %166, i32 %167, i32* %170)
  br label %172

172:                                              ; preds = %164, %30
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %172, %132
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.mwl_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.mwl_softc*, i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @MWL_LOCK_INIT(%struct.mwl_softc*) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i64 @mwl_attach(i32, %struct.mwl_softc*) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @MWL_LOCK_DESTROY(%struct.mwl_softc*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
