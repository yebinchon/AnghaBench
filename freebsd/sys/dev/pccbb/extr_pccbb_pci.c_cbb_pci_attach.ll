; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb_pci.c_cbb_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb_pci.c_cbb_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_5__*, i32, i32*, %struct.TYPE_4__, i32 (%struct.cbb_softc*)*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@cbb_pci_attach.curr_bus_number = internal global i32 2, align 4
@.str = private unnamed_addr constant [4 x i8] c"cbb\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@PCIR_SECBUS_2 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_2 = common dso_local global i32 0, align 4
@CBBR_SOCKBASE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not map register memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Found memory at %jx\0A\00", align 1
@CBB_EXCA_OFFSET = common dso_local global i32 0, align 4
@EXCA_HAS_MEMREG_WIN = common dso_local global i32 0, align 4
@EXCA_CARDBUS = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Domain number\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pribus\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Primary bus number\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"secbus\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Secondary bus number\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"subbus\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Subordinate bus number\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Secondary bus is %d\0A\00", align 1
@PCIR_PRIBUS_2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"Setting primary bus to %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Secondary bus set to %d subbus %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"cardbus\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"WARNING: cannot add cardbus bus.\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"WARNING: cannot attach cardbus bus!\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"pccard\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"WARNING: cannot add pccard bus.\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"WARNING: cannot attach pccard bus.\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"Unable to map IRQ...\0A\00", align 1
@INTR_TYPE_AV = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@cbb_pci_filt = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"couldn't establish interrupt\0A\00", align 1
@EXCA_INTR = common dso_local global i32 0, align 4
@EXCA_INTR_RESET = common dso_local global i32 0, align 4
@CARD_OFF = common dso_local global i32 0, align 4
@CBB_SOCKET_MASK = common dso_local global i32 0, align 4
@CBB_SOCKET_MASK_CD = common dso_local global i32 0, align 4
@CBB_SOCKET_EVENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@cbb_event_thread = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"%s event thread\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"unable to create event thread.\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"cbb_create_event_thread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cbb_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbb_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cbb_softc*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @device_get_softc(i32 %10)
  %12 = inttoptr i64 %11 to %struct.cbb_softc*
  store %struct.cbb_softc* %12, %struct.cbb_softc** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_parent(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %16 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_nameunit(i32 %17)
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %16, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pci_get_devid(i32 %21)
  %23 = call i32 @cbb_chipset(i32 %22, i32* null)
  %24 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %25 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %24, i32 0, i32 17
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %28 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %30 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %29, i32 0, i32 11
  store i32* null, i32** %30, align 8
  %31 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %32 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %31, i32 0, i32 9
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @pci_get_domain(i32 %36)
  %38 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %39 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @pcib_get_bus(i32 %40)
  %42 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %43 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @PCIR_SECBUS_2, align 4
  %46 = call i8* @pci_read_config(i32 %44, i32 %45, i32 1)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %49 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %48, i32 0, i32 12
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @PCIR_SUBBUS_2, align 4
  %53 = call i8* @pci_read_config(i32 %51, i32 %52, i32 1)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %56 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %55, i32 0, i32 12
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %59 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %58, i32 0, i32 16
  %60 = call i32 @SLIST_INIT(i32* %59)
  %61 = load i32, i32* @CBBR_SOCKBASE, align 4
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SYS_RES_MEMORY, align 4
  %64 = load i32, i32* @RF_ACTIVE, align 4
  %65 = call i8* @bus_alloc_resource_any(i32 %62, i32 %63, i32* %8, i32 %64)
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %68 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %70 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %1
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %77 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %76, i32 0, i32 3
  %78 = call i32 @mtx_destroy(i32* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* %2, align 4
  br label %423

80:                                               ; preds = %1
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %83 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @rman_get_start(i32* %84)
  %86 = call i32 @DEVPRINTF(i32 %85)
  br label %87

87:                                               ; preds = %80
  %88 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %89 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @rman_get_bustag(i32* %90)
  %92 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %93 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %92, i32 0, i32 15
  store i32 %91, i32* %93, align 4
  %94 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %95 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @rman_get_bushandle(i32* %96)
  %98 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %99 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %98, i32 0, i32 14
  store i32 %97, i32* %99, align 8
  %100 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %101 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %100, i32 0, i32 9
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 0
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %106 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %105, i32 0, i32 15
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %109 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %108, i32 0, i32 14
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CBB_EXCA_OFFSET, align 4
  %112 = call i32 @exca_init(%struct.TYPE_5__* %103, i32 %104, i32 %107, i32 %110, i32 %111)
  %113 = load i32, i32* @EXCA_HAS_MEMREG_WIN, align 4
  %114 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %115 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %114, i32 0, i32 9
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %113
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* @EXCA_CARDBUS, align 4
  %122 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %123 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %122, i32 0, i32 9
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32 %121, i32* %126, align 8
  %127 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %128 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %127, i32 0, i32 13
  store i32 (%struct.cbb_softc*)* @cbb_chipinit, i32 (%struct.cbb_softc*)** %128, align 8
  %129 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %130 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %129, i32 0, i32 13
  %131 = load i32 (%struct.cbb_softc*)*, i32 (%struct.cbb_softc*)** %130, align 8
  %132 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %133 = call i32 %131(%struct.cbb_softc* %132)
  %134 = load i32, i32* %3, align 4
  %135 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %134)
  store %struct.sysctl_ctx_list* %135, %struct.sysctl_ctx_list** %6, align 8
  %136 = load i32, i32* %3, align 4
  %137 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %136)
  store %struct.sysctl_oid* %137, %struct.sysctl_oid** %7, align 8
  %138 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %139 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %140 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %139)
  %141 = load i32, i32* @OID_AUTO, align 4
  %142 = load i32, i32* @CTLFLAG_RD, align 4
  %143 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %144 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %143, i32 0, i32 0
  %145 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %138, i32 %140, i32 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %142, i32* %144, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %146 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %147 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %148 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %147)
  %149 = load i32, i32* @OID_AUTO, align 4
  %150 = load i32, i32* @CTLFLAG_RD, align 4
  %151 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %152 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %151, i32 0, i32 1
  %153 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %146, i32 %148, i32 %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32* %152, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %154 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %155 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %156 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %155)
  %157 = load i32, i32* @OID_AUTO, align 4
  %158 = load i32, i32* @CTLFLAG_RD, align 4
  %159 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %160 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %159, i32 0, i32 12
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %154, i32 %156, i32 %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %158, i32* %161, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %163 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %164 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %165 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %164)
  %166 = load i32, i32* @OID_AUTO, align 4
  %167 = load i32, i32* @CTLFLAG_RD, align 4
  %168 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %169 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %168, i32 0, i32 12
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %163, i32 %165, i32 %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %167, i32* %170, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %172 = load i32, i32* %3, align 4
  %173 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %174 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %173, i32 0, i32 12
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @DEVPRINTF(i32 %176)
  %178 = load i32, i32* %3, align 4
  %179 = load i32, i32* @PCIR_PRIBUS_2, align 4
  %180 = call i8* @pci_read_config(i32 %178, i32 %179, i32 1)
  %181 = ptrtoint i8* %180 to i32
  store i32 %181, i32* %4, align 4
  %182 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %183 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %182, i32 0, i32 12
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %87
  %188 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %189 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %257

