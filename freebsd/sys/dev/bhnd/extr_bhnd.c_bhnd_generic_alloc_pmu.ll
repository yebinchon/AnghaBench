; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_alloc_pmu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_alloc_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_softc = type { i32 }
%struct.bhnd_resource = type { i32, i32* }
%struct.bhnd_core_clkctl = type { i32 }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i32* }

@GIANT_REQUIRED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BHND_CLK_CTL_ST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"duplicate PMU allocation for %s\00", align 1
@BHND_PORT_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"error fetching register block info for %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"pmu offset %#jx would overrun %s register block\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"NULL resource list returned for %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"cannot locate core register resource for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"core register resource unallocated for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"core register resource does not map PMU registers at %#jx\0A for %s\0A\00", align 1
@BHND_SERVICE_PMU = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"PMU not found\0A\00", align 1
@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_generic_alloc_pmu(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bhnd_softc*, align 8
  %7 = alloca %struct.bhnd_resource*, align 8
  %8 = alloca %struct.bhnd_core_clkctl*, align 8
  %9 = alloca %struct.resource_list*, align 8
  %10 = alloca %struct.resource_list_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i32, i32* @GIANT_REQUIRED, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @device_get_parent(i64 %18)
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %219

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = call %struct.bhnd_softc* @device_get_softc(i64 %25)
  store %struct.bhnd_softc* %26, %struct.bhnd_softc** %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call %struct.bhnd_core_clkctl* @bhnd_get_pmu_info(i64 %27)
  store %struct.bhnd_core_clkctl* %28, %struct.bhnd_core_clkctl** %8, align 8
  %29 = load i32, i32* @BHND_CLK_CTL_ST, align 4
  store i32 %29, i32* %14, align 4
  %30 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %8, align 8
  %31 = icmp ne %struct.bhnd_core_clkctl* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @device_get_nameunit(i64 %33)
  %35 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %24
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %39 = call i32 @bhnd_get_region_addr(i64 %37, i32 %38, i32 0, i32 0, i32* %12, i32* %13)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.bhnd_softc*, %struct.bhnd_softc** %6, align 8
  %44 = getelementptr inbounds %struct.bhnd_softc, %struct.bhnd_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @device_get_nameunit(i64 %47)
  %49 = load i32, i32* %16, align 4
  %50 = call i32 (i64, i8*, ...) @device_printf(i64 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %3, align 4
  br label %219

52:                                               ; preds = %36
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.bhnd_softc*, %struct.bhnd_softc** %6, align 8
  %61 = getelementptr inbounds %struct.bhnd_softc, %struct.bhnd_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* %14, align 4
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @device_get_nameunit(i64 %65)
  %67 = call i32 (i64, i8*, ...) @device_printf(i64 %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %66)
  %68 = load i32, i32* @ENODEV, align 4
  store i32 %68, i32* %3, align 4
  br label %219

69:                                               ; preds = %52
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call %struct.resource_list* @BUS_GET_RESOURCE_LIST(i64 %70, i64 %71)
  store %struct.resource_list* %72, %struct.resource_list** %9, align 8
  %73 = icmp eq %struct.resource_list* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @device_get_nameunit(i64 %76)
  %78 = call i32 (i64, i8*, ...) @device_printf(i64 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %3, align 4
  br label %219

80:                                               ; preds = %69
  %81 = load %struct.resource_list*, %struct.resource_list** %9, align 8
  %82 = load i32, i32* @SYS_RES_MEMORY, align 4
  %83 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %81, i32 %82, i32 0)
  store %struct.resource_list_entry* %83, %struct.resource_list_entry** %10, align 8
  %84 = icmp eq %struct.resource_list_entry* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @device_get_nameunit(i64 %87)
  %89 = call i32 (i64, i8*, ...) @device_printf(i64 %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @ENXIO, align 4
  store i32 %90, i32* %3, align 4
  br label %219

91:                                               ; preds = %80
  %92 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %93 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @device_get_nameunit(i64 %98)
  %100 = call i32 (i64, i8*, ...) @device_printf(i64 %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ENXIO, align 4
  store i32 %101, i32* %3, align 4
  br label %219

102:                                              ; preds = %91
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %107 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @rman_get_start(i32* %108)
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %120, label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %112, %113
  %115 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %116 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @rman_get_end(i32* %117)
  %119 = icmp sge i32 %114, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %111, %102
  %121 = load i64, i64* %4, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @device_get_nameunit(i64 %125)
  %127 = call i32 (i64, i8*, ...) @device_printf(i64 %121, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %124, i32 %126)
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %3, align 4
  br label %219

129:                                              ; preds = %111
  %130 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %131 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @rman_get_start(i32* %132)
  %134 = load i32, i32* %12, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %129
  %137 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %138 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @rman_get_start(i32* %139)
  %141 = load i32, i32* %12, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32, i32* %14, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %14, align 4
  br label %154

145:                                              ; preds = %129
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %148 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @rman_get_start(i32* %149)
  %151 = sub nsw i32 %146, %150
  %152 = load i32, i32* %14, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %145, %136
  %155 = load i64, i64* %5, align 8
  %156 = load i32, i32* @BHND_SERVICE_PMU, align 4
  %157 = call i64 @bhnd_retain_provider(i64 %155, i32 %156)
  store i64 %157, i64* %11, align 8
  %158 = load i64, i64* %11, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load %struct.bhnd_softc*, %struct.bhnd_softc** %6, align 8
  %163 = getelementptr inbounds %struct.bhnd_softc, %struct.bhnd_softc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = call i32 (i64, i8*, ...) @device_printf(i64 %165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %167 = load i32, i32* @ENXIO, align 4
  store i32 %167, i32* %3, align 4
  br label %219

168:                                              ; preds = %154
  %169 = load i64, i64* %11, align 8
  %170 = call i32 @bhnd_pmu_get_max_transition_latency(i64 %169)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* @M_BHND, align 4
  %172 = load i32, i32* @M_NOWAIT, align 4
  %173 = call %struct.bhnd_resource* @malloc(i32 16, i32 %171, i32 %172)
  store %struct.bhnd_resource* %173, %struct.bhnd_resource** %7, align 8
  %174 = load %struct.bhnd_resource*, %struct.bhnd_resource** %7, align 8
  %175 = icmp eq %struct.bhnd_resource* %174, null
  br i1 %175, label %176, label %182

176:                                              ; preds = %168
  %177 = load i64, i64* %5, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load i32, i32* @BHND_SERVICE_PMU, align 4
  %180 = call i32 @bhnd_release_provider(i64 %177, i64 %178, i32 %179)
  %181 = load i32, i32* @ENOMEM, align 4
  store i32 %181, i32* %3, align 4
  br label %219

182:                                              ; preds = %168
  %183 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %184 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.bhnd_resource*, %struct.bhnd_resource** %7, align 8
  %187 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %186, i32 0, i32 1
  store i32* %185, i32** %187, align 8
  %188 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %189 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @rman_get_flags(i32* %190)
  %192 = load i32, i32* @RF_ACTIVE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i32
  %196 = load %struct.bhnd_resource*, %struct.bhnd_resource** %7, align 8
  %197 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load i64, i64* %5, align 8
  %199 = load i64, i64* %11, align 8
  %200 = load %struct.bhnd_resource*, %struct.bhnd_resource** %7, align 8
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %15, align 4
  %203 = call %struct.bhnd_core_clkctl* @bhnd_alloc_core_clkctl(i64 %198, i64 %199, %struct.bhnd_resource* %200, i32 %201, i32 %202)
  store %struct.bhnd_core_clkctl* %203, %struct.bhnd_core_clkctl** %8, align 8
  %204 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %8, align 8
  %205 = icmp eq %struct.bhnd_core_clkctl* %204, null
  br i1 %205, label %206, label %215

206:                                              ; preds = %182
  %207 = load %struct.bhnd_resource*, %struct.bhnd_resource** %7, align 8
  %208 = load i32, i32* @M_BHND, align 4
  %209 = call i32 @free(%struct.bhnd_resource* %207, i32 %208)
  %210 = load i64, i64* %5, align 8
  %211 = load i64, i64* %11, align 8
  %212 = load i32, i32* @BHND_SERVICE_PMU, align 4
  %213 = call i32 @bhnd_release_provider(i64 %210, i64 %211, i32 %212)
  %214 = load i32, i32* @ENOMEM, align 4
  store i32 %214, i32* %3, align 4
  br label %219

215:                                              ; preds = %182
  %216 = load i64, i64* %5, align 8
  %217 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %8, align 8
  %218 = call i32 @bhnd_set_pmu_info(i64 %216, %struct.bhnd_core_clkctl* %217)
  store i32 0, i32* %3, align 4
  br label %219

219:                                              ; preds = %215, %206, %176, %161, %120, %96, %85, %74, %59, %42, %22
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.bhnd_softc* @device_get_softc(i64) #1

declare dso_local %struct.bhnd_core_clkctl* @bhnd_get_pmu_info(i64) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i64) #1

declare dso_local i32 @bhnd_get_region_addr(i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i64, i8*, ...) #1

declare dso_local %struct.resource_list* @BUS_GET_RESOURCE_LIST(i64, i64) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @rman_get_end(i32*) #1

declare dso_local i64 @bhnd_retain_provider(i64, i32) #1

declare dso_local i32 @bhnd_pmu_get_max_transition_latency(i64) #1

declare dso_local %struct.bhnd_resource* @malloc(i32, i32, i32) #1

declare dso_local i32 @bhnd_release_provider(i64, i64, i32) #1

declare dso_local i32 @rman_get_flags(i32*) #1

declare dso_local %struct.bhnd_core_clkctl* @bhnd_alloc_core_clkctl(i64, i64, %struct.bhnd_resource*, i32, i32) #1

declare dso_local i32 @free(%struct.bhnd_resource*, i32) #1

declare dso_local i32 @bhnd_set_pmu_info(i64, %struct.bhnd_core_clkctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
