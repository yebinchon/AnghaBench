; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, i32, i32, i64, i64, i32*, i32, i32*, i64, i32*, i8*, i8*, i8*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32 }

@MPT_RAID_RESYNC_RATE_DEFAULT = common dso_local global i32 0, align 4
@MPT_RAID_MWCE_DEFAULT = common dso_local global i32 0, align 4
@MPT_RAID_QUEUE_DEPTH_DEFAULT = common dso_local global i32 0, align 4
@MPT_PRT_NONE = common dso_local global i64 0, align 8
@MPT_ROLE_NONE = common dso_local global i32 0, align 4
@MPT_INI_ID_NONE = common dso_local global i32 0, align 4
@MPT_PRT_WARN = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_PERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@PCIM_CMD_MWRICEN = common dso_local global i32 0, align 4
@PCIR_BIOS = common dso_local global i32 0, align 4
@PCIM_BIOS_ENABLE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to map registers in PIO mode\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to memory map registers.\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Giving Up.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Falling back to PIO mode.\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"could not allocate interrupt\0A\00", align 1
@MPT_IFLAGS = common dso_local global i32 0, align 4
@mpt_pci_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"could not setup interrupt\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Could not allocate DMA memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"device disabled at user request\0A\00", align 1
@shutdown_post_sync = common dso_local global i32 0, align 4
@mpt_pci_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"shutdown event registration failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpt_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @device_get_softc(i32 %9)
  %11 = inttoptr i64 %10 to %struct.mpt_softc*
  store %struct.mpt_softc* %11, %struct.mpt_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pci_get_device(i32 %12)
  switch i32 %13, label %23 [
    i32 151, label %14
    i32 152, label %14
    i32 150, label %14
    i32 147, label %14
    i32 146, label %14
    i32 143, label %14
    i32 145, label %14
    i32 144, label %14
    i32 149, label %14
    i32 148, label %14
    i32 142, label %14
    i32 141, label %14
    i32 129, label %17
    i32 128, label %17
    i32 138, label %20
    i32 137, label %20
    i32 136, label %20
    i32 135, label %20
    i32 134, label %20
    i32 133, label %20
    i32 132, label %20
    i32 131, label %20
    i32 130, label %20
  ]

14:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %15 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %26