193:                                              ; preds = %187, %87
  %194 = load i32, i32* @cbb_pci_attach.curr_bus_number, align 4
  %195 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %196 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp sle i32 %194, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %201 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* @cbb_pci_attach.curr_bus_number, align 4
  br label %204

204:                                              ; preds = %199, %193
  %205 = load i32, i32* %4, align 4
  %206 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %207 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %205, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %204
  %211 = load i32, i32* %3, align 4
  %212 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %213 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @DEVPRINTF(i32 %214)
  %216 = load i32, i32* %3, align 4
  %217 = load i32, i32* @PCIR_PRIBUS_2, align 4
  %218 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %219 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @pci_write_config(i32 %216, i32 %217, i32 %220, i32 1)
  br label %222

222:                                              ; preds = %210, %204
  %223 = load i32, i32* @cbb_pci_attach.curr_bus_number, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* @cbb_pci_attach.curr_bus_number, align 4
  %225 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %226 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %225, i32 0, i32 12
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  store i32 %223, i32* %227, align 8
  %228 = load i32, i32* @cbb_pci_attach.curr_bus_number, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* @cbb_pci_attach.curr_bus_number, align 4
  %230 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %231 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %230, i32 0, i32 12
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  store i32 %228, i32* %232, align 4
  %233 = load i32, i32* %3, align 4
  %234 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %235 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %234, i32 0, i32 12
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %239 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %238, i32 0, i32 12
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @DEVPRINTF(i32 %241)
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* @PCIR_SECBUS_2, align 4
  %245 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %246 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %245, i32 0, i32 12
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @pci_write_config(i32 %243, i32 %244, i32 %248, i32 1)
  %250 = load i32, i32* %3, align 4
  %251 = load i32, i32* @PCIR_SUBBUS_2, align 4
  %252 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %253 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %252, i32 0, i32 12
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @pci_write_config(i32 %250, i32 %251, i32 %255, i32 1)
  br label %257

