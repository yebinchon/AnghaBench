; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_chipid = type { i32 }
%struct.bhnd_core_info = type { i32 }
%struct.bhndb_devinfo = type { i32 }
%struct.bhndb_softc = type { i32, i32*, i32, i32, i32*, %struct.bhnd_chipid, %struct.bhnd_core_info }
%struct.bhndb_hw = type { i32, %struct.bhndb_hwcfg* }
%struct.bhndb_hwcfg = type { i32 }
%struct.bhndb_hw_priority = type { i32 }
%struct.bhnd_erom_io = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"unable to identify device,  using generic bridge resource definitions\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@PRIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s resource configuration\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to allocate bridge resource state\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BHND_PROBE_BUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"bhnd\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BHNDB_ADDRSPACE_BRIDGED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"failed to initialize resource priority configuration: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhndb_attach(i32 %0, %struct.bhnd_chipid* %1, %struct.bhnd_core_info* %2, i32 %3, %struct.bhnd_core_info* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bhnd_chipid*, align 8
  %10 = alloca %struct.bhnd_core_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bhnd_core_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bhndb_devinfo*, align 8
  %15 = alloca %struct.bhndb_softc*, align 8
  %16 = alloca %struct.bhndb_hw*, align 8
  %17 = alloca %struct.bhndb_hwcfg*, align 8
  %18 = alloca %struct.bhndb_hw_priority*, align 8
  %19 = alloca %struct.bhnd_erom_io*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.bhnd_chipid* %1, %struct.bhnd_chipid** %9, align 8
  store %struct.bhnd_core_info* %2, %struct.bhnd_core_info** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.bhnd_core_info* %4, %struct.bhnd_core_info** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.bhndb_softc* @device_get_softc(i32 %22)
  store %struct.bhndb_softc* %23, %struct.bhndb_softc** %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %26 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @device_get_parent(i32 %27)
  %29 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %30 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %32 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %31, i32 0, i32 6
  %33 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %12, align 8
  %34 = bitcast %struct.bhnd_core_info* %32 to i8*
  %35 = bitcast %struct.bhnd_core_info* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %37 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %36, i32 0, i32 5
  %38 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %9, align 8
  %39 = bitcast %struct.bhnd_chipid* %37 to i8*
  %40 = bitcast %struct.bhnd_chipid* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %42 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %41, i32 0, i32 0
  %43 = call i32 @bhnd_service_registry_init(i32* %42)
  store i32 %43, i32* %21, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %6
  %46 = load i32, i32* %21, align 4
  store i32 %46, i32* %7, align 4
  br label %192

47:                                               ; preds = %6
  %48 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %49 = call i32 @BHNDB_LOCK_INIT(%struct.bhndb_softc* %48)
  store i32* null, i32** %20, align 8
  %50 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %51 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @bhndb_find_hwspec(%struct.bhndb_softc* %50, %struct.bhnd_core_info* %51, i32 %52, %struct.bhndb_hw** %16)
  store i32 %53, i32* %21, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %57 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %61 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.bhndb_hwcfg* @BHNDB_BUS_GET_GENERIC_HWCFG(i32 %62, i32 %63)
  store %struct.bhndb_hwcfg* %64, %struct.bhndb_hwcfg** %17, align 8
  store %struct.bhndb_hw* null, %struct.bhndb_hw** %16, align 8
  br label %69

65:                                               ; preds = %47
  %66 = load %struct.bhndb_hw*, %struct.bhndb_hw** %16, align 8
  %67 = getelementptr inbounds %struct.bhndb_hw, %struct.bhndb_hw* %66, i32 0, i32 1
  %68 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %67, align 8
  store %struct.bhndb_hwcfg* %68, %struct.bhndb_hwcfg** %17, align 8
  br label %69

