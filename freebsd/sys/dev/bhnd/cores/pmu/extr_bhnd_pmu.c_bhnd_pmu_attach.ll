; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu.c_bhnd_pmu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu.c_bhnd_pmu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_resource = type { i32 }
%struct.bhnd_pmu_softc = type { i32*, i32*, i32*, %struct.TYPE_3__, %struct.bhnd_resource*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@BHND_PMU_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bhnd\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"bhnd bus not found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"error fetching board info: %d\0A\00", align 1
@bhnd_pmu_res_io = common dso_local global i32 0, align 4
@BHND_CLK_CTL_ST = common dso_local global i32 0, align 4
@BHND_PMU_MAX_TRANSITION_DLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to allocate clkctl for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BHND_SERVICE_CHIPC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"chipcommon device not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"PMU init failed: %d\0A\00", align 1
@BHND_SERVICE_PMU = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"failed to register PMU with bus : %d\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"bus_freq\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@bhnd_pmu_sysctl_bus_freq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Bus clock frequency\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"cpu_freq\00", align 1
@bhnd_pmu_sysctl_cpu_freq = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"CPU clock frequency\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"mem_freq\00", align 1
@bhnd_pmu_sysctl_mem_freq = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"Memory clock frequency\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_attach(i32* %0, %struct.bhnd_resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bhnd_resource*, align 8
  %6 = alloca %struct.bhnd_pmu_softc*, align 8
  %7 = alloca %struct.sysctl_ctx_list*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bhnd_resource* %1, %struct.bhnd_resource** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.bhnd_pmu_softc* @device_get_softc(i32* %13)
  store %struct.bhnd_pmu_softc* %14, %struct.bhnd_pmu_softc** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %17 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.bhnd_resource*, %struct.bhnd_resource** %5, align 8
  %19 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %20 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %19, i32 0, i32 4
  store %struct.bhnd_resource* %18, %struct.bhnd_resource** %20, align 8
  %21 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %22 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %21, i32 0, i32 4
  %23 = load %struct.bhnd_resource*, %struct.bhnd_resource** %22, align 8
  %24 = load i32, i32* @BHND_PMU_CAP, align 4
  %25 = call i32 @bhnd_bus_read_4(%struct.bhnd_resource* %23, i32 %24)
  %26 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %27 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  %28 = call i64 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %28, i64* %9, align 8
  %29 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %30 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %10, align 8
  br label %32

32:                                               ; preds = %42, %2
  %33 = load i32*, i32** %10, align 8
  %34 = call i32* @device_get_parent(i32* %33)
  store i32* %34, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32*, i32** %11, align 8
  %38 = call i64 @device_get_devclass(i32* %37)
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %44

42:                                               ; preds = %36
  %43 = load i32*, i32** %11, align 8
  store i32* %43, i32** %10, align 8
  br label %32

44:                                               ; preds = %41, %32
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %49 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 (i32*, i8*, ...) @device_printf(i32* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %3, align 4
  br label %224

53:                                               ; preds = %44
  %54 = load i32*, i32** %10, align 8
  %55 = call i32* @bhnd_get_chipid(i32* %54)
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %58 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %61 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %60, i32 0, i32 8
  %62 = call i32 @bhnd_read_board_info(i32* %59, i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %66 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 (i32*, i8*, ...) @device_printf(i32* %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %3, align 4
  br label %224

71:                                               ; preds = %53
  %72 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %73 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %72, i32 0, i32 3
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %76 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %79 = call i32 @bhnd_pmu_query_init(%struct.TYPE_3__* %73, i32* %74, i32 %77, i32* @bhnd_pmu_res_io, %struct.bhnd_pmu_softc* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %3, align 4
  br label %224

84:                                               ; preds = %71
  %85 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %86 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %90 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %92 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %96 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %98 = call i32 @BPMU_LOCK_INIT(%struct.bhnd_pmu_softc* %97)
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %102 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %101, i32 0, i32 4
  %103 = load %struct.bhnd_resource*, %struct.bhnd_resource** %102, align 8
  %104 = load i32, i32* @BHND_CLK_CTL_ST, align 4
  %105 = load i32, i32* @BHND_PMU_MAX_TRANSITION_DLY, align 4
  %106 = call i32* @bhnd_alloc_core_clkctl(i32* %99, i32* %100, %struct.bhnd_resource* %103, i32 %104, i32 %105)
  %107 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %108 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %107, i32 0, i32 2
  store i32* %106, i32** %108, align 8
  %109 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %110 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %84
  %114 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %115 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @device_get_nameunit(i32* %117)
  %119 = call i32 (i32*, i8*, ...) @device_printf(i32* %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @ENOMEM, align 4
  store i32 %120, i32* %12, align 4
  br label %193

121:                                              ; preds = %84
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* @BHND_SERVICE_CHIPC, align 4
  %124 = call i32* @bhnd_retain_provider(i32* %122, i32 %123)
  %125 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %126 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %125, i32 0, i32 0
  store i32* %124, i32** %126, align 8
  %127 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %128 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %121
  %132 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %133 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 (i32*, i8*, ...) @device_printf(i32* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %136 = load i32, i32* @ENXIO, align 4
  store i32 %136, i32* %12, align 4
  br label %193

137:                                              ; preds = %121
  %138 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %139 = call i32 @bhnd_pmu_init(%struct.bhnd_pmu_softc* %138)
  store i32 %139, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %143 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 (i32*, i8*, ...) @device_printf(i32* %144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  br label %193

147:                                              ; preds = %137
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* @BHND_SERVICE_PMU, align 4
  %150 = call i32 @bhnd_register_provider(i32* %148, i32 %149)
  store i32 %150, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %154 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 (i32*, i8*, ...) @device_printf(i32* %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  br label %193

158:                                              ; preds = %147
  %159 = load i32*, i32** %4, align 8
  %160 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32* %159)
  store %struct.sysctl_ctx_list* %160, %struct.sysctl_ctx_list** %7, align 8
  %161 = load i32*, i32** %4, align 8
  %162 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32* %161)
  store %struct.sysctl_oid* %162, %struct.sysctl_oid** %8, align 8
  %163 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %164 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %165 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %164)
  %166 = load i32, i32* @OID_AUTO, align 4
  %167 = load i32, i32* @CTLTYPE_UINT, align 4
  %168 = load i32, i32* @CTLFLAG_RD, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %171 = load i32, i32* @bhnd_pmu_sysctl_bus_freq, align 4
  %172 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %163, i32 %165, i32 %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %169, %struct.bhnd_pmu_softc* %170, i32 0, i32 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %173 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %174 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %175 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %174)
  %176 = load i32, i32* @OID_AUTO, align 4
  %177 = load i32, i32* @CTLTYPE_UINT, align 4
  %178 = load i32, i32* @CTLFLAG_RD, align 4
  %179 = or i32 %177, %178
  %180 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %181 = load i32, i32* @bhnd_pmu_sysctl_cpu_freq, align 4
  %182 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %173, i32 %175, i32 %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %179, %struct.bhnd_pmu_softc* %180, i32 0, i32 %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %183 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %184 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %185 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %184)
  %186 = load i32, i32* @OID_AUTO, align 4
  %187 = load i32, i32* @CTLTYPE_UINT, align 4
  %188 = load i32, i32* @CTLFLAG_RD, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %191 = load i32, i32* @bhnd_pmu_sysctl_mem_freq, align 4
  %192 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %183, i32 %185, i32 %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %189, %struct.bhnd_pmu_softc* %190, i32 0, i32 %191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %224

193:                                              ; preds = %152, %141, %131, %113
  %194 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %195 = call i32 @BPMU_LOCK_DESTROY(%struct.bhnd_pmu_softc* %194)
  %196 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %197 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %196, i32 0, i32 3
  %198 = call i32 @bhnd_pmu_query_fini(%struct.TYPE_3__* %197)
  %199 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %200 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %193
  %204 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %205 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @bhnd_free_core_clkctl(i32* %206)
  br label %208

208:                                              ; preds = %203, %193
  %209 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %210 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %222

213:                                              ; preds = %208
  %214 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %215 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %6, align 8
  %218 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* @BHND_SERVICE_CHIPC, align 4
  %221 = call i32 @bhnd_release_provider(i32* %216, i32* %219, i32 %220)
  br label %222

222:                                              ; preds = %213, %208
  %223 = load i32, i32* %12, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %222, %158, %82, %64, %47
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local %struct.bhnd_pmu_softc* @device_get_softc(i32*) #1

declare dso_local i32 @bhnd_bus_read_4(%struct.bhnd_resource*, i32) #1

declare dso_local i64 @devclass_find(i8*) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i64 @device_get_devclass(i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32* @bhnd_get_chipid(i32*) #1

declare dso_local i32 @bhnd_read_board_info(i32*, i32*) #1

declare dso_local i32 @bhnd_pmu_query_init(%struct.TYPE_3__*, i32*, i32, i32*, %struct.bhnd_pmu_softc*) #1

declare dso_local i32 @BPMU_LOCK_INIT(%struct.bhnd_pmu_softc*) #1

declare dso_local i32* @bhnd_alloc_core_clkctl(i32*, i32*, %struct.bhnd_resource*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32* @bhnd_retain_provider(i32*, i32) #1

declare dso_local i32 @bhnd_pmu_init(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @bhnd_register_provider(i32*, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.bhnd_pmu_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @BPMU_LOCK_DESTROY(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @bhnd_pmu_query_fini(%struct.TYPE_3__*) #1

declare dso_local i32 @bhnd_free_core_clkctl(i32*) #1

declare dso_local i32 @bhnd_release_provider(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
