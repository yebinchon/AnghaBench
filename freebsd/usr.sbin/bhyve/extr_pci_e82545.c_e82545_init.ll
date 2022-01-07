; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { i32, i32, %struct.e82545_softc* }
%struct.e82545_softc = type { i32*, %struct.TYPE_2__, i32, i32, i32, i32, %struct.vmctx*, %struct.pci_devinst* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Loading with options: %s\0D\0A\00", align 1
@e82545_tx_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"e82545-%d:%d tx\00", align 1
@PCIR_DEVICE = common dso_local global i32 0, align 4
@E82545_DEV_ID_82545EM_COPPER = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@E82545_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_NETWORK = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_NETWORK_ETHERNET = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@E82545_SUBDEV_ID = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE_NORMAL = common dso_local global i32 0, align 4
@PCIR_INTPIN = common dso_local global i32 0, align 4
@E82545_BAR_REGISTER = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i32 0, align 4
@E82545_BAR_REGISTER_LEN = common dso_local global i32 0, align 4
@E82545_BAR_FLASH = common dso_local global i32 0, align 4
@E82545_BAR_FLASH_LEN = common dso_local global i32 0, align 4
@E82545_BAR_IO = common dso_local global i32 0, align 4
@PCIBAR_IO = common dso_local global i32 0, align 4
@E82545_BAR_IO_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@e82545_rx_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @e82545_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e82545_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [80 x i8], align 16
  %9 = alloca %struct.e82545_softc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call %struct.e82545_softc* @calloc(i32 1, i32 48)
  store %struct.e82545_softc* %16, %struct.e82545_softc** %9, align 8
  %17 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %18 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %19 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %18, i32 0, i32 2
  store %struct.e82545_softc* %17, %struct.e82545_softc** %19, align 8
  %20 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %21 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %22 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %21, i32 0, i32 7
  store %struct.pci_devinst* %20, %struct.pci_devinst** %22, align 8
  %23 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %24 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %25 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %24, i32 0, i32 6
  store %struct.vmctx* %23, %struct.vmctx** %25, align 8
  %26 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %27 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %26, i32 0, i32 5
  %28 = call i32 @pthread_mutex_init(i32* %27, i32* null)
  %29 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %30 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %29, i32 0, i32 4
  %31 = call i32 @pthread_cond_init(i32* %30, i32* null)
  %32 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %33 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %32, i32 0, i32 3
  %34 = call i32 @pthread_cond_init(i32* %33, i32* null)
  %35 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %36 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %35, i32 0, i32 2
  %37 = load i32, i32* @e82545_tx_thread, align 4
  %38 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %39 = call i32 @pthread_create(i32* %36, i32* null, i32 %37, %struct.e82545_softc* %38)
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %41 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %42 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %45 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snprintf(i8* %40, i32 80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %49 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %52 = call i32 @pthread_set_name_np(i32 %50, i8* %51)
  %53 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %54 = load i32, i32* @PCIR_DEVICE, align 4
  %55 = load i32, i32* @E82545_DEV_ID_82545EM_COPPER, align 4
  %56 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %53, i32 %54, i32 %55)
  %57 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %58 = load i32, i32* @PCIR_VENDOR, align 4
  %59 = load i32, i32* @E82545_VENDOR_ID_INTEL, align 4
  %60 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %57, i32 %58, i32 %59)
  %61 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %62 = load i32, i32* @PCIR_CLASS, align 4
  %63 = load i32, i32* @PCIC_NETWORK, align 4
  %64 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %61, i32 %62, i32 %63)
  %65 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %66 = load i32, i32* @PCIR_SUBCLASS, align 4
  %67 = load i32, i32* @PCIS_NETWORK_ETHERNET, align 4
  %68 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %65, i32 %66, i32 %67)
  %69 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %70 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %71 = load i32, i32* @E82545_SUBDEV_ID, align 4
  %72 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %69, i32 %70, i32 %71)
  %73 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %74 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %75 = load i32, i32* @E82545_VENDOR_ID_INTEL, align 4
  %76 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %73, i32 %74, i32 %75)
  %77 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %78 = load i32, i32* @PCIR_HDRTYPE, align 4
  %79 = load i32, i32* @PCIM_HDRTYPE_NORMAL, align 4
  %80 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %77, i32 %78, i32 %79)
  %81 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %82 = load i32, i32* @PCIR_INTPIN, align 4
  %83 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %81, i32 %82, i32 1)
  %84 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %85 = call i32 @pci_lintr_request(%struct.pci_devinst* %84)
  %86 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %87 = load i32, i32* @E82545_BAR_REGISTER, align 4
  %88 = load i32, i32* @PCIBAR_MEM32, align 4
  %89 = load i32, i32* @E82545_BAR_REGISTER_LEN, align 4
  %90 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %92 = load i32, i32* @E82545_BAR_FLASH, align 4
  %93 = load i32, i32* @PCIBAR_MEM32, align 4
  %94 = load i32, i32* @E82545_BAR_FLASH_LEN, align 4
  %95 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %91, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %97 = load i32, i32* @E82545_BAR_IO, align 4
  %98 = load i32, i32* @PCIBAR_IO, align 4
  %99 = load i32, i32* @E82545_BAR_IO_LEN, align 4
  %100 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %96, i32 %97, i32 %98, i32 %99)
  store i32 0, i32* %12, align 4
  %101 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %102 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %139

105:                                              ; preds = %3
  %106 = load i8*, i8** %7, align 8
  %107 = call i8* @strdup(i8* %106)
  store i8* %107, i8** %11, align 8
  store i8* %107, i8** %10, align 8
  %108 = call i32 @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i8*, i8** %11, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load i8*, i8** %11, align 8
  %113 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %114 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @net_parsemac(i8* %112, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %4, align 4
  br label %156

124:                                              ; preds = %111
  store i32 1, i32* %12, align 4
  br label %125

125:                                              ; preds = %124, %105
  %126 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %127 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %126, i32 0, i32 0
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* @e82545_rx_callback, align 4
  %130 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %131 = call i32 @netbe_init(i32** %127, i8* %128, i32 %129, %struct.e82545_softc* %130)
  store i32 %131, i32* %13, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %125
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %4, align 4
  br label %156

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138, %3
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %139
  %143 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %144 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %145 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @net_genmac(%struct.pci_devinst* %143, i32 %147)
  br label %149

149:                                              ; preds = %142, %139
  %150 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %151 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @netbe_rx_enable(i32* %152)
  %154 = load %struct.e82545_softc*, %struct.e82545_softc** %9, align 8
  %155 = call i32 @e82545_reset(%struct.e82545_softc* %154, i32 0)
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %149, %136, %120
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @DPRINTF(i8*, i8*) #1

declare dso_local %struct.e82545_softc* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.e82545_softc*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @pthread_set_name_np(i32, i8*) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_lintr_request(%struct.pci_devinst*) #1

declare dso_local i32 @pci_emul_alloc_bar(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strsep(i8**, i8*) #1

declare dso_local i32 @net_parsemac(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @netbe_init(i32**, i8*, i32, %struct.e82545_softc*) #1

declare dso_local i32 @net_genmac(%struct.pci_devinst*, i32) #1

declare dso_local i32 @netbe_rx_enable(i32*) #1

declare dso_local i32 @e82545_reset(%struct.e82545_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
