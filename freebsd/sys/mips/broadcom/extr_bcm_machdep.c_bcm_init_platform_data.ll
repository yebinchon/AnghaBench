; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_machdep.c_bcm_init_platform_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_machdep.c_bcm_init_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.bcm_platform = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_9__, i32, i32, i32*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@mips_bus_space_generic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to initialize erom I/O callbacks: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"error attaching erom parser: %d\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@bcm_chipc_cores = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"error locating chipc core: %d\0A\00", align 1
@CHIPC_CAPABILITIES = common dso_local global i32 0, align 4
@CHIPC_CAPABILITIES_EXT = common dso_local global i32 0, align 4
@CHIPC_CAP_PMU = common dso_local global i32 0, align 4
@CHIPC_CAP2_AOB = common dso_local global i32 0, align 4
@bcm_pmu_cores = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"error locating pmu core: %d\0A\00", align 1
@bcm_pmu_soc_io = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"bhnd_pmu_query_init() failed: %d\0A\00", align 1
@bcm_cpu0_cores = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"error locating CPU core: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"error initializing service registry: %d\0A\00", align 1
@bcm_platform_data_avail = common dso_local global i32 0, align 4
@CFE_STDHANDLE_CONSOLE = common dso_local global i32 0, align 4
@bcm_cfe_nvram = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_platform*)* @bcm_init_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_init_platform_data(%struct.bcm_platform* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_platform*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bcm_platform* %0, %struct.bcm_platform** %3, align 8
  %11 = call i32 (...) @bcm_get_bus_addr()
  store i32 %11, i32* %4, align 4
  %12 = call i32 (...) @bcm_get_bus_size()
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @mips_bus_space_generic, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @BCM_SOC_BSH(i32 %14, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %17 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %16, i32 0, i32 13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @bhnd_erom_iobus_init(%struct.TYPE_9__* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @BCM_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %2, align 4
  br label %198

29:                                               ; preds = %1
  %30 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %31 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %30, i32 0, i32 15
  %32 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %33 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %32, i32 0, i32 14
  %34 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %35 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %34, i32 0, i32 12
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %38 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %37, i32 0, i32 13
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %41 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %40, i32 0, i32 8
  %42 = call i32 @bcm_erom_probe_and_attach(i32* %31, i32* %33, i32* %36, i32 4, i32* %39, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %29
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @BCM_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %49 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %48, i32 0, i32 13
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = call i32 @bhnd_erom_io_fini(i32* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %2, align 4
  br label %198

53:                                               ; preds = %29
  %54 = load i64, i64* @bootverbose, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %58 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %57, i32 0, i32 12
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i32 @bhnd_erom_dump(i32* %59)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %63 = load i32, i32* @bcm_chipc_cores, align 4
  %64 = load i32, i32* @bcm_chipc_cores, align 4
  %65 = call i32 @nitems(i32 %64)
  %66 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %67 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %66, i32 0, i32 11
  %68 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %69 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %68, i32 0, i32 1
  %70 = call i32 @bcm_find_core(%struct.bcm_platform* %62, i32 %63, i32 %65, %struct.TYPE_8__* %67, i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @BCM_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %2, align 4
  br label %198

77:                                               ; preds = %61
  %78 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %79 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CHIPC_CAPABILITIES, align 4
  %82 = call i32 @BCM_SOC_READ_4(i32 %80, i32 %81)
  %83 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %84 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %86 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %85, i32 0, i32 3
  store i32 0, i32* %86, align 4
  %87 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %88 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %87, i32 0, i32 11
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @CHIPC_HWREV_HAS_CAP_EXT(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %77
  %94 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %95 = load i32, i32* @CHIPC_CAPABILITIES_EXT, align 4
  %96 = call i32 @BCM_CHIPC_READ_4(%struct.bcm_platform* %94, i32 %95)
  %97 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %98 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %77
  %100 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %101 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CHIPC_CAP_PMU, align 4
  %104 = call i32 @CHIPC_GET_FLAG(i32 %102, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %106 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CHIPC_CAP2_AOB, align 4
  %109 = call i32 @CHIPC_GET_FLAG(i32 %107, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %99
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %117 = load i32, i32* @bcm_pmu_cores, align 4
  %118 = load i32, i32* @bcm_pmu_cores, align 4
  %119 = call i32 @nitems(i32 %118)
  %120 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %121 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %120, i32 0, i32 10
  %122 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %123 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %122, i32 0, i32 4
  %124 = call i32 @bcm_find_core(%struct.bcm_platform* %116, i32 %117, i32 %119, %struct.TYPE_8__* %121, i32* %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %115
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @BCM_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %2, align 4
  br label %198

131:                                              ; preds = %115
  br label %154

132:                                              ; preds = %112, %99
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %137 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %140 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  %141 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %142 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %141, i32 0, i32 10
  %143 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %144 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %143, i32 0, i32 11
  %145 = bitcast %struct.TYPE_8__* %142 to i8*
  %146 = bitcast %struct.TYPE_8__* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 4 %146, i64 4, i1 false)
  br label %153

147:                                              ; preds = %132
  %148 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %149 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %148, i32 0, i32 4
  store i32 0, i32* %149, align 8
  %150 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %151 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %150, i32 0, i32 10
  %152 = call i32 @memset(%struct.TYPE_8__* %151, i32 0, i32 4)
  br label %153

153:                                              ; preds = %147, %135
  br label %154

154:                                              ; preds = %153, %131
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %154
  %158 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %159 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %158, i32 0, i32 9
  %160 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %161 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %164 = call i32 @bhnd_pmu_query_init(i32* %159, i32* null, i32 %162, i32* @bcm_pmu_soc_io, %struct.bcm_platform* %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %157
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @BCM_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %10, align 4
  store i32 %170, i32* %2, align 4
  br label %198

171:                                              ; preds = %157
  br label %172

172:                                              ; preds = %171, %154
  %173 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %174 = load i32, i32* @bcm_cpu0_cores, align 4
  %175 = load i32, i32* @bcm_cpu0_cores, align 4
  %176 = call i32 @nitems(i32 %175)
  %177 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %178 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %177, i32 0, i32 7
  %179 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %180 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %179, i32 0, i32 5
  %181 = call i32 @bcm_find_core(%struct.bcm_platform* %173, i32 %174, i32 %176, %struct.TYPE_8__* %178, i32* %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %172
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @BCM_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %2, align 4
  br label %198

188:                                              ; preds = %172
  %189 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %190 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %189, i32 0, i32 6
  %191 = call i32 @bhnd_service_registry_init(i32* %190)
  store i32 %191, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @BCM_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %2, align 4
  br label %198

197:                                              ; preds = %188
  store i32 1, i32* @bcm_platform_data_avail, align 4
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %193, %184, %167, %127, %73, %45, %25
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @bcm_get_bus_addr(...) #1

declare dso_local i32 @bcm_get_bus_size(...) #1

declare dso_local i32 @BCM_SOC_BSH(i32, i32) #1

declare dso_local i32 @bhnd_erom_iobus_init(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @BCM_ERR(i8*, i32) #1

declare dso_local i32 @bcm_erom_probe_and_attach(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @bhnd_erom_io_fini(i32*) #1

declare dso_local i32 @bhnd_erom_dump(i32*) #1

declare dso_local i32 @bcm_find_core(%struct.bcm_platform*, i32, i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @BCM_SOC_READ_4(i32, i32) #1

declare dso_local i64 @CHIPC_HWREV_HAS_CAP_EXT(i32) #1

declare dso_local i32 @BCM_CHIPC_READ_4(%struct.bcm_platform*, i32) #1

declare dso_local i32 @CHIPC_GET_FLAG(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @bhnd_pmu_query_init(i32*, i32*, i32, i32*, %struct.bcm_platform*) #1

declare dso_local i32 @bhnd_service_registry_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
