; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida_pci.c_ida_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida_pci.c_ida_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_board = type { i32, i32* }
%struct.ida_softc = type { i32, i32, i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ida\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@IDA_PCI_MEMADDR = common dso_local global i32 0, align 4
@IDA_DEVICEID_DEC_SMART = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"can't allocate memory resources\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"can't allocate DMA tag\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ida_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"can't setup interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ida_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ida_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ida_board*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ida_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ida_board* @ida_pci_match(i32 %9)
  store %struct.ida_board* %10, %struct.ida_board** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @pci_get_devid(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @device_get_softc(i32 %13)
  %15 = inttoptr i64 %14 to %struct.ida_softc*
  store %struct.ida_softc* %15, %struct.ida_softc** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %18 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ida_board*, %struct.ida_board** %4, align 8
  %20 = getelementptr inbounds %struct.ida_board, %struct.ida_board* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %24 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ida_board*, %struct.ida_board** %4, align 8
  %26 = getelementptr inbounds %struct.ida_board, %struct.ida_board* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %29 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %30, i32 0, i32 7
  %32 = load i32, i32* @MTX_DEF, align 4
  %33 = call i32 @mtx_init(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %32)
  %34 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %35 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %34, i32 0, i32 8
  %36 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %37 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %36, i32 0, i32 7
  %38 = call i32 @callout_init_mtx(i32* %35, i32* %37, i32 0)
  %39 = load i32, i32* @SYS_RES_MEMORY, align 4
  %40 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %41 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @IDA_PCI_MEMADDR, align 4
  %43 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %44 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @IDA_DEVICEID_DEC_SMART, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %1
  %49 = call i32 @PCIR_BAR(i32 0)
  %50 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %51 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %1
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %55 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %58 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %57, i32 0, i32 0
  %59 = load i32, i32* @RF_ACTIVE, align 4
  %60 = call i8* @bus_alloc_resource_any(i32 %53, i32 %56, i32* %58, i32 %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %63 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %62, i32 0, i32 5
  store i32* %61, i32** %63, align 8
  %64 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %65 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %52
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %2, align 4
  br label %148

72:                                               ; preds = %52
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @bus_get_dma_tag(i32 %73)
  %75 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %76 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %77 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %78 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %79 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %80 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %81 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %82 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %81, i32 0, i32 4
  %83 = call i32 @bus_dma_tag_create(i32 %74, i32 1, i32 0, i32 %75, i32 %76, i32* null, i32* null, i32 %77, i32 %78, i32 %79, i32 %80, i32* null, i32* null, i32* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %72
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %90 = call i32 @ida_free(%struct.ida_softc* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  store i32 %91, i32* %2, align 4
  br label %148

92:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  %93 = load i32, i32* @SYS_RES_IRQ, align 4
  %94 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %95 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %98 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @RF_ACTIVE, align 4
  %101 = load i32, i32* @RF_SHAREABLE, align 4
  %102 = or i32 %100, %101
  %103 = call i8* @bus_alloc_resource_any(i32 %96, i32 %99, i32* %8, i32 %102)
  %104 = bitcast i8* %103 to i32*
  %105 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %106 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  %107 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %108 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %92
  %112 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %113 = call i32 @ida_free(%struct.ida_softc* %112)
  %114 = load i32, i32* @ENOMEM, align 4
  store i32 %114, i32* %2, align 4
  br label %148

115:                                              ; preds = %92
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %118 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @INTR_TYPE_BIO, align 4
  %121 = load i32, i32* @INTR_ENTROPY, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @INTR_MPSAFE, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @ida_intr, align 4
  %126 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %127 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %128 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %127, i32 0, i32 1
  %129 = call i32 @bus_setup_intr(i32 %116, i32* %119, i32 %124, i32* null, i32 %125, %struct.ida_softc* %126, i32* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %115
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @device_printf(i32 %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %135 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %136 = call i32 @ida_free(%struct.ida_softc* %135)
  %137 = load i32, i32* @ENOMEM, align 4
  store i32 %137, i32* %2, align 4
  br label %148

138:                                              ; preds = %115
  %139 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %140 = call i32 @ida_setup(%struct.ida_softc* %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.ida_softc*, %struct.ida_softc** %6, align 8
  %145 = call i32 @ida_free(%struct.ida_softc* %144)
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %148

147:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %143, %132, %111, %86, %68
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.ida_board* @ida_pci_match(i32) #1

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @ida_free(%struct.ida_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ida_softc*, i32*) #1

declare dso_local i32 @ida_setup(%struct.ida_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
