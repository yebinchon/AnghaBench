; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_4__ = type { %struct.twe_softc*, i32 }
%struct.TYPE_3__ = type { %struct.twe_softc* }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"twe I/O\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"twe config\00", align 1
@_hw = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"cannot add sysctl tree node\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"driver_version\00", align 1
@TWE_DRIVER_VERSION_STRING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"TWE driver version\00", align 1
@TWE_IO_CONFIG_REG = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"can't allocate register window\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"can't allocate parent DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"can't allocate interrupt\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@twe_pci_intr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"can't set up interrupt\0A\00", align 1
@TWE_Q_LENGTH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"can't allocate data buffer DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"can't allocate command memory\0A\00", align 1
@twe_setup_request_dmamap = common dso_local global i32 0, align 4
@TWE_MAX_SGL_LENGTH = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@DFLTPHYS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [46 x i8] c"can't allocate memory for immediate requests\0A\00", align 1
@twe_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"twe%d\00", align 1
@twe_intrhook = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [36 x i8] c"can't establish configuration hook\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.twe_softc*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @debug_called(i32 4)
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.twe_softc* @device_get_softc(i32 %9)
  store %struct.twe_softc* %10, %struct.twe_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %13 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %15 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %14, i32 0, i32 8
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %16)
  %18 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %19 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %18, i32 0, i32 15
  %20 = call i32 @sx_init(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_get_sysctl_ctx(i32 %21)
  %23 = load i32, i32* @_hw, align 4
  %24 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %23)
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_get_nameunit(i32 %26)
  %28 = load i32, i32* @CTLFLAG_RD, align 4
  %29 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32 %22, i32 %24, i32 %25, i32 %27, i32 %28, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %29, %struct.sysctl_oid** %5, align 8
  %30 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %31 = icmp eq %struct.sysctl_oid* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %34 = call i32 @twe_printf(%struct.twe_softc* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %295

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_get_sysctl_ctx(i32 %37)
  %39 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %40 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %39)
  %41 = load i32, i32* @OID_AUTO, align 4
  %42 = load i32, i32* @CTLFLAG_RD, align 4
  %43 = load i32, i32* @TWE_DRIVER_VERSION_STRING, align 4
  %44 = call i32 @SYSCTL_ADD_STRING(i32 %38, i32 %40, i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 %43, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @pci_enable_busmaster(i32 %45)
  %47 = load i32, i32* @TWE_IO_CONFIG_REG, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SYS_RES_IOPORT, align 4
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = call i8* @bus_alloc_resource_any(i32 %48, i32 %49, i32* %6, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %54 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %53, i32 0, i32 14
  store i32* %52, i32** %54, align 8
  %55 = icmp eq i32* %52, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %36
  %57 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %58 = call i32 @twe_printf(%struct.twe_softc* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %59 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %60 = call i32 @twe_free(%struct.twe_softc* %59)
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %2, align 4
  br label %295

62:                                               ; preds = %36
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @bus_get_dma_tag(i32 %63)
  %65 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %66 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %67 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %68 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %69 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %70 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %71 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %70, i32 0, i32 6
  %72 = call i64 @bus_dma_tag_create(i32 %64, i32 1, i32 0, i32 %65, i32 %66, i32* null, i32* null, i32 %67, i32 %68, i32 %69, i32 0, i32* null, i32* null, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %62
  %75 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %76 = call i32 @twe_printf(%struct.twe_softc* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %77 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %78 = call i32 @twe_free(%struct.twe_softc* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* %2, align 4
  br label %295

80:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  %81 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %82 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SYS_RES_IRQ, align 4
  %85 = load i32, i32* @RF_SHAREABLE, align 4
  %86 = load i32, i32* @RF_ACTIVE, align 4
  %87 = or i32 %85, %86
  %88 = call i8* @bus_alloc_resource_any(i32 %83, i32 %84, i32* %6, i32 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %91 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %90, i32 0, i32 13
  store i32* %89, i32** %91, align 8
  %92 = icmp eq i32* %89, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %95 = call i32 @twe_printf(%struct.twe_softc* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %96 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %97 = call i32 @twe_free(%struct.twe_softc* %96)
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %2, align 4
  br label %295

99:                                               ; preds = %80
  %100 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %101 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %104 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %103, i32 0, i32 13
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @INTR_TYPE_BIO, align 4
  %107 = load i32, i32* @INTR_ENTROPY, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @INTR_MPSAFE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @twe_pci_intr, align 4
  %112 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %113 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %114 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %113, i32 0, i32 12
  %115 = call i64 @bus_setup_intr(i32 %102, i32* %105, i32 %110, i32* null, i32 %111, %struct.twe_softc* %112, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %99
  %118 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %119 = call i32 @twe_printf(%struct.twe_softc* %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %120 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %121 = call i32 @twe_free(%struct.twe_softc* %120)
  %122 = load i32, i32* @ENXIO, align 4
  store i32 %122, i32* %2, align 4
  br label %295

123:                                              ; preds = %99
  %124 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %125 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %128 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %129 = load i32, i32* @TWE_Q_LENGTH, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 4, %130
  %132 = trunc i64 %131 to i32
  %133 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %134 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %135 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %134, i32 0, i32 11
  %136 = call i64 @bus_dma_tag_create(i32 %126, i32 1, i32 0, i32 %127, i32 %128, i32* null, i32* null, i32 %132, i32 1, i32 %133, i32 0, i32* null, i32* null, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %123
  %139 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %140 = call i32 @twe_printf(%struct.twe_softc* %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %141 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %142 = call i32 @twe_free(%struct.twe_softc* %141)
  %143 = load i32, i32* @ENOMEM, align 4
  store i32 %143, i32* %2, align 4
  br label %295

144:                                              ; preds = %123
  %145 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %146 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %149 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %148, i32 0, i32 9
  %150 = bitcast i32* %149 to i8**
  %151 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %152 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %153 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %152, i32 0, i32 10
  %154 = call i64 @bus_dmamem_alloc(i32 %147, i8** %150, i32 %151, i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %144
  %157 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %158 = call i32 @twe_printf(%struct.twe_softc* %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %159 = load i32, i32* @ENOMEM, align 4
  store i32 %159, i32* %2, align 4
  br label %295

160:                                              ; preds = %144
  %161 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %162 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %165 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %164, i32 0, i32 10
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %168 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @TWE_Q_LENGTH, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 4, %171
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* @twe_setup_request_dmamap, align 4
  %175 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %176 = call i32 @bus_dmamap_load(i32 %163, i32 %166, i32 %169, i32 %173, i32 %174, %struct.twe_softc* %175, i32 0)
  %177 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %178 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @TWE_Q_LENGTH, align 4
  %181 = sext i32 %180 to i64
  %182 = mul i64 4, %181
  %183 = trunc i64 %182 to i32
  %184 = call i32 @bzero(i32 %179, i32 %183)
  %185 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %186 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %189 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %190 = load i32, i32* @TWE_MAX_SGL_LENGTH, align 4
  %191 = sub nsw i32 %190, 1
  %192 = load i32, i32* @PAGE_SIZE, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32, i32* @TWE_MAX_SGL_LENGTH, align 4
  %195 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %196 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %197 = load i32*, i32** @busdma_lock_mutex, align 8
  %198 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %199 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %198, i32 0, i32 8
  %200 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %201 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %200, i32 0, i32 7
  %202 = call i64 @bus_dma_tag_create(i32 %187, i32 1, i32 0, i32 %188, i32 %189, i32* null, i32* null, i32 %193, i32 %194, i32 %195, i32 %196, i32* %197, i32* %199, i32* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %160
  %205 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %206 = call i32 @twe_printf(%struct.twe_softc* %205, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %207 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %208 = call i32 @twe_free(%struct.twe_softc* %207)
  %209 = load i32, i32* @ENOMEM, align 4
  store i32 %209, i32* %2, align 4
  br label %295

210:                                              ; preds = %160
  %211 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %212 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %215 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %216 = load i32, i32* @DFLTPHYS, align 4
  %217 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %218 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %219 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %218, i32 0, i32 5
  %220 = call i64 @bus_dma_tag_create(i32 %213, i32 1, i32 0, i32 %214, i32 %215, i32* null, i32* null, i32 %216, i32 1, i32 %217, i32 0, i32* null, i32* null, i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %210
  %223 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %224 = call i32 @twe_printf(%struct.twe_softc* %223, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %225 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %226 = call i32 @twe_free(%struct.twe_softc* %225)
  %227 = load i32, i32* @ENOMEM, align 4
  store i32 %227, i32* %2, align 4
  br label %295

228:                                              ; preds = %210
  %229 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %230 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %233 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %232, i32 0, i32 4
  %234 = bitcast i32* %233 to i8**
  %235 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %236 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %237 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %236, i32 0, i32 3
  %238 = call i64 @bus_dmamem_alloc(i32 %231, i8** %234, i32 %235, i32* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %228
  %241 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %242 = call i32 @twe_printf(%struct.twe_softc* %241, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %243 = load i32, i32* @ENOMEM, align 4
  store i32 %243, i32* %2, align 4
  br label %295

244:                                              ; preds = %228
  %245 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %246 = call i32 @twe_setup(%struct.twe_softc* %245)
  store i32 %246, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %244
  %249 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %250 = call i32 @twe_free(%struct.twe_softc* %249)
  %251 = load i32, i32* %7, align 4
  store i32 %251, i32* %2, align 4
  br label %295

252:                                              ; preds = %244
  %253 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %254 = call i32 @twe_describe_controller(%struct.twe_softc* %253)
  %255 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %256 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @device_get_unit(i32 %257)
  %259 = load i32, i32* @UID_ROOT, align 4
  %260 = load i32, i32* @GID_OPERATOR, align 4
  %261 = load i32, i32* @S_IRUSR, align 4
  %262 = load i32, i32* @S_IWUSR, align 4
  %263 = or i32 %261, %262
  %264 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %265 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @device_get_unit(i32 %266)
  %268 = call %struct.TYPE_3__* @make_dev(i32* @twe_cdevsw, i32 %258, i32 %259, i32 %260, i32 %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %267)
  %269 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %270 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %269, i32 0, i32 1
  store %struct.TYPE_3__* %268, %struct.TYPE_3__** %270, align 8
  %271 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %272 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %273 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %272, i32 0, i32 1
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  store %struct.twe_softc* %271, %struct.twe_softc** %275, align 8
  %276 = load i32, i32* @twe_intrhook, align 4
  %277 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %278 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  store i32 %276, i32* %279, align 8
  %280 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %281 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %282 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  store %struct.twe_softc* %280, %struct.twe_softc** %283, align 8
  %284 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %285 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %284, i32 0, i32 0
  %286 = call i64 @config_intrhook_establish(%struct.TYPE_4__* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %252
  %289 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %290 = call i32 @twe_printf(%struct.twe_softc* %289, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %291 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %292 = call i32 @twe_free(%struct.twe_softc* %291)
  %293 = load i32, i32* @ENXIO, align 4
  store i32 %293, i32* %2, align 4
  br label %295

294:                                              ; preds = %252
  store i32 0, i32* %2, align 4
  br label %295

295:                                              ; preds = %294, %288, %248, %240, %222, %204, %156, %138, %117, %93, %74, %56, %32
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.twe_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @twe_printf(%struct.twe_softc*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_STRING(i32, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @twe_free(%struct.twe_softc*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.twe_softc*, i32*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.twe_softc*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @twe_setup(%struct.twe_softc*) #1

declare dso_local i32 @twe_describe_controller(%struct.twe_softc*) #1

declare dso_local %struct.TYPE_3__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
