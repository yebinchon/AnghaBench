; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.chipc_softc = type { %struct.chipc_region* }
%struct.chipc_region = type { i64, i64, i64 }
%struct.resource_list_entry = type { i64, i64, i32, %struct.resource* }
%struct.rman = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"default resource %#x type %d for child %s not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"resource entry %#x type %d for child %s is busy [%d]\0A\00", align 1
@RF_ALLOCATED = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"failed to activate entry %#x type %d for child %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i64, i64, i32, i32*, i64, i64, i64, i32)* @chipc_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @chipc_alloc_resource(i64 %0, i64 %1, i32 %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.chipc_softc*, align 8
  %19 = alloca %struct.chipc_region*, align 8
  %20 = alloca %struct.resource_list_entry*, align 8
  %21 = alloca %struct.resource*, align 8
  %22 = alloca %struct.rman*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call %struct.chipc_softc* @device_get_softc(i64 %26)
  store %struct.chipc_softc* %27, %struct.chipc_softc** %18, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @device_get_parent(i64 %28)
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %24, align 4
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = call i32 @RMAN_IS_DEFAULT_RANGE(i64 %33, i64 %34)
  store i32 %35, i32* %25, align 4
  store %struct.resource_list_entry* null, %struct.resource_list_entry** %20, align 8
  %36 = load %struct.chipc_softc*, %struct.chipc_softc** %18, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.rman* @chipc_get_rman(%struct.chipc_softc* %36, i32 %37)
  store %struct.rman* %38, %struct.rman** %22, align 8
  %39 = load %struct.rman*, %struct.rman** %22, align 8
  %40 = icmp eq %struct.rman* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call %struct.resource* @bus_generic_rl_alloc_resource(i64 %42, i64 %43, i32 %44, i32* %45, i64 %46, i64 %47, i64 %48, i32 %49)
  store %struct.resource* %50, %struct.resource** %21, align 8
  %51 = load %struct.resource*, %struct.resource** %21, align 8
  store %struct.resource* %51, %struct.resource** %9, align 8
  br label %237

52:                                               ; preds = %8
  %53 = load i32, i32* %24, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %105, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %25, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %55
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @BUS_GET_RESOURCE_LIST(i64 %59, i64 %60)
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.resource_list_entry* @resource_list_find(i32 %61, i32 %62, i32 %64)
  store %struct.resource_list_entry* %65, %struct.resource_list_entry** %20, align 8
  %66 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %67 = icmp eq %struct.resource_list_entry* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load i64, i64* %10, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @device_get_nameunit(i64 %73)
  %75 = call i32 (i64, i8*, i32, i32, i32, ...) @device_printf(i64 %69, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72, i32 %74)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %237

76:                                               ; preds = %58
  %77 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %78 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %77, i32 0, i32 3
  %79 = load %struct.resource*, %struct.resource** %78, align 8
  %80 = icmp ne %struct.resource* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i64, i64* %10, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @device_get_nameunit(i64 %86)
  %88 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %89 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %88, i32 0, i32 3
  %90 = load %struct.resource*, %struct.resource** %89, align 8
  %91 = call i32 @rman_get_flags(%struct.resource* %90)
  %92 = call i32 (i64, i8*, i32, i32, i32, ...) @device_printf(i64 %82, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85, i32 %87, i32 %91)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %237

93:                                               ; preds = %76
  %94 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %95 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %14, align 8
  %97 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %98 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %16, align 8
  %101 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %102 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @ulmax(i64 %100, i32 %103)
  store i64 %104, i64* %16, align 8
  br label %105

105:                                              ; preds = %93, %55, %52
  %106 = load %struct.chipc_softc*, %struct.chipc_softc** %18, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call %struct.chipc_region* @chipc_find_region(%struct.chipc_softc* %106, i64 %107, i64 %108)
  store %struct.chipc_region* %109, %struct.chipc_region** %19, align 8
  %110 = icmp eq %struct.chipc_region* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i32, i32* %17, align 4
  %120 = call %struct.resource* @bus_generic_rl_alloc_resource(i64 %112, i64 %113, i32 %114, i32* %115, i64 %116, i64 %117, i64 %118, i32 %119)
  store %struct.resource* %120, %struct.resource** %21, align 8
  %121 = load %struct.resource*, %struct.resource** %21, align 8
  store %struct.resource* %121, %struct.resource** %9, align 8
  br label %237

122:                                              ; preds = %105
  %123 = load %struct.chipc_region*, %struct.chipc_region** %19, align 8
  %124 = load %struct.chipc_softc*, %struct.chipc_softc** %18, align 8
  %125 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %124, i32 0, i32 0
  %126 = load %struct.chipc_region*, %struct.chipc_region** %125, align 8
  %127 = icmp eq %struct.chipc_region* %123, %126
  br i1 %127, label %128, label %157

128:                                              ; preds = %122
  %129 = load %struct.chipc_region*, %struct.chipc_region** %19, align 8
  %130 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %14, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %128
  %135 = load %struct.chipc_region*, %struct.chipc_region** %19, align 8
  %136 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %15, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %134
  %141 = load %struct.chipc_region*, %struct.chipc_region** %19, align 8
  %142 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %16, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %140
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* %11, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load i32*, i32** %13, align 8
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* %15, align 8
  %153 = load i64, i64* %16, align 8
  %154 = load i32, i32* %17, align 4
  %155 = call %struct.resource* @bus_generic_rl_alloc_resource(i64 %147, i64 %148, i32 %149, i32* %150, i64 %151, i64 %152, i64 %153, i32 %154)
  store %struct.resource* %155, %struct.resource** %21, align 8
  %156 = load %struct.resource*, %struct.resource** %21, align 8
  store %struct.resource* %156, %struct.resource** %9, align 8
  br label %237

