; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_pci.c_mfi_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_pci.c_mfi_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32, i32, i32*, i32, i32*, i32, i32 }
%struct.mfi_ident = type { i32 }

@MFI_FLAGS_1064R = common dso_local global i32 0, align 4
@MFI_FLAGS_1078 = common dso_local global i32 0, align 4
@MFI_FLAGS_GEN2 = common dso_local global i32 0, align 4
@MFI_FLAGS_SKINNY = common dso_local global i32 0, align 4
@MFI_FLAGS_TBOLT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot allocate PCI registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot allocate parent DMA tag\0A\00", align 1
@mfi_msi = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Using MSI\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot allocate interrupt\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mfi_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.mfi_ident*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mfi_softc* @device_get_softc(i32 %8)
  store %struct.mfi_softc* %9, %struct.mfi_softc** %4, align 8
  %10 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %11 = call i32 @bzero(%struct.mfi_softc* %10, i32 48)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.mfi_ident* @mfi_find_ident(i32 %15)
  store %struct.mfi_ident* %16, %struct.mfi_ident** %5, align 8
  %17 = load %struct.mfi_ident*, %struct.mfi_ident** %5, align 8
  %18 = getelementptr inbounds %struct.mfi_ident, %struct.mfi_ident* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pci_enable_busmaster(i32 %22)
  %24 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MFI_FLAGS_1064R, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  %31 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MFI_FLAGS_1078, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30, %1
  %38 = call i8* @PCIR_BAR(i32 0)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %41 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %69

42:                                               ; preds = %30
  %43 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %44 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MFI_FLAGS_GEN2, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %42
  %50 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %51 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MFI_FLAGS_SKINNY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %58 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MFI_FLAGS_TBOLT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56, %49, %42
  %64 = call i8* @PCIR_BAR(i32 1)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %67 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68, %37
  %70 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %71 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SYS_RES_MEMORY, align 4
  %74 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %75 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %74, i32 0, i32 1
  %76 = load i32, i32* @RF_ACTIVE, align 4
  %77 = call i8* @bus_alloc_resource_any(i32 %72, i32 %73, i32* %75, i32 %76)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %80 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %79, i32 0, i32 6
  store i32* %78, i32** %80, align 8
  %81 = icmp eq i32* %78, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %166

86:                                               ; preds = %69
  %87 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %88 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @rman_get_bustag(i32* %89)
  %91 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %92 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 4
  %93 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %94 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @rman_get_bushandle(i32* %95)
  %97 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %98 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @ENOMEM, align 4
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @bus_get_dma_tag(i32 %100)
  %102 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %103 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %104 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %105 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %106 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %107 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %108 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %107, i32 0, i32 5
  %109 = call i64 @bus_dma_tag_create(i32 %101, i32 1, i32 0, i32 %102, i32 %103, i32* null, i32* null, i32 %104, i32 %105, i32 %106, i32 0, i32* null, i32* null, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %86
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %156

114:                                              ; preds = %86
  %115 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %116 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %115, i32 0, i32 2
  store i32 0, i32* %116, align 8
  store i32 1, i32* %6, align 4
  %117 = load i64, i64* @mfi_msi, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %121 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @pci_alloc_msi(i32 %122, i32* %6)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %127 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @device_printf(i32 %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %131 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %130, i32 0, i32 2
  store i32 1, i32* %131, align 8
  br label %132

132:                                              ; preds = %125, %119, %114
  %133 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %134 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SYS_RES_IRQ, align 4
  %137 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %138 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %137, i32 0, i32 2
  %139 = load i32, i32* @RF_SHAREABLE, align 4
  %140 = load i32, i32* @RF_ACTIVE, align 4
  %141 = or i32 %139, %140
  %142 = call i8* @bus_alloc_resource_any(i32 %135, i32 %136, i32* %138, i32 %141)
  %143 = bitcast i8* %142 to i32*
  %144 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %145 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %144, i32 0, i32 4
  store i32* %143, i32** %145, align 8
  %146 = icmp eq i32* %143, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %132
  %148 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %149 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @device_printf(i32 %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  store i32 %152, i32* %7, align 4
  br label %156

153:                                              ; preds = %132
  %154 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %155 = call i32 @mfi_attach(%struct.mfi_softc* %154)
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %153, %147, %111
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %161 = call i32 @mfi_free(%struct.mfi_softc* %160)
  %162 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %163 = call i32 @mfi_pci_free(%struct.mfi_softc* %162)
  br label %164

164:                                              ; preds = %159, %156
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %82
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.mfi_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.mfi_softc*, i32) #1

declare dso_local %struct.mfi_ident* @mfi_find_ident(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @mfi_attach(%struct.mfi_softc*) #1

declare dso_local i32 @mfi_free(%struct.mfi_softc*) #1

declare dso_local i32 @mfi_pci_free(%struct.mfi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
