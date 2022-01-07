; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32, i32, i32, i32, i32*, i32*, i64, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"intsmb\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@AMDSB8_SMBUS_REVID = common dso_local global i32 0, align 4
@PCI_BASE_ADDR_SMB = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not allocate I/O space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCIR_INTLINE = common dso_local global i32 0, align 4
@PCI_HST_CFG_SMB = common dso_local global i32 0, align 4
@PCI_INTR_SMB_ENABLE = common dso_local global i32 0, align 4
@PCI_INTR_SMB_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"SMI\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"IRQ 9\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PCI IRQ\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"BOGUS\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"intr %s %s \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"revision %d\0A\00", align 1
@PCI_REVID_SMB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [53 x i8] c"using polling mode when configured interrupt is SMI\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Unsupported interrupt mode\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"Could not allocate irq\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@intsmb_rawintr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"Failed to map intr\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"smbus\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"failed to add smbus child\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"failed to probe+attach smbus child\0A\00", align 1
@PIIX4_SMBSLVCNT = common dso_local global i32 0, align 4
@PIIX4_SMBSLVCNT_ALTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @intsmb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.intsmb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.intsmb_softc* @device_get_softc(i32 %10)
  store %struct.intsmb_softc* %11, %struct.intsmb_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %14 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %13, i32 0, i32 10
  store i32 %12, i32* %14, align 4
  %15 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %16 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %15, i32 0, i32 9
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_nameunit(i32 %17)
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %16, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %22 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pci_get_devid(i32 %23)
  switch i32 %24, label %40 [
    i32 1897103494, label %25
    i32 1906016390, label %25
    i32 131, label %28
    i32 132, label %37
    i32 133, label %37
  ]

25:                                               ; preds = %1, %1
  %26 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %27 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %40

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pci_get_revid(i32 %29)
  %31 = load i32, i32* @AMDSB8_SMBUS_REVID, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %35 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %28
  br label %40