17:                                               ; preds = %1, %1
  %18 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %17
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %22 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %21, i32 0, i32 2
  store i32 1, i32* %22, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %24, i32 0, i32 3
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20, %14
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %29 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %28, i32 0, i32 22
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_get_unit(i32 %30)
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %33 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %32, i32 0, i32 21
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @MPT_RAID_RESYNC_RATE_DEFAULT, align 4
  %35 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %36 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %35, i32 0, i32 20
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @MPT_RAID_MWCE_DEFAULT, align 4
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %39 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %38, i32 0, i32 19
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @MPT_RAID_QUEUE_DEPTH_DEFAULT, align 4
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %42 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %41, i32 0, i32 18
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* @MPT_PRT_NONE, align 8
  %44 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %45 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @MPT_ROLE_NONE, align 4
  %47 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %48 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %47, i32 0, i32 17
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @MPT_INI_ID_NONE, align 4
  %50 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %51 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %50, i32 0, i32 16
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %53 = call i32 @mpt_set_options(%struct.mpt_softc* %52)
  %54 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %55 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MPT_PRT_NONE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %26
  %60 = load i64, i64* @MPT_PRT_WARN, align 8
  %61 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %62 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* @bootverbose, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = sext i32 %66 to i64
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %69 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %59, %26
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @PCIR_COMMAND, align 4
  %75 = call i32 @pci_read_config(i32 %73, i32 %74, i32 2)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %77 = load i32, i32* @PCIM_CMD_PERRESPEN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @PCIM_CMD_MWRICEN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @PCIR_COMMAND, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @pci_write_config(i32 %85, i32 %86, i32 %87, i32 2)
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @PCIR_BIOS, align 4
  %91 = call i32 @pci_read_config(i32 %89, i32 %90, i32 4)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @PCIM_BIOS_ENABLE, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @PCIR_BIOS, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @pci_write_config(i32 %96, i32 %97, i32 %98, i32 4)
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @PCIR_BAR(i32 0)
  %102 = call i32 @pci_read_config(i32 %100, i32 %101, i32 4)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @PCI_BAR_IO(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %72
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %108

107:                                              ; preds = %72
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @PCIR_BAR(i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @SYS_RES_IOPORT, align 4
  %113 = load i32, i32* @RF_ACTIVE, align 4
  %114 = call i8* @bus_alloc_resource_any(i32 %111, i32 %112, i32* %7, i32 %113)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %117 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %116, i32 0, i32 15
  store i32* %115, i32** %117, align 8
  %118 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %119 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %118, i32 0, i32 15
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %108
  %123 = load i64, i64* @bootverbose, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @device_printf(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %122
  br label %142

129:                                              ; preds = %108
  %130 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %131 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %130, i32 0, i32 15
  %132 = load i32*, i32** %131, align 8
  %133 = call i8* @rman_get_bustag(i32* %132)
  %134 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %135 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %134, i32 0, i32 14
  store i8* %133, i8** %135, align 8
  %136 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %137 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %136, i32 0, i32 15
  %138 = load i32*, i32** %137, align 8
  %139 = call i8* @rman_get_bushandle(i32* %138)
  %140 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %141 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %140, i32 0, i32 13
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %129, %128
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @PCIR_BAR(i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @SYS_RES_MEMORY, align 4
  %147 = load i32, i32* @RF_ACTIVE, align 4
  %148 = call i8* @bus_alloc_resource_any(i32 %145, i32 %146, i32* %8, i32 %147)
  %149 = bitcast i8* %148 to i32*
  %150 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %151 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %150, i32 0, i32 10
  store i32* %149, i32** %151, align 8
  %152 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %153 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %152, i32 0, i32 10
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %202

156:                                              ; preds = %142
  %157 = load i64, i64* @bootverbose, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %169, label %159

159:                                              ; preds = %156
  %160 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %161 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %166 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %165, i32 0, i32 15
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %164, %159, %156
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @device_printf(i32 %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %164
  %173 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %174 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %172
  %178 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %179 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %178, i32 0, i32 15
  %180 = load i32*, i32** %179, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %177, %172
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @device_printf(i32 %183, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %331

185:                                              ; preds = %177
  %186 = load i64, i64* @bootverbose, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @device_printf(i32 %189, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %185
  %192 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %193 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %192, i32 0, i32 14
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %196 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %195, i32 0, i32 12
  store i8* %194, i8** %196, align 8
  %197 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %198 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %197, i32 0, i32 13
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %201 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %200, i32 0, i32 11
  store i8* %199, i8** %201, align 8
  br label %215

202:                                              ; preds = %142
  %203 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %204 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %203, i32 0, i32 10
  %205 = load i32*, i32** %204, align 8
  %206 = call i8* @rman_get_bustag(i32* %205)
  %207 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %208 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %207, i32 0, i32 12
  store i8* %206, i8** %208, align 8
  %209 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %210 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %209, i32 0, i32 10
  %211 = load i32*, i32** %210, align 8
  %212 = call i8* @rman_get_bushandle(i32* %211)
  %213 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %214 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %213, i32 0, i32 11
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %202, %191
  store i32 0, i32* %5, align 4
  %216 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %217 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %216, i32 0, i32 9
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %215
  store i32 1, i32* %6, align 4
  %221 = load i32, i32* %3, align 4
  %222 = call i64 @pci_alloc_msix(i32 %221, i32* %6)
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store i32 1, i32* %5, align 4
  br label %225

225:                                              ; preds = %224, %220
  store i32 1, i32* %6, align 4
  %226 = load i32, i32* %5, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i32, i32* %3, align 4
  %230 = call i64 @pci_alloc_msi(i32 %229, i32* %6)
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  store i32 1, i32* %5, align 4
  br label %233

233:                                              ; preds = %232, %228, %225
  br label %234

234:                                              ; preds = %233, %215
  %235 = load i32, i32* %3, align 4
  %236 = load i32, i32* @SYS_RES_IRQ, align 4
  %237 = load i32, i32* @RF_ACTIVE, align 4
  %238 = load i32, i32* %5, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %243

241:                                              ; preds = %234
  %242 = load i32, i32* @RF_SHAREABLE, align 4
  br label %243

243:                                              ; preds = %241, %240
  %244 = phi i32 [ 0, %240 ], [ %242, %241 ]
  %245 = or i32 %237, %244
  %246 = call i8* @bus_alloc_resource_any(i32 %235, i32 %236, i32* %5, i32 %245)
  %247 = bitcast i8* %246 to i32*
  %248 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %249 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %248, i32 0, i32 8
  store i32* %247, i32** %249, align 8
  %250 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %251 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %250, i32 0, i32 8
  %252 = load i32*, i32** %251, align 8
  %253 = icmp eq i32* %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %243
  %255 = load i32, i32* %3, align 4
  %256 = call i32 @device_printf(i32 %255, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %331

257:                                              ; preds = %243
  %258 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %259 = call i32 @MPT_LOCK_SETUP(%struct.mpt_softc* %258)
  %260 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %261 = call i32 @mpt_disable_ints(%struct.mpt_softc* %260)
  %262 = load i32, i32* %3, align 4
  %263 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %264 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %263, i32 0, i32 8
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* @MPT_IFLAGS, align 4
  %267 = load i32, i32* @mpt_pci_intr, align 4
  %268 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %269 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %270 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %269, i32 0, i32 7
  %271 = call i64 @bus_setup_intr(i32 %262, i32* %265, i32 %266, i32* null, i32 %267, %struct.mpt_softc* %268, i32* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %257
  %274 = load i32, i32* %3, align 4
  %275 = call i32 @device_printf(i32 %274, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %331

276:                                              ; preds = %257
  %277 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %278 = call i64 @mpt_dma_mem_alloc(%struct.mpt_softc* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %282 = call i32 @mpt_prt(%struct.mpt_softc* %281, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %331

283:                                              ; preds = %276
  %284 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %285 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %283
  %289 = load i32, i32* %3, align 4
  %290 = load i32, i32* @SYS_RES_IOPORT, align 4
  %291 = call i32 @pci_disable_io(i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %288, %283
  %293 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %294 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %293, i32 0, i32 5
  %295 = load i64, i64* %294, align 8
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %292
  %298 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %299 = call i64 @mpt_attach(%struct.mpt_softc* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  br label %331

302:                                              ; preds = %297
  br label %306

303:                                              ; preds = %292
  %304 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %305 = call i32 @mpt_prt(%struct.mpt_softc* %304, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %331

306:                                              ; preds = %302
  %307 = load i32, i32* @shutdown_post_sync, align 4
  %308 = load i32, i32* @mpt_pci_shutdown, align 4
  %309 = load i32, i32* %3, align 4
  %310 = load i32, i32* @SHUTDOWN_PRI_LAST, align 4
  %311 = call i32* @EVENTHANDLER_REGISTER(i32 %307, i32 %308, i32 %309, i32 %310)
  %312 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %313 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %312, i32 0, i32 6
  store i32* %311, i32** %313, align 8
  %314 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %315 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %314, i32 0, i32 6
  %316 = load i32*, i32** %315, align 8
  %317 = icmp eq i32* %316, null
  br i1 %317, label %318, label %330

318:                                              ; preds = %306
  %319 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %320 = call i32 @mpt_prt(%struct.mpt_softc* %319, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %321 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %322 = call i32 @mpt_disable_ints(%struct.mpt_softc* %321)
  %323 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %324 = call i32 @mpt_detach(%struct.mpt_softc* %323)
  %325 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %326 = load i32, i32* @FALSE, align 4
  %327 = call i32 @mpt_reset(%struct.mpt_softc* %325, i32 %326)
  %328 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %329 = call i32 @mpt_raid_free_mem(%struct.mpt_softc* %328)
  br label %331

330:                                              ; preds = %306
  store i32 0, i32* %2, align 4
  br label %338

331:                                              ; preds = %318, %303, %301, %280, %273, %254, %182
  %332 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %333 = call i32 @mpt_dma_mem_free(%struct.mpt_softc* %332)
  %334 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %335 = call i32 @mpt_free_bus_resources(%struct.mpt_softc* %334)
  %336 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %337 = call i32 @MPT_LOCK_DESTROY(%struct.mpt_softc* %336)
  store i32 0, i32* %2, align 4
  br label %338

338:                                              ; preds = %331, %330
  %339 = load i32, i32* %2, align 4
  ret i32 %339
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mpt_set_options(%struct.mpt_softc*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i64 @PCI_BAR_IO(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @MPT_LOCK_SETUP(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_disable_ints(%struct.mpt_softc*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.mpt_softc*, i32*) #1

declare dso_local i64 @mpt_dma_mem_alloc(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @pci_disable_io(i32, i32) #1

declare dso_local i64 @mpt_attach(%struct.mpt_softc*) #1

declare dso_local i32* @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

declare dso_local i32 @mpt_detach(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_reset(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_raid_free_mem(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_dma_mem_free(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_free_bus_resources(%struct.mpt_softc*) #1

declare dso_local i32 @MPT_LOCK_DESTROY(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
