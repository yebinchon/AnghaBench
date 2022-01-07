; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_probe_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_probe_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_probe = type { i8*, i32, i32*, i32*, i32*, i32, i32, i32, i32*, %struct.TYPE_2__, i32*, i32*, i8* }
%struct.TYPE_2__ = type { %struct.bhnd_erom_io }
%struct.bhnd_erom_io = type { i32 }
%struct.bhndb_hwcfg = type { i32 }
%struct.bhnd_chipid = type { i32 }

@M_BHND = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@BHND_DEFAULT_CHIPC_ADDR = common dso_local global i32 0, align 4
@BHND_DEFAULT_CORE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"device enumeration unsupported; no compatible driver found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to allocate device enumeration table parser\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"error fetching core table: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"failed to identify the host bridge core: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"I/O instance will be freed by its owning parser\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"cannot free erom-owned core table without erom reference\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_pci_probe**, i8*, i32)* @bhndb_pci_probe_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_probe_alloc(%struct.bhndb_pci_probe** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhndb_pci_probe**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhndb_pci_probe*, align 8
  %9 = alloca %struct.bhnd_erom_io*, align 8
  %10 = alloca %struct.bhndb_hwcfg*, align 8
  %11 = alloca %struct.bhnd_chipid*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.bhndb_pci_probe** %0, %struct.bhndb_pci_probe*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @device_get_parent(i8* %14)
  store i8* %15, i8** %12, align 8
  store %struct.bhnd_erom_io* null, %struct.bhnd_erom_io** %9, align 8
  %16 = load i32, i32* @M_BHND, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.bhndb_pci_probe* @malloc(i32 96, i32 %16, i32 %19)
  store %struct.bhndb_pci_probe* %20, %struct.bhndb_pci_probe** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %23 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %26 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %25, i32 0, i32 12
  store i8* %24, i8** %26, align 8
  %27 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %28 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %27, i32 0, i32 11
  store i32* null, i32** %28, align 8
  %29 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %30 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %29, i32 0, i32 10
  store i32* null, i32** %30, align 8
  %31 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %32 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  %33 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %34 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %33, i32 0, i32 9
  %35 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %36 = call i32 @bhndb_pci_eio_init(%struct.TYPE_2__* %34, %struct.bhndb_pci_probe* %35)
  %37 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %38 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %37, i32 0, i32 9
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.bhnd_erom_io* %39, %struct.bhnd_erom_io** %9, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call %struct.bhndb_hwcfg* @BHNDB_BUS_GET_GENERIC_HWCFG(i8* %40, i8* %41)
  store %struct.bhndb_hwcfg* %42, %struct.bhndb_hwcfg** %10, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call %struct.bhnd_chipid* @BHNDB_BUS_GET_CHIPID(i8* %43, i8* %44)
  store %struct.bhnd_chipid* %45, %struct.bhnd_chipid** %11, align 8
  %46 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %47 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %46, i32 0, i32 2
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %10, align 8
  %51 = call i32 @bhndb_alloc_host_resources(i32** %47, i8* %48, i8* %49, %struct.bhndb_hwcfg* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %3
  %55 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %56 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  br label %140

57:                                               ; preds = %3
  %58 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %9, align 8
  %59 = load i32, i32* @BHND_DEFAULT_CHIPC_ADDR, align 4
  %60 = load i32, i32* @BHND_DEFAULT_CORE_SIZE, align 4
  %61 = call i32 @bhnd_erom_io_map(%struct.bhnd_erom_io* %58, i32 %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %140

65:                                               ; preds = %57
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @device_get_devclass(i8* %66)
  %68 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %9, align 8
  %69 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %11, align 8
  %70 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %71 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %70, i32 0, i32 7
  %72 = call i32* @bhnd_erom_probe_driver_classes(i32 %67, %struct.bhnd_erom_io* %68, %struct.bhnd_chipid* %69, i32* %71)
  %73 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %74 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %73, i32 0, i32 8
  store i32* %72, i32** %74, align 8
  %75 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %76 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %75, i32 0, i32 8
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 (i8*, i8*, ...) @device_printf(i8* %80, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %13, align 4
  br label %140

83:                                               ; preds = %65
  %84 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %85 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %84, i32 0, i32 8
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %88 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %87, i32 0, i32 7
  %89 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %9, align 8
  %90 = call i32* @bhnd_erom_alloc(i32* %86, i32* %88, %struct.bhnd_erom_io* %89)
  %91 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %92 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %91, i32 0, i32 4
  store i32* %90, i32** %92, align 8
  %93 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %94 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %83
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 (i8*, i8*, ...) @device_printf(i8* %98, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %13, align 4
  br label %140

101:                                              ; preds = %83
  store %struct.bhnd_erom_io* null, %struct.bhnd_erom_io** %9, align 8
  %102 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %103 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %106 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %105, i32 0, i32 3
  %107 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %108 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %107, i32 0, i32 6
  %109 = call i32 @bhnd_erom_get_core_table(i32* %104, i32** %106, i32* %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %101
  %113 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %114 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 (i8*, i8*, ...) @device_printf(i8* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %119 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %118, i32 0, i32 3
  store i32* null, i32** %119, align 8
  br label %140

120:                                              ; preds = %101
  %121 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %122 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %125 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %129 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %128, i32 0, i32 5
  %130 = call i32 @bhndb_find_hostb_core(i32* %123, i32 %126, i32 %127, i32* %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %120
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 (i8*, i8*, ...) @device_printf(i8* %134, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  br label %140

137:                                              ; preds = %120
  %138 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %139 = load %struct.bhndb_pci_probe**, %struct.bhndb_pci_probe*** %5, align 8
  store %struct.bhndb_pci_probe* %138, %struct.bhndb_pci_probe** %139, align 8
  store i32 0, i32* %4, align 4
  br label %197

140:                                              ; preds = %133, %112, %97, %79, %64, %54
  %141 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %9, align 8
  %142 = icmp ne %struct.bhnd_erom_io* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %145 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  %148 = zext i1 %147 to i32
  %149 = call i32 @KASSERT(i32 %148, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %150 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %9, align 8
  %151 = call i32 @bhnd_erom_io_fini(%struct.bhnd_erom_io* %150)
  br label %152

152:                                              ; preds = %143, %140
  %153 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %154 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %175

157:                                              ; preds = %152
  %158 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %159 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %164 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %167 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @bhnd_erom_free_core_table(i32* %165, i32* %168)
  br label %170

170:                                              ; preds = %162, %157
  %171 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %172 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @bhnd_erom_free(i32* %173)
  br label %182

175:                                              ; preds = %152
  %176 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %177 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = icmp eq i32* %178, null
  %180 = zext i1 %179 to i32
  %181 = call i32 @KASSERT(i32 %180, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %182

182:                                              ; preds = %175, %170
  %183 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %184 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %189 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @bhndb_release_host_resources(i32* %190)
  br label %192

192:                                              ; preds = %187, %182
  %193 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %8, align 8
  %194 = load i32, i32* @M_BHND, align 4
  %195 = call i32 @free(%struct.bhndb_pci_probe* %193, i32 %194)
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %192, %137
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i8* @device_get_parent(i8*) #1

declare dso_local %struct.bhndb_pci_probe* @malloc(i32, i32, i32) #1

declare dso_local i32 @bhndb_pci_eio_init(%struct.TYPE_2__*, %struct.bhndb_pci_probe*) #1

declare dso_local %struct.bhndb_hwcfg* @BHNDB_BUS_GET_GENERIC_HWCFG(i8*, i8*) #1

declare dso_local %struct.bhnd_chipid* @BHNDB_BUS_GET_CHIPID(i8*, i8*) #1

declare dso_local i32 @bhndb_alloc_host_resources(i32**, i8*, i8*, %struct.bhndb_hwcfg*) #1

declare dso_local i32 @bhnd_erom_io_map(%struct.bhnd_erom_io*, i32, i32) #1

declare dso_local i32* @bhnd_erom_probe_driver_classes(i32, %struct.bhnd_erom_io*, %struct.bhnd_chipid*, i32*) #1

declare dso_local i32 @device_get_devclass(i8*) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32* @bhnd_erom_alloc(i32*, i32*, %struct.bhnd_erom_io*) #1

declare dso_local i32 @bhnd_erom_get_core_table(i32*, i32**, i32*) #1

declare dso_local i32 @bhndb_find_hostb_core(i32*, i32, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_erom_io_fini(%struct.bhnd_erom_io*) #1

declare dso_local i32 @bhnd_erom_free_core_table(i32*, i32*) #1

declare dso_local i32 @bhnd_erom_free(i32*) #1

declare dso_local i32 @bhndb_release_host_resources(i32*) #1

declare dso_local i32 @free(%struct.bhndb_pci_probe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
