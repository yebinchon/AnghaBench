; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.mly_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i32* }

@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't allocate register window\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"can't allocate interrupt\0A\00", align 1
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@mly_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"can't set up interrupt\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"can't allocate parent DMA tag\0A\00", align 1
@DFLTPHYS = common dso_local global i32 0, align 4
@MLY_MAX_SGENTRIES = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"can't allocate buffer DMA tag\0A\00", align 1
@MLY_MAX_COMMANDS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"can't allocate command packet DMA tag\0A\00", align 1
@mly_identifiers = common dso_local global %struct.TYPE_2__* null, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"set hardware up for i960RX\00", align 1
@MLY_I960RX_COMMAND_MAILBOX = common dso_local global i32 0, align 4
@MLY_I960RX_STATUS_MAILBOX = common dso_local global i32 0, align 4
@MLY_I960RX_IDBR = common dso_local global i32 0, align 4
@MLY_I960RX_ODBR = common dso_local global i32 0, align 4
@MLY_I960RX_ERROR_STATUS = common dso_local global i32 0, align 4
@MLY_I960RX_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@MLY_I960RX_INTERRUPT_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"set hardware up for StrongARM\00", align 1
@MLY_STRONGARM_COMMAND_MAILBOX = common dso_local global i32 0, align 4
@MLY_STRONGARM_STATUS_MAILBOX = common dso_local global i32 0, align 4
@MLY_STRONGARM_IDBR = common dso_local global i32 0, align 4
@MLY_STRONGARM_ODBR = common dso_local global i32 0, align 4
@MLY_STRONGARM_ERROR_STATUS = common dso_local global i32 0, align 4
@MLY_STRONGARM_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@MLY_STRONGARM_INTERRUPT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_softc*)* @mly_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_pci_attach(%struct.mly_softc* %0) #0 {
  %2 = alloca %struct.mly_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %2, align 8
  %5 = call i32 @debug_called(i32 1)
  %6 = load i32, i32* @ENXIO, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pci_enable_busmaster(i32 %9)
  %11 = call i64 @PCIR_BAR(i32 0)
  %12 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %12, i32 0, i32 17
  store i64 %11, i64* %13, align 8
  %14 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %18, i32 0, i32 17
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i8* @bus_alloc_resource_any(i32 %16, i32 %17, i64* %19, i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %23, i32 0, i32 18
  store i32* %22, i32** %24, align 8
  %25 = icmp eq i32* %22, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %28 = call i32 @mly_printf(%struct.mly_softc* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %238

29:                                               ; preds = %1
  %30 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %31 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %30, i32 0, i32 16
  store i64 0, i64* %31, align 8
  %32 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %33 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SYS_RES_IRQ, align 4
  %36 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %37 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %36, i32 0, i32 16
  %38 = load i32, i32* @RF_SHAREABLE, align 4
  %39 = load i32, i32* @RF_ACTIVE, align 4
  %40 = or i32 %38, %39
  %41 = call i8* @bus_alloc_resource_any(i32 %34, i32 %35, i64* %37, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %44 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %43, i32 0, i32 15
  store i32* %42, i32** %44, align 8
  %45 = icmp eq i32* %42, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %48 = call i32 @mly_printf(%struct.mly_softc* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %238

49:                                               ; preds = %29
  %50 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %51 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %54 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %53, i32 0, i32 15
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @INTR_TYPE_CAM, align 4
  %57 = load i32, i32* @INTR_ENTROPY, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @INTR_MPSAFE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @mly_intr, align 4
  %62 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %63 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %64 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %63, i32 0, i32 14
  %65 = call i64 @bus_setup_intr(i32 %52, i32* %55, i32 %60, i32* null, i32 %61, %struct.mly_softc* %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %69 = call i32 @mly_printf(%struct.mly_softc* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %238

70:                                               ; preds = %49
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %4, align 4
  %72 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %73 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bus_get_dma_tag(i32 %74)
  %76 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %77 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %78 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %79 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %80 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %81 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %82 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %83 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %82, i32 0, i32 11
  %84 = call i64 @bus_dma_tag_create(i32 %75, i32 1, i32 0, i32 %76, i32 %77, i32* null, i32* null, i32 %78, i32 %79, i32 %80, i32 %81, i32* null, i32* null, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %88 = call i32 @mly_printf(%struct.mly_softc* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %238

89:                                               ; preds = %70
  %90 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %91 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %94 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %95 = load i32, i32* @DFLTPHYS, align 4
  %96 = load i32, i32* @MLY_MAX_SGENTRIES, align 4
  %97 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %98 = load i32*, i32** @busdma_lock_mutex, align 8
  %99 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %100 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %99, i32 0, i32 13
  %101 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %102 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %101, i32 0, i32 12
  %103 = call i64 @bus_dma_tag_create(i32 %92, i32 1, i32 0, i32 %93, i32 %94, i32* null, i32* null, i32 %95, i32 %96, i32 %97, i32 0, i32* %98, i32* %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %89
  %106 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %107 = call i32 @mly_printf(%struct.mly_softc* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %238

108:                                              ; preds = %89
  %109 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %110 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %113 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %114 = load i32, i32* @MLY_MAX_COMMANDS, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %119 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %120 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %121 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %120, i32 0, i32 10
  %122 = call i64 @bus_dma_tag_create(i32 %111, i32 1, i32 0, i32 %112, i32 %113, i32* null, i32* null, i32 %117, i32 1, i32 %118, i32 %119, i32* null, i32* null, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %108
  %125 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %126 = call i32 @mly_printf(%struct.mly_softc* %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %238

127:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %224, %127
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mly_identifiers, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %227

136:                                              ; preds = %128
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mly_identifiers, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %144 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @pci_get_vendor(i32 %145)
  %147 = icmp eq i64 %142, %146
  br i1 %147, label %148, label %223

148:                                              ; preds = %136
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mly_identifiers, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %156 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @pci_get_device(i32 %157)
  %159 = icmp eq i64 %154, %158
  br i1 %159, label %160, label %223

160:                                              ; preds = %148
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mly_identifiers, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %168 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %167, i32 0, i32 8
  store i32 %166, i32* %168, align 8
  %169 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %170 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  switch i32 %171, label %222 [
    i32 129, label %172
    i32 128, label %197
  ]

172:                                              ; preds = %160
  %173 = call i32 @debug(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %174 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %175 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  %176 = load i32, i32* @MLY_I960RX_COMMAND_MAILBOX, align 4
  %177 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %178 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %177, i32 0, i32 7
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @MLY_I960RX_STATUS_MAILBOX, align 4
  %180 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %181 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @MLY_I960RX_IDBR, align 4
  %183 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %184 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* @MLY_I960RX_ODBR, align 4
  %186 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %187 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* @MLY_I960RX_ERROR_STATUS, align 4
  %189 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %190 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @MLY_I960RX_INTERRUPT_STATUS, align 4
  %192 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %193 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* @MLY_I960RX_INTERRUPT_MASK, align 4
  %195 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %196 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  br label %222

197:                                              ; preds = %160
  %198 = call i32 @debug(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %199 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %200 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %199, i32 0, i32 0
  store i32 255, i32* %200, align 8
  %201 = load i32, i32* @MLY_STRONGARM_COMMAND_MAILBOX, align 4
  %202 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %203 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %202, i32 0, i32 7
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @MLY_STRONGARM_STATUS_MAILBOX, align 4
  %205 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %206 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* @MLY_STRONGARM_IDBR, align 4
  %208 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %209 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @MLY_STRONGARM_ODBR, align 4
  %211 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %212 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* @MLY_STRONGARM_ERROR_STATUS, align 4
  %214 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %215 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @MLY_STRONGARM_INTERRUPT_STATUS, align 4
  %217 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %218 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* @MLY_STRONGARM_INTERRUPT_MASK, align 4
  %220 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %221 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %160, %197, %172
  br label %227

223:                                              ; preds = %148, %136
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %3, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %3, align 4
  br label %128

227:                                              ; preds = %222, %128
  %228 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %229 = call i32 @mly_sg_map(%struct.mly_softc* %228)
  store i32 %229, i32* %4, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  br label %238

232:                                              ; preds = %227
  %233 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %234 = call i32 @mly_mmbox_map(%struct.mly_softc* %233)
  store i32 %234, i32* %4, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  br label %238

237:                                              ; preds = %232
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %237, %236, %231, %124, %105, %86, %67, %46, %26
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i64 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @mly_printf(%struct.mly_softc*, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.mly_softc*, i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i32 @mly_sg_map(%struct.mly_softc*) #1

declare dso_local i32 @mly_mmbox_map(%struct.mly_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