257:                                              ; preds = %222, %187
  %258 = load i32, i32* %3, align 4
  %259 = call i8* @device_add_child(i32 %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 -1)
  %260 = bitcast i8* %259 to i32*
  %261 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %262 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %261, i32 0, i32 11
  store i32* %260, i32** %262, align 8
  %263 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %264 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %263, i32 0, i32 11
  %265 = load i32*, i32** %264, align 8
  %266 = icmp eq i32* %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %257
  %268 = load i32, i32* %3, align 4
  %269 = call i32 @DEVPRINTF(i32 ptrtoint ([34 x i8]* @.str.15 to i32))
  br label %280

270:                                              ; preds = %257
  %271 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %272 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %271, i32 0, i32 11
  %273 = load i32*, i32** %272, align 8
  %274 = call i64 @device_probe_and_attach(i32* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load i32, i32* %3, align 4
  %278 = call i32 @DEVPRINTF(i32 ptrtoint ([37 x i8]* @.str.16 to i32))
  br label %279

279:                                              ; preds = %276, %270
  br label %280

280:                                              ; preds = %279, %267
  %281 = load i32, i32* %3, align 4
  %282 = call i8* @device_add_child(i32 %281, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 -1)
  %283 = bitcast i8* %282 to i32*
  %284 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %285 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %284, i32 0, i32 9
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  store i32* %283, i32** %288, align 8
  %289 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %290 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %289, i32 0, i32 9
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i64 0
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = icmp eq i32* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %280
  %297 = load i32, i32* %3, align 4
  %298 = call i32 @DEVPRINTF(i32 ptrtoint ([33 x i8]* @.str.18 to i32))
  br label %312

299:                                              ; preds = %280
  %300 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %301 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %300, i32 0, i32 9
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i64 0
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = call i64 @device_probe_and_attach(i32* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %299
  %309 = load i32, i32* %3, align 4
  %310 = call i32 @DEVPRINTF(i32 ptrtoint ([36 x i8]* @.str.19 to i32))
  br label %311

311:                                              ; preds = %308, %299
  br label %312

312:                                              ; preds = %311, %296
  store i32 0, i32* %8, align 4
  %313 = load i32, i32* %3, align 4
  %314 = load i32, i32* @SYS_RES_IRQ, align 4
  %315 = load i32, i32* @RF_SHAREABLE, align 4
  %316 = load i32, i32* @RF_ACTIVE, align 4
  %317 = or i32 %315, %316
  %318 = call i8* @bus_alloc_resource_any(i32 %313, i32 %314, i32* %8, i32 %317)
  %319 = bitcast i8* %318 to i32*
  %320 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %321 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %320, i32 0, i32 5
  store i32* %319, i32** %321, align 8
  %322 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %323 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %322, i32 0, i32 5
  %324 = load i32*, i32** %323, align 8
  %325 = icmp eq i32* %324, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %312
  %327 = load i32, i32* %3, align 4
  %328 = call i32 @device_printf(i32 %327, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  br label %393

329:                                              ; preds = %312
  %330 = load i32, i32* %3, align 4
  %331 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %332 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %331, i32 0, i32 5
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* @INTR_TYPE_AV, align 4
  %335 = load i32, i32* @INTR_MPSAFE, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* @cbb_pci_filt, align 4
  %338 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %339 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %340 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %339, i32 0, i32 10
  %341 = call i64 @bus_setup_intr(i32 %330, i32* %333, i32 %336, i32 %337, i32* null, %struct.cbb_softc* %338, i32* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %329
  %344 = load i32, i32* %3, align 4
  %345 = call i32 @device_printf(i32 %344, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  br label %393

346:                                              ; preds = %329
  %347 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %348 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %347, i32 0, i32 9
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i64 0
  %351 = load i32, i32* @EXCA_INTR, align 4
  %352 = load i32, i32* @EXCA_INTR_RESET, align 4
  %353 = call i32 @exca_clrb(%struct.TYPE_5__* %350, i32 %351, i32 %352)
  %354 = load i32, i32* %3, align 4
  %355 = load i32, i32* @CARD_OFF, align 4
  %356 = call i32 @cbb_power(i32 %354, i32 %355)
  %357 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %358 = load i32, i32* @CBB_SOCKET_MASK, align 4
  %359 = load i32, i32* @CBB_SOCKET_MASK_CD, align 4
  %360 = call i32 @cbb_setb(%struct.cbb_softc* %357, i32 %358, i32 %359)
  %361 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %362 = load i32, i32* @CBB_SOCKET_EVENT, align 4
  %363 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %364 = load i32, i32* @CBB_SOCKET_EVENT, align 4
  %365 = call i32 @cbb_get(%struct.cbb_softc* %363, i32 %364)
  %366 = call i32 @cbb_set(%struct.cbb_softc* %361, i32 %362, i32 %365)
  %367 = load i64, i64* @bootverbose, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %346
  %370 = load i32, i32* %3, align 4
  %371 = call i32 @cbb_print_config(i32 %370)
  br label %372

372:                                              ; preds = %369, %346
  %373 = load i32, i32* @cbb_event_thread, align 4
  %374 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %375 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %376 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %375, i32 0, i32 8
  %377 = load i32, i32* %3, align 4
  %378 = call i32 @device_get_nameunit(i32 %377)
  %379 = call i64 @kproc_create(i32 %373, %struct.cbb_softc* %374, i32* %376, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %372
  %382 = load i32, i32* %3, align 4
  %383 = call i32 @device_printf(i32 %382, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0))
  %384 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  br label %385

385:                                              ; preds = %381, %372
  %386 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %387 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %386, i32 0, i32 6
  %388 = load i32, i32* %387, align 8
  %389 = call i32 @device_get_nameunit(i32 %388)
  %390 = call i32 @root_mount_hold(i32 %389)
  %391 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %392 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %391, i32 0, i32 7
  store i32 %390, i32* %392, align 4
  store i32 0, i32* %2, align 4
  br label %423

393:                                              ; preds = %343, %326
  %394 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %395 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %394, i32 0, i32 5
  %396 = load i32*, i32** %395, align 8
  %397 = icmp ne i32* %396, null
  br i1 %397, label %398, label %405

398:                                              ; preds = %393
  %399 = load i32, i32* %3, align 4
  %400 = load i32, i32* @SYS_RES_IRQ, align 4
  %401 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %402 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %401, i32 0, i32 5
  %403 = load i32*, i32** %402, align 8
  %404 = call i32 @bus_release_resource(i32 %399, i32 %400, i32 0, i32* %403)
  br label %405

405:                                              ; preds = %398, %393
  %406 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %407 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %406, i32 0, i32 4
  %408 = load i32*, i32** %407, align 8
  %409 = icmp ne i32* %408, null
  br i1 %409, label %410, label %418

410:                                              ; preds = %405
  %411 = load i32, i32* %3, align 4
  %412 = load i32, i32* @SYS_RES_MEMORY, align 4
  %413 = load i32, i32* @CBBR_SOCKBASE, align 4
  %414 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %415 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %414, i32 0, i32 4
  %416 = load i32*, i32** %415, align 8
  %417 = call i32 @bus_release_resource(i32 %411, i32 %412, i32 %413, i32* %416)
  br label %418

418:                                              ; preds = %410, %405
  %419 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %420 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %419, i32 0, i32 3
  %421 = call i32 @mtx_destroy(i32* %420)
  %422 = load i32, i32* @ENOMEM, align 4
  store i32 %422, i32* %2, align 4
  br label %423

423:                                              ; preds = %418, %385, %73
  %424 = load i32, i32* %2, align 4
  ret i32 %424
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @cbb_chipset(i32, i32*) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_get_domain(i32) #1

declare dso_local i32 @pcib_get_bus(i32) #1

declare dso_local i8* @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @DEVPRINTF(i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @exca_init(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @cbb_chipinit(%struct.cbb_softc*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i8* @device_add_child(i32, i8*, i32) #1

declare dso_local i64 @device_probe_and_attach(i32*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.cbb_softc*, i32*) #1

declare dso_local i32 @exca_clrb(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @cbb_power(i32, i32) #1

declare dso_local i32 @cbb_setb(%struct.cbb_softc*, i32, i32) #1

declare dso_local i32 @cbb_set(%struct.cbb_softc*, i32, i32) #1

declare dso_local i32 @cbb_get(%struct.cbb_softc*, i32) #1

declare dso_local i32 @cbb_print_config(i32) #1

declare dso_local i64 @kproc_create(i32, %struct.cbb_softc*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @root_mount_hold(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