37:                                               ; preds = %1, %1
  %38 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %39 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %1, %37, %36, %25
  %41 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %42 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @sb8xx_attach(i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %221

51:                                               ; preds = %45
  br label %195

52:                                               ; preds = %40
  %53 = load i32, i32* @PCI_BASE_ADDR_SMB, align 4
  %54 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %55 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @SYS_RES_IOPORT, align 4
  %58 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %59 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %58, i32 0, i32 2
  %60 = load i32, i32* @RF_ACTIVE, align 4
  %61 = call i8* @bus_alloc_resource_any(i32 %56, i32 %57, i32* %59, i32 %60)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %64 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  %65 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %66 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %52
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %5, align 4
  br label %221

73:                                               ; preds = %52
  %74 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %75 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @PCIR_INTLINE, align 4
  %81 = call i32 @pci_write_config(i32 %79, i32 %80, i32 9, i32 1)
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @PCI_HST_CFG_SMB, align 4
  %84 = load i32, i32* @PCI_INTR_SMB_ENABLE, align 4
  %85 = or i32 130, %84
  %86 = call i32 @pci_write_config(i32 %82, i32 %83, i32 %85, i32 1)
  br label %87

87:                                               ; preds = %78, %73
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @PCI_HST_CFG_SMB, align 4
  %90 = call i32 @pci_read_config(i32 %88, i32 %89, i32 1)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @PCI_INTR_SMB_ENABLE, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %97 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @PCI_INTR_SMB_MASK, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  switch i32 %101, label %105 [
    i32 128, label %102
    i32 130, label %103
    i32 129, label %104
  ]

102:                                              ; preds = %87
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %106

103:                                              ; preds = %87
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %106

104:                                              ; preds = %87
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %106

105:                                              ; preds = %87
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %106

106:                                              ; preds = %105, %104, %103, %102
  %107 = load i32, i32* %3, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %110 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %108, i8* %114)
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @PCI_REVID_SMB, align 4
  %118 = call i32 @pci_read_config(i32 %116, i32 %117, i32 1)
  %119 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %118)
  %120 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %121 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %106
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %125, 128
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* %3, align 4
  %129 = call i32 (i32, i8*, ...) @device_printf(i32 %128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  %130 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %131 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %130, i32 0, i32 3
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %124, %106
  %133 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %134 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %195

138:                                              ; preds = %132
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 130
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 129
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* %3, align 4
  %146 = call i32 (i32, i8*, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %147 = load i32, i32* @ENXIO, align 4
  store i32 %147, i32* %5, align 4
  br label %221

148:                                              ; preds = %141, %138
  store i32 0, i32* %6, align 4
  %149 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %150 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @SYS_RES_IRQ, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @bus_set_resource(i32 %154, i32 %155, i32 %156, i32 9, i32 1)
  br label %158

158:                                              ; preds = %153, %148
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* @SYS_RES_IRQ, align 4
  %161 = load i32, i32* @RF_SHAREABLE, align 4
  %162 = load i32, i32* @RF_ACTIVE, align 4
  %163 = or i32 %161, %162
  %164 = call i8* @bus_alloc_resource_any(i32 %159, i32 %160, i32* %6, i32 %163)
  %165 = bitcast i8* %164 to i32*
  %166 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %167 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %166, i32 0, i32 8
  store i32* %165, i32** %167, align 8
  %168 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %169 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %168, i32 0, i32 8
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %158
  %173 = load i32, i32* %3, align 4
  %174 = call i32 (i32, i8*, ...) @device_printf(i32 %173, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %175 = load i32, i32* @ENXIO, align 4
  store i32 %175, i32* %5, align 4
  br label %221

176:                                              ; preds = %158
  %177 = load i32, i32* %3, align 4
  %178 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %179 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %178, i32 0, i32 8
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @INTR_TYPE_MISC, align 4
  %182 = load i32, i32* @INTR_MPSAFE, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @intsmb_rawintr, align 4
  %185 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %186 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %187 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %186, i32 0, i32 7
  %188 = call i32 @bus_setup_intr(i32 %177, i32* %180, i32 %183, i32* null, i32 %184, %struct.intsmb_softc* %185, i32* %187)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %176
  %192 = load i32, i32* %3, align 4
  %193 = call i32 (i32, i8*, ...) @device_printf(i32 %192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %221

194:                                              ; preds = %176
  br label %195

195:                                              ; preds = %194, %137, %51
  %196 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %197 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %196, i32 0, i32 6
  store i64 0, i64* %197, align 8
  %198 = load i32, i32* %3, align 4
  %199 = call i32* @device_add_child(i32 %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 -1)
  %200 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %201 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %200, i32 0, i32 5
  store i32* %199, i32** %201, align 8
  %202 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %203 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %202, i32 0, i32 5
  %204 = load i32*, i32** %203, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %195
  %207 = load i32, i32* %3, align 4
  %208 = call i32 (i32, i8*, ...) @device_printf(i32 %207, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %209 = load i32, i32* @ENXIO, align 4
  store i32 %209, i32* %5, align 4
  br label %221

210:                                              ; preds = %195
  %211 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %212 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @device_probe_and_attach(i32* %213)
  store i32 %214, i32* %5, align 4
  %215 = load i32, i32* %5, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %210
  %218 = load i32, i32* %3, align 4
  %219 = call i32 (i32, i8*, ...) @device_printf(i32 %218, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  br label %221

220:                                              ; preds = %210
  store i32 0, i32* %2, align 4
  br label %225

221:                                              ; preds = %217, %206, %191, %172, %144, %69, %50
  %222 = load i32, i32* %3, align 4
  %223 = call i32 @intsmb_release_resources(i32 %222)
  %224 = load i32, i32* %5, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %221, %220
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.intsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @sb8xx_attach(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.intsmb_softc*, i32*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @intsmb_release_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
