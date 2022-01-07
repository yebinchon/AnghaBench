; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahd_pci.c_ahd_pci_map_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahd_pci.c_ahd_pci_map_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, %struct.TYPE_2__*, i8**, i8**, i32 }
%struct.TYPE_2__ = type { i32*, i32*, %struct.resource** }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"allow_memio\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Defaulting to MEMIO on\0A\00", align 1
@AHD_PCIX_MMAPIO_BUG = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@AHD_PCI_MEMADDR = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"PCI Device %d:%d:%d failed memory mapped test.  Using PIO.\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@AHD_PCI_IOADDR0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"can't allocate register resources\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AHD_PCI_IOADDR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_pci_map_registers(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.resource* null, %struct.resource** %4, align 8
  store %struct.resource* null, %struct.resource** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @device_get_name(i32 %13)
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @device_get_unit(i32 %17)
  %19 = call i64 @resource_int_value(i32 %14, i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %9)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i64, i64* @bootverbose, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %21
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AHD_PCIX_MMAPIO_BUG, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %122

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %122

40:                                               ; preds = %37
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @AHD_PCI_MEMADDR, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @RF_ACTIVE, align 4
  %48 = call %struct.resource* @bus_alloc_resource_any(i32 %45, i32 %46, i32* %7, i32 %47)
  store %struct.resource* %48, %struct.resource** %4, align 8
  %49 = load %struct.resource*, %struct.resource** %4, align 8
  %50 = icmp ne %struct.resource* %49, null
  br i1 %50, label %51, label %121

51:                                               ; preds = %40
  %52 = load %struct.resource*, %struct.resource** %4, align 8
  %53 = call i8* @rman_get_bustag(%struct.resource* %52)
  %54 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %54, i32 0, i32 3
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %53, i8** %57, align 8
  %58 = load %struct.resource*, %struct.resource** %4, align 8
  %59 = call i8* @rman_get_bushandle(%struct.resource* %58)
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  store i8* %59, i8** %63, align 8
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %64, i32 0, i32 3
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %69, i32 0, i32 3
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  store i8* %68, i8** %72, align 8
  %73 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %73, i32 0, i32 3
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %78, i32 0, i32 2
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %83, i32 0, i32 2
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = call i32 @bus_space_subregion(i8* %77, i8* %82, i32 256, i32 256, i8** %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %51
  %91 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %92 = call i64 @ahd_pci_test_register_access(%struct.ahd_softc* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %90, %51
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %96 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %99 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @aic_get_pci_bus(i32 %100)
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @aic_get_pci_slot(i32 %104)
  %106 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %107 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @aic_get_pci_function(i32 %108)
  %110 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %105, i32 %109)
  %111 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %112 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.resource*, %struct.resource** %4, align 8
  %117 = call i32 @bus_release_resource(i32 %113, i32 %114, i32 %115, %struct.resource* %116)
  store %struct.resource* null, %struct.resource** %4, align 8
  %118 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %119 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %118)
  br label %120

120:                                              ; preds = %94, %90
  br label %121

121:                                              ; preds = %120, %40
  br label %122

122:                                              ; preds = %121, %37, %30
  %123 = load %struct.resource*, %struct.resource** %4, align 8
  %124 = icmp eq %struct.resource* %123, null
  br i1 %124, label %125, label %208

125:                                              ; preds = %122
  %126 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* @AHD_PCI_IOADDR0, align 4
  store i32 %127, i32* %7, align 4
  %128 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %129 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @RF_ACTIVE, align 4
  %133 = call %struct.resource* @bus_alloc_resource_any(i32 %130, i32 %131, i32* %7, i32 %132)
  store %struct.resource* %133, %struct.resource** %4, align 8
  %134 = load %struct.resource*, %struct.resource** %4, align 8
  %135 = icmp eq %struct.resource* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %125
  %137 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %138 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %141 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %142 = call i32 @AHD_UNCORRECTABLE_ERROR(%struct.ahd_softc* %141)
  %143 = load i32, i32* @ENOMEM, align 4
  store i32 %143, i32* %2, align 4
  br label %230