69:                                               ; preds = %65, %55
  %70 = load %struct.bhndb_hw*, %struct.bhndb_hw** %16, align 8
  %71 = icmp ne %struct.bhndb_hw* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i64, i64* @bootverbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @PRIO, align 4
  %77 = call i64 @BHNDB_DEBUG(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75, %72
  %80 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %81 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.bhndb_hw*, %struct.bhndb_hw** %16, align 8
  %84 = getelementptr inbounds %struct.bhndb_hw, %struct.bhndb_hw* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %79, %75, %69
  %88 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %89 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %92 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %17, align 8
  %95 = call i32* @bhndb_alloc_resources(i32 %90, i32 %93, %struct.bhndb_hwcfg* %94)
  %96 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %97 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  %98 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %99 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %87
  %103 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %104 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %21, align 4
  br label %169

108:                                              ; preds = %87
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @BHND_PROBE_BUS, align 4
  %111 = call i32* @BUS_ADD_CHILD(i32 %109, i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %112 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %113 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %112, i32 0, i32 4
  store i32* %111, i32** %113, align 8
  %114 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %115 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* @ENXIO, align 4
  store i32 %119, i32* %21, align 4
  br label %169

120:                                              ; preds = %108
  %121 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %122 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = call %struct.bhndb_devinfo* @device_get_ivars(i32* %123)
  store %struct.bhndb_devinfo* %124, %struct.bhndb_devinfo** %14, align 8
  %125 = load i32, i32* @BHNDB_ADDRSPACE_BRIDGED, align 4
  %126 = load %struct.bhndb_devinfo*, %struct.bhndb_devinfo** %14, align 8
  %127 = getelementptr inbounds %struct.bhndb_devinfo, %struct.bhndb_devinfo* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %129 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = call %struct.bhnd_erom_io* @bhnd_erom_iores_new(i32* %130, i32 0)
  store %struct.bhnd_erom_io* %131, %struct.bhnd_erom_io** %19, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %9, align 8
  %134 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %19, align 8
  %135 = call i32* @bhnd_erom_alloc(i32* %132, %struct.bhnd_chipid* %133, %struct.bhnd_erom_io* %134)
  store i32* %135, i32** %20, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %120
  %138 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %19, align 8
  %139 = call i32 @bhnd_erom_io_fini(%struct.bhnd_erom_io* %138)
  %140 = load i32, i32* @ENXIO, align 4
  store i32 %140, i32* %21, align 4
  br label %169

141:                                              ; preds = %120
  %142 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %143 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %146 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call %struct.bhndb_hw_priority* @BHNDB_BUS_GET_HARDWARE_PRIO(i32 %144, i32 %147)
  store %struct.bhndb_hw_priority* %148, %struct.bhndb_hw_priority** %18, align 8
  %149 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %150 = load i32*, i32** %20, align 8
  %151 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %152 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %10, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.bhndb_hw_priority*, %struct.bhndb_hw_priority** %18, align 8
  %157 = call i32 @bhndb_init_region_cfg(%struct.bhndb_softc* %149, i32* %150, i32* %153, %struct.bhnd_core_info* %154, i32 %155, %struct.bhndb_hw_priority* %156)
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %21, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %141
  %161 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %162 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %21, align 4
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %163, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  br label %169

166:                                              ; preds = %141
  %167 = load i32*, i32** %20, align 8
  %168 = call i32 @bhnd_erom_free(i32* %167)
  store i32* null, i32** %20, align 8
  store i32 0, i32* %7, align 4
  br label %192

169:                                              ; preds = %160, %137, %118, %102
  %170 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %171 = call i32 @BHNDB_LOCK_DESTROY(%struct.bhndb_softc* %170)
  %172 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %173 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %169
  %177 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %178 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @bhndb_free_resources(i32* %179)
  br label %181

181:                                              ; preds = %176, %169
  %182 = load i32*, i32** %20, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32*, i32** %20, align 8
  %186 = call i32 @bhnd_erom_free(i32* %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load %struct.bhndb_softc*, %struct.bhndb_softc** %15, align 8
  %189 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %188, i32 0, i32 0
  %190 = call i32 @bhnd_service_registry_fini(i32* %189)
  %191 = load i32, i32* %21, align 4
  store i32 %191, i32* %7, align 4
  br label %192

192:                                              ; preds = %187, %166, %45
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local %struct.bhndb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bhnd_service_registry_init(i32*) #1

declare dso_local i32 @BHNDB_LOCK_INIT(%struct.bhndb_softc*) #1

declare dso_local i32 @bhndb_find_hwspec(%struct.bhndb_softc*, %struct.bhnd_core_info*, i32, %struct.bhndb_hw**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.bhndb_hwcfg* @BHNDB_BUS_GET_GENERIC_HWCFG(i32, i32) #1

declare dso_local i64 @BHNDB_DEBUG(i32) #1

declare dso_local i32* @bhndb_alloc_resources(i32, i32, %struct.bhndb_hwcfg*) #1

declare dso_local i32* @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local %struct.bhndb_devinfo* @device_get_ivars(i32*) #1

declare dso_local %struct.bhnd_erom_io* @bhnd_erom_iores_new(i32*, i32) #1

declare dso_local i32* @bhnd_erom_alloc(i32*, %struct.bhnd_chipid*, %struct.bhnd_erom_io*) #1

declare dso_local i32 @bhnd_erom_io_fini(%struct.bhnd_erom_io*) #1

declare dso_local %struct.bhndb_hw_priority* @BHNDB_BUS_GET_HARDWARE_PRIO(i32, i32) #1

declare dso_local i32 @bhndb_init_region_cfg(%struct.bhndb_softc*, i32*, i32*, %struct.bhnd_core_info*, i32, %struct.bhndb_hw_priority*) #1

declare dso_local i32 @bhnd_erom_free(i32*) #1

declare dso_local i32 @BHNDB_LOCK_DESTROY(%struct.bhndb_softc*) #1

declare dso_local i32 @bhndb_free_resources(i32*) #1

declare dso_local i32 @bhnd_service_registry_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
