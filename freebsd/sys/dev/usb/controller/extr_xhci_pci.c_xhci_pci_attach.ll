; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci_pci.c_xhci_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci_pci.c_xhci_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i32, %struct.TYPE_4__, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@PCI_XHCI_CBMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@xhci_pci_port_route = common dso_local global i32 0, align 4
@XHCI_IMOD_DEFAULT_LP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not initialize softc\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@xhci_use_msix = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to map MSI-X table \0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"MSI-X enabled\0A\00", align 1
@xhci_use_msi = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"MSI enabled\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Could not allocate IRQ\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@xhci_interrupt = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"Could not setup IRQ, err=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Interrupt polling at %dHz\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"XHCI halt/start/probe failed err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xhci_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.xhci_softc* @device_get_softc(i32 %11)
  store %struct.xhci_softc* %12, %struct.xhci_softc** %4, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @PCI_XHCI_CBMEM, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i8* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %8, i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %20 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %19, i32 0, i32 7
  store i32* %18, i32** %20, align 8
  %21 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %22 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %2, align 4
  br label %303

29:                                               ; preds = %1
  %30 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %31 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @rman_get_bustag(i32* %32)
  %34 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %35 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %34, i32 0, i32 12
  store i32 %33, i32* %35, align 8
  %36 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %37 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @rman_get_bushandle(i32* %38)
  %40 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %41 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 4
  %42 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %43 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @rman_get_size(i32* %44)
  %46 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %47 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @pci_get_devid(i32 %48)
  switch i32 %49, label %60 [
    i32 26480691, label %50
    i32 1317138, label %50
    i32 268442483, label %51
    i32 255164550, label %52
    i32 -1674477434, label %52
    i32 506560646, label %52
    i32 -1942912890, label %52
    i32 -1934524282, label %52
    i32 -1666088826, label %52
  ]

50:                                               ; preds = %29, %29
  store i32 1, i32* %10, align 4
  br label %60

51:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %60