144:                                              ; preds = %125
  %145 = load %struct.resource*, %struct.resource** %4, align 8
  %146 = call i8* @rman_get_bustag(%struct.resource* %145)
  %147 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %148 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %147, i32 0, i32 3
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  store i8* %146, i8** %150, align 8
  %151 = load %struct.resource*, %struct.resource** %4, align 8
  %152 = call i8* @rman_get_bushandle(%struct.resource* %151)
  %153 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %154 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %153, i32 0, i32 2
  %155 = load i8**, i8*** %154, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  store i8* %152, i8** %156, align 8
  %157 = load i32, i32* @AHD_PCI_IOADDR1, align 4
  store i32 %157, i32* %8, align 4
  %158 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %159 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @RF_ACTIVE, align 4
  %163 = call %struct.resource* @bus_alloc_resource_any(i32 %160, i32 %161, i32* %8, i32 %162)
  store %struct.resource* %163, %struct.resource** %5, align 8
  %164 = load %struct.resource*, %struct.resource** %5, align 8
  %165 = icmp eq %struct.resource* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %144
  %167 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %168 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i32, i8*, ...) @device_printf(i32 %169, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %171 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %172 = call i32 @AHD_UNCORRECTABLE_ERROR(%struct.ahd_softc* %171)
  %173 = load i32, i32* @ENOMEM, align 4
  store i32 %173, i32* %2, align 4
  br label %230

174:                                              ; preds = %144
  %175 = load %struct.resource*, %struct.resource** %5, align 8
  %176 = call i8* @rman_get_bustag(%struct.resource* %175)
  %177 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %178 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %177, i32 0, i32 3
  %179 = load i8**, i8*** %178, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 1
  store i8* %176, i8** %180, align 8
  %181 = load %struct.resource*, %struct.resource** %5, align 8
  %182 = call i8* @rman_get_bushandle(%struct.resource* %181)
  %183 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %184 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %183, i32 0, i32 2
  %185 = load i8**, i8*** %184, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 1
  store i8* %182, i8** %186, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %189 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %188, i32 0, i32 1
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  store i32 %187, i32* %193, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %196 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %195, i32 0, i32 1
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  store i32 %194, i32* %200, align 4
  %201 = load %struct.resource*, %struct.resource** %5, align 8
  %202 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %203 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %202, i32 0, i32 1
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 2
  %206 = load %struct.resource**, %struct.resource*** %205, align 8
  %207 = getelementptr inbounds %struct.resource*, %struct.resource** %206, i64 1
  store %struct.resource* %201, %struct.resource** %207, align 8
  br label %208

208:                                              ; preds = %174, %122
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %211 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %210, i32 0, i32 1
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 %209, i32* %215, align 4
  %216 = load i32, i32* %7, align 4
  %217 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %218 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %217, i32 0, i32 1
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32 %216, i32* %222, align 4
  %223 = load %struct.resource*, %struct.resource** %4, align 8
  %224 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %225 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %224, i32 0, i32 1
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 2
  %228 = load %struct.resource**, %struct.resource*** %227, align 8
  %229 = getelementptr inbounds %struct.resource*, %struct.resource** %228, i64 0
  store %struct.resource* %223, %struct.resource** %229, align 8
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %208, %166, %136
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i8* @rman_get_bustag(%struct.resource*) #1

declare dso_local i8* @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @bus_space_subregion(i8*, i8*, i32, i32, i8**) #1

declare dso_local i64 @ahd_pci_test_register_access(%struct.ahd_softc*) #1

declare dso_local i32 @aic_get_pci_bus(i32) #1

declare dso_local i32 @aic_get_pci_slot(i32) #1

declare dso_local i32 @aic_get_pci_function(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_UNCORRECTABLE_ERROR(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