157:                                              ; preds = %140, %134, %128, %122
  %158 = load %struct.chipc_softc*, %struct.chipc_softc** %18, align 8
  %159 = load %struct.chipc_region*, %struct.chipc_region** %19, align 8
  %160 = load i32, i32* @RF_ALLOCATED, align 4
  %161 = call i32 @chipc_retain_region(%struct.chipc_softc* %158, %struct.chipc_region* %159, i32 %160)
  store i32 %161, i32* %23, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %237

164:                                              ; preds = %157
  %165 = load %struct.rman*, %struct.rman** %22, align 8
  %166 = load i64, i64* %14, align 8
  %167 = load i64, i64* %15, align 8
  %168 = load i64, i64* %16, align 8
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* @RF_ACTIVE, align 4
  %171 = xor i32 %170, -1
  %172 = and i32 %169, %171
  %173 = load i64, i64* %11, align 8
  %174 = call %struct.resource* @rman_reserve_resource(%struct.rman* %165, i64 %166, i64 %167, i64 %168, i32 %172, i64 %173)
  store %struct.resource* %174, %struct.resource** %21, align 8
  %175 = load %struct.resource*, %struct.resource** %21, align 8
  %176 = icmp eq %struct.resource* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %164
  %178 = load %struct.chipc_softc*, %struct.chipc_softc** %18, align 8
  %179 = load %struct.chipc_region*, %struct.chipc_region** %19, align 8
  %180 = load i32, i32* @RF_ALLOCATED, align 4
  %181 = call i32 @chipc_release_region(%struct.chipc_softc* %178, %struct.chipc_region* %179, i32 %180)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %237

182:                                              ; preds = %164
  %183 = load %struct.resource*, %struct.resource** %21, align 8
  %184 = load i32*, i32** %13, align 8
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @rman_set_rid(%struct.resource* %183, i32 %185)
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* @RF_ACTIVE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %216

191:                                              ; preds = %182
  %192 = load i64, i64* %11, align 8
  %193 = load i32, i32* %12, align 4
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.resource*, %struct.resource** %21, align 8
  %197 = call i32 @bus_activate_resource(i64 %192, i32 %193, i32 %195, %struct.resource* %196)
  store i32 %197, i32* %23, align 4
  %198 = load i32, i32* %23, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %191
  %201 = load i64, i64* %10, align 8
  %202 = load i32*, i32** %13, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load i64, i64* %11, align 8
  %206 = call i32 @device_get_nameunit(i64 %205)
  %207 = load i32, i32* %23, align 4
  %208 = call i32 (i64, i8*, i32, i32, i32, ...) @device_printf(i64 %201, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %203, i32 %204, i32 %206, i32 %207)
  %209 = load %struct.chipc_softc*, %struct.chipc_softc** %18, align 8
  %210 = load %struct.chipc_region*, %struct.chipc_region** %19, align 8
  %211 = load i32, i32* @RF_ALLOCATED, align 4
  %212 = call i32 @chipc_release_region(%struct.chipc_softc* %209, %struct.chipc_region* %210, i32 %211)
  %213 = load %struct.resource*, %struct.resource** %21, align 8
  %214 = call i32 @rman_release_resource(%struct.resource* %213)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %237

215:                                              ; preds = %191
  br label %216

216:                                              ; preds = %215, %182
  %217 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %218 = icmp ne %struct.resource_list_entry* %217, null
  br i1 %218, label %219, label %235

219:                                              ; preds = %216
  %220 = load %struct.resource*, %struct.resource** %21, align 8
  %221 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %222 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %221, i32 0, i32 3
  store %struct.resource* %220, %struct.resource** %222, align 8
  %223 = load %struct.resource*, %struct.resource** %21, align 8
  %224 = call i64 @rman_get_start(%struct.resource* %223)
  %225 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %226 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %225, i32 0, i32 0
  store i64 %224, i64* %226, align 8
  %227 = load %struct.resource*, %struct.resource** %21, align 8
  %228 = call i64 @rman_get_end(%struct.resource* %227)
  %229 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %230 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  %231 = load %struct.resource*, %struct.resource** %21, align 8
  %232 = call i32 @rman_get_size(%struct.resource* %231)
  %233 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %234 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %219, %216
  %236 = load %struct.resource*, %struct.resource** %21, align 8
  store %struct.resource* %236, %struct.resource** %9, align 8
  br label %237

237:                                              ; preds = %235, %200, %177, %163, %146, %111, %81, %68, %41
  %238 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %238
}

declare dso_local %struct.chipc_softc* @device_get_softc(i64) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @RMAN_IS_DEFAULT_RANGE(i64, i64) #1

declare dso_local %struct.rman* @chipc_get_rman(%struct.chipc_softc*, i32) #1

declare dso_local %struct.resource* @bus_generic_rl_alloc_resource(i64, i64, i32, i32*, i64, i64, i64, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32, i32, i32) #1

declare dso_local i32 @BUS_GET_RESOURCE_LIST(i64, i64) #1

declare dso_local i32 @device_printf(i64, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @device_get_nameunit(i64) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i64 @ulmax(i64, i32) #1

declare dso_local %struct.chipc_region* @chipc_find_region(%struct.chipc_softc*, i64, i64) #1

declare dso_local i32 @chipc_retain_region(%struct.chipc_softc*, %struct.chipc_region*, i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i64, i64, i64, i32, i64) #1

declare dso_local i32 @chipc_release_region(%struct.chipc_softc*, %struct.chipc_region*, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i32 @bus_activate_resource(i64, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
