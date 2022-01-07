; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_thunder_bgx_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_thunder_bgx_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32, i64, i32*, i32 }
%struct.lmac = type { %struct.bgx* }

@M_BGX = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PCI_CFG_REG_BAR_NUM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not allocate CSR memory space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BGX_NODE_ID_SHIFT = common dso_local global i32 0, align 4
@BGX_NODE_ID_MASK = common dso_local global i32 0, align 4
@MAX_BGX_PER_CN88XX = common dso_local global i32 0, align 4
@bgx_vnic = common dso_local global %struct.bgx** null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"BGX%d failed to enable lmac%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @thunder_bgx_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_bgx_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bgx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lmac*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @M_BGX, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.bgx* @malloc(i32 32, i32 %9, i32 %12)
  store %struct.bgx* %13, %struct.bgx** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.bgx*, %struct.bgx** %4, align 8
  %16 = getelementptr inbounds %struct.bgx, %struct.bgx* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.lmac* @device_get_softc(i32 %17)
  store %struct.lmac* %18, %struct.lmac** %8, align 8
  %19 = load %struct.bgx*, %struct.bgx** %4, align 8
  %20 = load %struct.lmac*, %struct.lmac** %8, align 8
  %21 = getelementptr inbounds %struct.lmac, %struct.lmac* %20, i32 0, i32 0
  store %struct.bgx* %19, %struct.bgx** %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pci_enable_busmaster(i32 %22)
  %24 = load i32, i32* @PCI_CFG_REG_BAR_NUM, align 4
  %25 = call i32 @PCIR_BAR(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SYS_RES_MEMORY, align 4
  %28 = load i32, i32* @RF_ACTIVE, align 4
  %29 = call i32* @bus_alloc_resource_any(i32 %26, i32 %27, i32* %7, i32 %28)
  %30 = load %struct.bgx*, %struct.bgx** %4, align 8
  %31 = getelementptr inbounds %struct.bgx, %struct.bgx* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.bgx*, %struct.bgx** %4, align 8
  %33 = getelementptr inbounds %struct.bgx, %struct.bgx* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %6, align 4
  br label %119

40:                                               ; preds = %1
  %41 = load %struct.bgx*, %struct.bgx** %4, align 8
  %42 = getelementptr inbounds %struct.bgx, %struct.bgx* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @rman_get_start(i32* %43)
  %45 = load i32, i32* @BGX_NODE_ID_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = load i32, i32* @BGX_NODE_ID_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.bgx*, %struct.bgx** %4, align 8
  %50 = getelementptr inbounds %struct.bgx, %struct.bgx* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.bgx*, %struct.bgx** %4, align 8
  %52 = getelementptr inbounds %struct.bgx, %struct.bgx* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @nic_get_node_id(i32* %53)
  %55 = load i32, i32* @MAX_BGX_PER_CN88XX, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load %struct.bgx*, %struct.bgx** %4, align 8
  %58 = getelementptr inbounds %struct.bgx, %struct.bgx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.bgx*, %struct.bgx** %4, align 8
  %62 = load %struct.bgx**, %struct.bgx*** @bgx_vnic, align 8
  %63 = load %struct.bgx*, %struct.bgx** %4, align 8
  %64 = getelementptr inbounds %struct.bgx, %struct.bgx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.bgx*, %struct.bgx** %62, i64 %66
  store %struct.bgx* %61, %struct.bgx** %67, align 8
  %68 = load %struct.bgx*, %struct.bgx** %4, align 8
  %69 = call i32 @bgx_get_qlm_mode(%struct.bgx* %68)
  %70 = load %struct.bgx*, %struct.bgx** %4, align 8
  %71 = call i32 @bgx_init_phy(%struct.bgx* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %40
  br label %102

75:                                               ; preds = %40
  %76 = load %struct.bgx*, %struct.bgx** %4, align 8
  %77 = call i32 @bgx_init_hw(%struct.bgx* %76)
  store i64 0, i64* %5, align 8
  br label %78

78:                                               ; preds = %98, %75
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.bgx*, %struct.bgx** %4, align 8
  %81 = getelementptr inbounds %struct.bgx, %struct.bgx* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load %struct.bgx*, %struct.bgx** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @bgx_lmac_enable(%struct.bgx* %85, i64 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.bgx*, %struct.bgx** %4, align 8
  %93 = getelementptr inbounds %struct.bgx, %struct.bgx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %94, i64 %95)
  br label %102

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %5, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %5, align 8
  br label %78

101:                                              ; preds = %78
  store i32 0, i32* %2, align 4
  br label %126

102:                                              ; preds = %90, %74
  %103 = load %struct.bgx**, %struct.bgx*** @bgx_vnic, align 8
  %104 = load %struct.bgx*, %struct.bgx** %4, align 8
  %105 = getelementptr inbounds %struct.bgx, %struct.bgx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.bgx*, %struct.bgx** %103, i64 %107
  store %struct.bgx* null, %struct.bgx** %108, align 8
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @SYS_RES_MEMORY, align 4
  %111 = load %struct.bgx*, %struct.bgx** %4, align 8
  %112 = getelementptr inbounds %struct.bgx, %struct.bgx* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @rman_get_rid(i32* %113)
  %115 = load %struct.bgx*, %struct.bgx** %4, align 8
  %116 = getelementptr inbounds %struct.bgx, %struct.bgx* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @bus_release_resource(i32 %109, i32 %110, i32 %114, i32* %117)
  br label %119

119:                                              ; preds = %102, %36
  %120 = load %struct.bgx*, %struct.bgx** %4, align 8
  %121 = load i32, i32* @M_BGX, align 4
  %122 = call i32 @free(%struct.bgx* %120, i32 %121)
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @pci_disable_busmaster(i32 %123)
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %119, %101
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.bgx* @malloc(i32, i32, i32) #1

declare dso_local %struct.lmac* @device_get_softc(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @nic_get_node_id(i32*) #1

declare dso_local i32 @bgx_get_qlm_mode(%struct.bgx*) #1

declare dso_local i32 @bgx_init_phy(%struct.bgx*) #1

declare dso_local i32 @bgx_init_hw(%struct.bgx*) #1

declare dso_local i32 @bgx_lmac_enable(%struct.bgx*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @free(%struct.bgx*, i32) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
