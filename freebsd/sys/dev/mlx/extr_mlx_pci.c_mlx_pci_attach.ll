; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_pci.c_mlx_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_pci.c_mlx_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32, i32, i32, i32*, i8*, i8*, i32, i32, i32 }
%struct.mlx_ident = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mlx I/O\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"mlx config\00", align 1
@SYS_RES_MEMORY = common dso_local global i8* null, align 8
@MLX_CFG_BASE1 = common dso_local global i8* null, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i8* null, align 8
@MLX_CFG_BASE0 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"couldn't allocate mailbox window\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"can't allocate parent DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mlx_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx_softc*, align 8
  %5 = alloca %struct.mlx_ident*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 @debug_called(i32 1)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @pci_enable_busmaster(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.mlx_softc* @device_get_softc(i32 %10)
  store %struct.mlx_softc* %11, %struct.mlx_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.mlx_ident* @mlx_pci_match(i32 %15)
  store %struct.mlx_ident* %16, %struct.mlx_ident** %5, align 8
  %17 = load %struct.mlx_ident*, %struct.mlx_ident** %5, align 8
  %18 = icmp eq %struct.mlx_ident* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %146

21:                                               ; preds = %1
  %22 = load %struct.mlx_ident*, %struct.mlx_ident** %5, align 8
  %23 = getelementptr inbounds %struct.mlx_ident, %struct.mlx_ident* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %28 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %27, i32 0, i32 6
  %29 = load i32, i32* @MTX_DEF, align 4
  %30 = call i32 @mtx_init(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %29)
  %31 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %31, i32 0, i32 8
  %33 = call i32 @sx_init(i32* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %34, i32 0, i32 7
  %36 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %37 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %36, i32 0, i32 6
  %38 = call i32 @callout_init_mtx(i32* %35, i32* %37, i32 0)
  %39 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %40 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %101 [
    i32 131, label %42
    i32 130, label %42
    i32 129, label %83
    i32 128, label %83
  ]

42:                                               ; preds = %21, %21
  %43 = load i8*, i8** @SYS_RES_MEMORY, align 8
  %44 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %45 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @MLX_CFG_BASE1, align 8
  %47 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %48 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %51 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %54 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %53, i32 0, i32 4
  %55 = load i32, i32* @RF_ACTIVE, align 4
  %56 = call i8* @bus_alloc_resource_any(i32 %49, i8* %52, i8** %54, i32 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %59 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  %60 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %61 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %42
  %65 = load i8*, i8** @SYS_RES_IOPORT, align 8
  %66 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %67 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @MLX_CFG_BASE0, align 8
  %69 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %70 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %73 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %72, i32 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %76 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %75, i32 0, i32 4
  %77 = load i32, i32* @RF_ACTIVE, align 4
  %78 = call i8* @bus_alloc_resource_any(i32 %71, i8* %74, i8** %76, i32 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %81 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  br label %82

82:                                               ; preds = %64, %42
  br label %101

83:                                               ; preds = %21, %21
  %84 = load i8*, i8** @SYS_RES_MEMORY, align 8
  %85 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %86 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @MLX_CFG_BASE0, align 8
  %88 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %89 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %92 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %91, i32 0, i32 5
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %95 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %94, i32 0, i32 4
  %96 = load i32, i32* @RF_ACTIVE, align 4
  %97 = call i8* @bus_alloc_resource_any(i32 %90, i8* %93, i8** %95, i32 %96)
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %100 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %99, i32 0, i32 3
  store i32* %98, i32** %100, align 8
  br label %101

101:                                              ; preds = %21, %83, %82
  %102 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %103 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %108 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %111 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %112 = call i32 @mlx_free(%struct.mlx_softc* %111)
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %2, align 4
  br label %146

114:                                              ; preds = %101
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @bus_get_dma_tag(i32 %115)
  %117 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %118 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %119 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %120 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %121 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %122 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %123 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %124 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %123, i32 0, i32 1
  %125 = call i32 @bus_dma_tag_create(i32 %116, i32 1, i32 0, i32 %117, i32 %118, i32* null, i32* null, i32 %119, i32 %120, i32 %121, i32 %122, i32* null, i32* null, i32* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %114
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @device_printf(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %131 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %132 = call i32 @mlx_free(%struct.mlx_softc* %131)
  %133 = load i32, i32* @ENOMEM, align 4
  store i32 %133, i32* %2, align 4
  br label %146

134:                                              ; preds = %114
  %135 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %136 = call i32 @mlx_attach(%struct.mlx_softc* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %141 = call i32 @mlx_free(%struct.mlx_softc* %140)
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %2, align 4
  br label %146

143:                                              ; preds = %134
  %144 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %145 = call i32 @mlx_startup(%struct.mlx_softc* %144)
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %143, %139, %128, %106, %19
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local %struct.mlx_softc* @device_get_softc(i32) #1

declare dso_local %struct.mlx_ident* @mlx_pci_match(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i8*, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mlx_free(%struct.mlx_softc*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @mlx_attach(%struct.mlx_softc*) #1

declare dso_local i32 @mlx_startup(%struct.mlx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
