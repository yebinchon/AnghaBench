; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo_pci.c_malo_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo_pci.c_malo_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_pci_softc = type { i32, i32*, i32, i32*, i32, i32*, %struct.malo_softc }
%struct.malo_softc = type { i32, i32, i8*, i8*, i8*, i8*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@malo_res_spec_mem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"couldn't allocate memory resources\0A\00", align 1
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"MSI count : %d\0A\00", align 1
@malo_res_spec_legacy = common dso_local global i32 0, align 4
@MALO_MSI_MESSAGES = common dso_local global i32 0, align 4
@msi_disable = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Using %d MSI messages\0A\00", align 1
@malo_res_spec_msi = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"couldn't allocate IRQ resources\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@malo_intr = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot allocate DMA tag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @malo_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.malo_pci_softc*, align 8
  %9 = alloca %struct.malo_softc*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.malo_pci_softc* @device_get_softc(i32 %11)
  store %struct.malo_pci_softc* %12, %struct.malo_pci_softc** %8, align 8
  %13 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %14 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %13, i32 0, i32 6
  store %struct.malo_softc* %14, %struct.malo_softc** %9, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %17 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pci_enable_busmaster(i32 %18)
  %20 = load i32, i32* @malo_res_spec_mem, align 4
  %21 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %22 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %25 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %28 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @bus_alloc_resources(i32 %23, i32 %26, i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %289

37:                                               ; preds = %1
  %38 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %39 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @PCIY_EXPRESS, align 4
  %42 = call i64 @pci_find_cap(i32 %40, i32 %41, i32* %7)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @pci_msi_count(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i64, i64* @bootverbose, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %44
  br label %55

54:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* @malo_res_spec_legacy, align 4
  %57 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %58 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MALO_MSI_MESSAGES, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %55
  %63 = load i64, i64* @msi_disable, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load i32, i32* %3, align 4
  %67 = call i64 @pci_alloc_msi(i32 %66, i32* %6)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MALO_MSI_MESSAGES, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @malo_res_spec_msi, align 4
  %78 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %79 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %81 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %85

82:                                               ; preds = %69
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @pci_release_msi(i32 %83)
  br label %85

85:                                               ; preds = %82, %73
  br label %86

86:                                               ; preds = %85, %65
  br label %87

87:                                               ; preds = %86, %62, %55
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %90 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %93 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @bus_alloc_resources(i32 %88, i32 %91, i32* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %271

101:                                              ; preds = %87
  %102 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %103 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %101
  %107 = load i32, i32* %3, align 4
  %108 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %109 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @INTR_TYPE_NET, align 4
  %114 = load i32, i32* @INTR_MPSAFE, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @malo_intr, align 4
  %117 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %118 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %119 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = call i32 @bus_setup_intr(i32 %107, i32 %112, i32 %115, i32 %116, i32* null, %struct.malo_softc* %117, i32* %121)
  store i32 %122, i32* %4, align 4
  br label %157

123:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %153, %123
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @MALO_MSI_MESSAGES, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %124
  %129 = load i32, i32* %3, align 4
  %130 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %131 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @INTR_TYPE_NET, align 4
  %138 = load i32, i32* @INTR_MPSAFE, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @malo_intr, align 4
  %141 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %142 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %143 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %142, i32 0, i32 5
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = call i32 @bus_setup_intr(i32 %129, i32 %136, i32 %139, i32 %140, i32* null, %struct.malo_softc* %141, i32* %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %128
  br label %156

152:                                              ; preds = %128
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %124

156:                                              ; preds = %151, %124
  br label %157

157:                                              ; preds = %156, %106
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @bus_get_dma_tag(i32 %158)
  %160 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %161 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %162 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %163 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %164 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %165 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %164, i32 0, i32 1
  %166 = call i64 @bus_dma_tag_create(i32 %159, i32 1, i32 0, i32 %160, i32 %161, i32* null, i32* null, i32 %162, i32 0, i32 %163, i32 0, i32* null, i32* null, i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %157
  %169 = load i32, i32* %3, align 4
  %170 = call i32 (i32, i8*, ...) @device_printf(i32 %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %218

171:                                              ; preds = %157
  %172 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %173 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @rman_get_bustag(i32 %176)
  %178 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %179 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %178, i32 0, i32 5
  store i8* %177, i8** %179, align 8
  %180 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %181 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @rman_get_bushandle(i32 %184)
  %186 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %187 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %186, i32 0, i32 4
  store i8* %185, i8** %187, align 8
  %188 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %189 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @rman_get_bustag(i32 %192)
  %194 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %195 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %194, i32 0, i32 3
  store i8* %193, i8** %195, align 8
  %196 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %197 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @rman_get_bushandle(i32 %200)
  %202 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %203 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %202, i32 0, i32 2
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* %3, align 4
  %205 = call i32 @pci_get_device(i32 %204)
  %206 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %207 = call i32 @malo_attach(i32 %205, %struct.malo_softc* %206)
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* %4, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %171
  br label %213

211:                                              ; preds = %171
  %212 = load i32, i32* %4, align 4
  store i32 %212, i32* %2, align 4
  br label %289

213:                                              ; preds = %210
  %214 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %215 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @bus_dma_tag_destroy(i32 %216)
  br label %218

218:                                              ; preds = %213, %168
  %219 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %220 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %218
  %224 = load i32, i32* %3, align 4
  %225 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %226 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %225, i32 0, i32 3
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %231 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %230, i32 0, i32 5
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @bus_teardown_intr(i32 %224, i32 %229, i32 %234)
  br label %262

236:                                              ; preds = %218
  store i32 0, i32* %5, align 4
  br label %237

237:                                              ; preds = %258, %236
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* @MALO_MSI_MESSAGES, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %261

241:                                              ; preds = %237
  %242 = load i32, i32* %3, align 4
  %243 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %244 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %243, i32 0, i32 3
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %251 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %250, i32 0, i32 5
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @bus_teardown_intr(i32 %242, i32 %249, i32 %256)
  br label %258

258:                                              ; preds = %241
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %5, align 4
  br label %237

261:                                              ; preds = %237
  br label %262

262:                                              ; preds = %261, %223
  %263 = load i32, i32* %3, align 4
  %264 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %265 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %268 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %267, i32 0, i32 3
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 @bus_release_resources(i32 %263, i32 %266, i32* %269)
  br label %271

271:                                              ; preds = %262, %98
  %272 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %273 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load i32, i32* %3, align 4
  %278 = call i32 @pci_release_msi(i32 %277)
  br label %279

279:                                              ; preds = %276, %271
  %280 = load i32, i32* %3, align 4
  %281 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %282 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %8, align 8
  %285 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = call i32 @bus_release_resources(i32 %280, i32 %283, i32* %286)
  %288 = load i32, i32* %4, align 4
  store i32 %288, i32* %2, align 4
  br label %289

289:                                              ; preds = %279, %211, %33
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local %struct.malo_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.malo_softc*, i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i8* @rman_get_bustag(i32) #1

declare dso_local i8* @rman_get_bushandle(i32) #1

declare dso_local i32 @malo_attach(i32, %struct.malo_softc*) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
