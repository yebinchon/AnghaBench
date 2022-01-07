; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.unin_chip_softc = type { %struct.rman }
%struct.rman = type { i32 }
%struct.unin_chip_devinfo = type { i32, i32, i8** }
%struct.resource_list_entry = type { i8*, i8* }

@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no rle for %s memory %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s has more than 6 interrupts\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unknown resource request from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"failed to reserve resource %#lx - %#lx (%#lx) for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to activate resource for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i8*, i8*, i8*, i32)* @unin_chip_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @unin_chip_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.unin_chip_softc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.resource*, align 8
  %21 = alloca %struct.rman*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.unin_chip_devinfo*, align 8
  %26 = alloca %struct.resource_list_entry*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.unin_chip_softc* @device_get_softc(i32 %27)
  store %struct.unin_chip_softc* %28, %struct.unin_chip_softc** %18, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.unin_chip_devinfo* @device_get_ivars(i32 %29)
  store %struct.unin_chip_devinfo* %30, %struct.unin_chip_devinfo** %25, align 8
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %17, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %187 [
    i32 128, label %39
    i32 130, label %39
    i32 129, label %117
  ]

39:                                               ; preds = %8, %8
  %40 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %25, align 8
  %41 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %40, i32 0, i32 1
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.resource_list_entry* @resource_list_find(i32* %41, i32 128, i32 %43)
  store %struct.resource_list_entry* %44, %struct.resource_list_entry** %26, align 8
  %45 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %46 = icmp eq %struct.resource_list_entry* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @device_get_nameunit(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %54)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %239

56:                                               ; preds = %39
  %57 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %58 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr i8, i8* %59, i64 -1
  %61 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %62 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %65 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ult i8* %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %70 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %22, align 8
  br label %85

72:                                               ; preds = %56
  %73 = load i8*, i8** %14, align 8
  %74 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %75 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ugt i8* %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %80 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %22, align 8
  br label %84

82:                                               ; preds = %72
  %83 = load i8*, i8** %14, align 8
  store i8* %83, i8** %22, align 8
  br label %84

84:                                               ; preds = %82, %78
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i8*, i8** %15, align 8
  %87 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %88 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ult i8* %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %93 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %23, align 8
  br label %108

95:                                               ; preds = %85
  %96 = load i8*, i8** %15, align 8
  %97 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %98 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ugt i8* %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %103 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %23, align 8
  br label %107

105:                                              ; preds = %95
  %106 = load i8*, i8** %15, align 8
  store i8* %106, i8** %23, align 8
  br label %107

107:                                              ; preds = %105, %101
  br label %108

108:                                              ; preds = %107, %91
  %109 = load i8*, i8** %23, align 8
  %110 = load i8*, i8** %22, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %24, align 8
  %115 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %18, align 8
  %116 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %115, i32 0, i32 0
  store %struct.rman* %116, %struct.rman** %21, align 8
  br label %194

117:                                              ; preds = %8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @device_get_parent(i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @device_get_parent(i32 %123)
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = load i8*, i8** %16, align 8
  %131 = load i32, i32* %17, align 4
  %132 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %124, i32 %125, i32 %126, i32* %127, i8* %128, i8* %129, i8* %130, i32 %131)
  store %struct.resource* %132, %struct.resource** %9, align 8
  br label %239

133:                                              ; preds = %117
  %134 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %25, align 8
  %135 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %134, i32 0, i32 1
  %136 = load i32*, i32** %13, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call %struct.resource_list_entry* @resource_list_find(i32* %135, i32 129, i32 %137)
  store %struct.resource_list_entry* %138, %struct.resource_list_entry** %26, align 8
  %139 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %140 = icmp eq %struct.resource_list_entry* %139, null
  br i1 %140, label %141, label %175

141:                                              ; preds = %133
  %142 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %25, align 8
  %143 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sge i32 %144, 6
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @device_get_nameunit(i32 %148)
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %151)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %239

153:                                              ; preds = %141
  %154 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %25, align 8
  %155 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %154, i32 0, i32 1
  %156 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %25, align 8
  %157 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i8*, i8** %14, align 8
  %160 = load i8*, i8** %14, align 8
  %161 = call i32 @resource_list_add(i32* %155, i32 129, i32 %158, i8* %159, i8* %160, i32 1)
  %162 = load i8*, i8** %14, align 8
  %163 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %25, align 8
  %164 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %163, i32 0, i32 2
  %165 = load i8**, i8*** %164, align 8
  %166 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %25, align 8
  %167 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %165, i64 %169
  store i8* %162, i8** %170, align 8
  %171 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %25, align 8
  %172 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %153, %133
  %176 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %25, align 8
  %177 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %176, i32 0, i32 1
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32*, i32** %13, align 8
  %182 = load i8*, i8** %14, align 8
  %183 = load i8*, i8** %15, align 8
  %184 = load i8*, i8** %16, align 8
  %185 = load i32, i32* %17, align 4
  %186 = call %struct.resource* @resource_list_alloc(i32* %177, i32 %178, i32 %179, i32 %180, i32* %181, i8* %182, i8* %183, i8* %184, i32 %185)
  store %struct.resource* %186, %struct.resource** %9, align 8
  br label %239

187:                                              ; preds = %8
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @device_get_nameunit(i32 %189)
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %192)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %239

194:                                              ; preds = %108
  %195 = load %struct.rman*, %struct.rman** %21, align 8
  %196 = load i8*, i8** %22, align 8
  %197 = load i8*, i8** %23, align 8
  %198 = load i8*, i8** %24, align 8
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %11, align 4
  %201 = call %struct.resource* @rman_reserve_resource(%struct.rman* %195, i8* %196, i8* %197, i8* %198, i32 %199, i32 %200)
  store %struct.resource* %201, %struct.resource** %20, align 8
  %202 = load %struct.resource*, %struct.resource** %20, align 8
  %203 = icmp eq %struct.resource* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %194
  %205 = load i32, i32* %10, align 4
  %206 = load i8*, i8** %22, align 8
  %207 = load i8*, i8** %23, align 8
  %208 = load i8*, i8** %24, align 8
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @device_get_nameunit(i32 %209)
  %211 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %205, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %206, i8* %207, i8* %208, i32 %210)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %239

212:                                              ; preds = %194
  %213 = load %struct.resource*, %struct.resource** %20, align 8
  %214 = load i32*, i32** %13, align 8
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @rman_set_rid(%struct.resource* %213, i32 %215)
  %217 = load i32, i32* %19, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %212
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %12, align 4
  %222 = load i32*, i32** %13, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.resource*, %struct.resource** %20, align 8
  %225 = call i64 @bus_activate_resource(i32 %220, i32 %221, i32 %223, %struct.resource* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %219
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* %11, align 4
  %230 = call i32 @device_get_nameunit(i32 %229)
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to i8*
  %233 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %228, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %232)
  %234 = load %struct.resource*, %struct.resource** %20, align 8
  %235 = call i32 @rman_release_resource(%struct.resource* %234)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %239

236:                                              ; preds = %219
  br label %237

237:                                              ; preds = %236, %212
  %238 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %238, %struct.resource** %9, align 8
  br label %239

239:                                              ; preds = %237, %227, %204, %187, %175, %146, %122, %47
  %240 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %240
}

declare dso_local %struct.unin_chip_softc* @device_get_softc(i32) #1

declare dso_local %struct.unin_chip_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i8*, i8*, i32) #1

declare dso_local %struct.resource* @resource_list_alloc(i32*, i32, i32, i32, i32*, i8*, i8*, i8*, i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