52:                                               ; preds = %29, %29, %29, %29, %29, %29
  %53 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %54 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %53, i32 0, i32 9
  store i32* @xhci_pci_port_route, i32** %54, align 8
  %55 = load i32, i32* @XHCI_IMOD_DEFAULT_LP, align 4
  %56 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %57 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %59 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %29, %52, %51, %50
  %61 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @xhci_init(%struct.xhci_softc* %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @SYS_RES_MEMORY, align 4
  %71 = load i32, i32* @PCI_XHCI_CBMEM, align 4
  %72 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %73 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @bus_release_resource(i32 %69, i32 %70, i32 %71, i32* %74)
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %2, align 4
  br label %303

77:                                               ; preds = %60
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @pci_enable_busmaster(i32 %78)
  %80 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %81 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %80, i32 0, i32 6
  %82 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %83 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = call i32 @usb_callout_init_mtx(i32* %81, i32* %84, i32 0)
  store i32 0, i32* %8, align 4
  %86 = load i64, i64* @xhci_use_msix, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %130

88:                                               ; preds = %77
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @pci_msix_table_bar(i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %130

92:                                               ; preds = %88
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @SYS_RES_MEMORY, align 4
  %95 = load i32, i32* @RF_ACTIVE, align 4
  %96 = call i8* @bus_alloc_resource_any(i32 %93, i32 %94, i32* %7, i32 %95)
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %99 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %98, i32 0, i32 5
  store i32* %97, i32** %99, align 8
  %100 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %101 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = load i32, i32* %3, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %129

107:                                              ; preds = %92
  store i32 1, i32* %5, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i64 @pci_alloc_msix(i32 %108, i32* %5)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i64, i64* @bootverbose, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %3, align 4
  %116 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %111
  store i32 1, i32* %8, align 4
  br label %128

118:                                              ; preds = %107
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @SYS_RES_MEMORY, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %123 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @bus_release_resource(i32 %119, i32 %120, i32 %121, i32* %124)
  %126 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %127 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %126, i32 0, i32 5
  store i32* null, i32** %127, align 8
  br label %128

128:                                              ; preds = %118, %117
  br label %129

129:                                              ; preds = %128, %104
  br label %130

130:                                              ; preds = %129, %88, %77
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %130
  %134 = load i64, i64* @xhci_use_msi, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %133
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %136
  store i32 1, i32* %5, align 4
  %140 = load i32, i32* %3, align 4
  %141 = call i64 @pci_alloc_msi(i32 %140, i32* %5)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i64, i64* @bootverbose, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %3, align 4
  %148 = call i32 (i32, i8*, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %143
  store i32 1, i32* %8, align 4
  br label %150

150:                                              ; preds = %149, %139
  br label %151

151:                                              ; preds = %150, %136, %133, %130
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @SYS_RES_IRQ, align 4
  %154 = load i32, i32* @RF_ACTIVE, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %160

158:                                              ; preds = %151
  %159 = load i32, i32* @RF_SHAREABLE, align 4
  br label %160

160:                                              ; preds = %158, %157
  %161 = phi i32 [ 0, %157 ], [ %159, %158 ]
  %162 = or i32 %154, %161
  %163 = call i8* @bus_alloc_resource_any(i32 %152, i32 %153, i32* %8, i32 %162)
  %164 = bitcast i8* %163 to i32*
  %165 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %166 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %165, i32 0, i32 3
  store i32* %164, i32** %166, align 8
  %167 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %168 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %160
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @pci_release_msi(i32 %172)
  %174 = load i32, i32* %3, align 4
  %175 = call i32 (i32, i8*, ...) @device_printf(i32 %174, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %176

176:                                              ; preds = %171, %160
  %177 = load i32, i32* %3, align 4
  %178 = call i32* @device_add_child(i32 %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %179 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %180 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  store i32* %178, i32** %181, align 8
  %182 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %183 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %176
  %188 = load i32, i32* %3, align 4
  %189 = call i32 (i32, i8*, ...) @device_printf(i32 %188, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %299

190:                                              ; preds = %176
  %191 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %192 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %196 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %195, i32 0, i32 1
  %197 = call i32 @device_set_ivars(i32* %194, %struct.TYPE_4__* %196)
  %198 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %199 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = call i32 @pci_get_vendor(i32 %201)
  %203 = call i32 @sprintf(i32 %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %202)
  %204 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %205 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %245

208:                                              ; preds = %190
  %209 = load i32, i32* %3, align 4
  %210 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %211 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* @INTR_TYPE_BIO, align 4
  %214 = load i32, i32* @INTR_MPSAFE, align 4
  %215 = or i32 %213, %214
  %216 = load i64, i64* @xhci_interrupt, align 8
  %217 = inttoptr i64 %216 to i32*
  %218 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %219 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %220 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %219, i32 0, i32 2
  %221 = call i32 @bus_setup_intr(i32 %209, i32* %212, i32 %215, i32* null, i32* %217, %struct.xhci_softc* %218, i32** %220)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %244

224:                                              ; preds = %208
  %225 = load i32, i32* %3, align 4
  %226 = load i32, i32* @SYS_RES_IRQ, align 4
  %227 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %228 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @rman_get_rid(i32* %229)
  %231 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %232 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @bus_release_resource(i32 %225, i32 %226, i32 %230, i32* %233)
  %235 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %236 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %235, i32 0, i32 3
  store i32* null, i32** %236, align 8
  %237 = load i32, i32* %3, align 4
  %238 = call i32 @pci_release_msi(i32 %237)
  %239 = load i32, i32* %3, align 4
  %240 = load i32, i32* %6, align 4
  %241 = call i32 (i32, i8*, ...) @device_printf(i32 %239, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %240)
  %242 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %243 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %242, i32 0, i32 2
  store i32* null, i32** %243, align 8
  br label %244

244:                                              ; preds = %224, %208
  br label %245

245:                                              ; preds = %244, %190
  %246 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %247 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %246, i32 0, i32 3
  %248 = load i32*, i32** %247, align 8
  %249 = icmp eq i32* %248, null
  br i1 %249, label %255, label %250

250:                                              ; preds = %245
  %251 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %252 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %272

255:                                              ; preds = %250, %245
  %256 = call i64 (...) @xhci_use_polling()
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %255
  %259 = load i32, i32* %3, align 4
  %260 = load i32, i32* @hz, align 4
  %261 = call i32 (i32, i8*, ...) @device_printf(i32 %259, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %260)
  %262 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %263 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %262, i32 0, i32 1
  %264 = call i32 @USB_BUS_LOCK(%struct.TYPE_4__* %263)
  %265 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %266 = call i32 @xhci_interrupt_poll(%struct.xhci_softc* %265)
  %267 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %268 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %267, i32 0, i32 1
  %269 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_4__* %268)
  br label %271

270:                                              ; preds = %255
  br label %299

271:                                              ; preds = %258
  br label %272

272:                                              ; preds = %271, %250
  %273 = load i32, i32* %3, align 4
  %274 = call i32 @xhci_pci_take_controller(i32 %273)
  %275 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %276 = call i32 @xhci_halt_controller(%struct.xhci_softc* %275)
  store i32 %276, i32* %6, align 4
  %277 = load i32, i32* %6, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %272
  %280 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %281 = call i32 @xhci_start_controller(%struct.xhci_softc* %280)
  store i32 %281, i32* %6, align 4
  br label %282

282:                                              ; preds = %279, %272
  %283 = load i32, i32* %6, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %282
  %286 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %287 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = call i32 @device_probe_and_attach(i32* %289)
  store i32 %290, i32* %6, align 4
  br label %291

291:                                              ; preds = %285, %282
  %292 = load i32, i32* %6, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* %6, align 4
  %297 = call i32 (i32, i8*, ...) @device_printf(i32 %295, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %296)
  br label %299

298:                                              ; preds = %291
  store i32 0, i32* %2, align 4
  br label %303

299:                                              ; preds = %294, %270, %187
  %300 = load i32, i32* %3, align 4
  %301 = call i32 @xhci_pci_detach(i32 %300)
  %302 = load i32, i32* @ENXIO, align 4
  store i32 %302, i32* %2, align 4
  br label %303

303:                                              ; preds = %299, %298, %66, %25
  %304 = load i32, i32* %2, align 4
  ret i32 %304
}

declare dso_local %struct.xhci_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i64 @xhci_init(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @pci_msix_table_bar(i32) #1

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.xhci_softc*, i32**) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i64 @xhci_use_polling(...) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @xhci_interrupt_poll(%struct.xhci_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @xhci_pci_take_controller(i32) #1

declare dso_local i32 @xhci_halt_controller(%struct.xhci_softc*) #1

declare dso_local i32 @xhci_start_controller(%struct.xhci_softc*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @xhci_pci_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
