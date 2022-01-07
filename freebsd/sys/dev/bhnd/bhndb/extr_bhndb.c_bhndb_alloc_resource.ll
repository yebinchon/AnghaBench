; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.bhndb_softc = type { i32 }
%struct.resource_list_entry = type { i32, i64, i64, %struct.resource* }
%struct.rman = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"default resource %#x type %d for child %s not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"resource entry %#x type %d for child %s is busy\0A\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"failed to activate entry %#x type %d for child %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i64, i64, i64, i32)* @bhndb_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @bhndb_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.bhndb_softc*, align 8
  %19 = alloca %struct.resource_list_entry*, align 8
  %20 = alloca %struct.resource*, align 8
  %21 = alloca %struct.rman*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.bhndb_softc* @device_get_softc(i32 %25)
  store %struct.bhndb_softc* %26, %struct.bhndb_softc** %18, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @device_get_parent(i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %23, align 4
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i32 @RMAN_IS_DEFAULT_RANGE(i64 %32, i64 %33)
  store i32 %34, i32* %24, align 4
  store %struct.resource_list_entry* null, %struct.resource_list_entry** %19, align 8
  %35 = load %struct.bhndb_softc*, %struct.bhndb_softc** %18, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.rman* @bhndb_get_rman(%struct.bhndb_softc* %35, i32 %36, i32 %37)
  store %struct.rman* %38, %struct.rman** %21, align 8
  %39 = load %struct.rman*, %struct.rman** %21, align 8
  %40 = icmp eq %struct.rman* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %8
  %42 = load %struct.bhndb_softc*, %struct.bhndb_softc** %18, align 8
  %43 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_get_parent(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %45, i32 %46, i32 %47, i32* %48, i64 %49, i64 %50, i64 %51, i32 %52)
  store %struct.resource* %53, %struct.resource** %9, align 8
  br label %180

54:                                               ; preds = %8
  %55 = load i32, i32* %23, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %103, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %24, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @BUS_GET_RESOURCE_LIST(i32 %61, i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.resource_list_entry* @resource_list_find(i32 %63, i32 %64, i32 %66)
  store %struct.resource_list_entry* %67, %struct.resource_list_entry** %19, align 8
  %68 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %69 = icmp eq %struct.resource_list_entry* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @device_get_nameunit(i32 %75)
  %77 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i32 %76)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %180

78:                                               ; preds = %60
  %79 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %80 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %79, i32 0, i32 3
  %81 = load %struct.resource*, %struct.resource** %80, align 8
  %82 = icmp ne %struct.resource* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @device_get_nameunit(i32 %88)
  %90 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i32 %89)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %180

91:                                               ; preds = %78
  %92 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %93 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %14, align 8
  %95 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %96 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %100 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @ulmax(i64 %98, i32 %101)
  store i64 %102, i64* %16, align 8
  br label %103

103:                                              ; preds = %91, %57, %54
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* %15, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* %14, align 8
  %111 = sub nsw i64 %109, %110
  %112 = add nsw i64 %111, 1
  %113 = icmp sgt i64 %108, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107, %103
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %180

115:                                              ; preds = %107
  %116 = load %struct.rman*, %struct.rman** %21, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load i64, i64* %16, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* @RF_ACTIVE, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = load i32, i32* %11, align 4
  %125 = call %struct.resource* @rman_reserve_resource(%struct.rman* %116, i64 %117, i64 %118, i64 %119, i32 %123, i32 %124)
  store %struct.resource* %125, %struct.resource** %20, align 8
  %126 = load %struct.resource*, %struct.resource** %20, align 8
  %127 = icmp eq %struct.resource* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %180

129:                                              ; preds = %115
  %130 = load %struct.resource*, %struct.resource** %20, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @rman_set_rid(%struct.resource* %130, i32 %132)
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @RF_ACTIVE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %129
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.resource*, %struct.resource** %20, align 8
  %144 = call i32 @bus_activate_resource(i32 %139, i32 %140, i32 %142, %struct.resource* %143)
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %22, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %138
  %148 = load i32, i32* %10, align 4
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @device_get_nameunit(i32 %152)
  %154 = load i32, i32* %22, align 4
  %155 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %148, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %150, i32 %151, i32 %153, i32 %154)
  %156 = load %struct.resource*, %struct.resource** %20, align 8
  %157 = call i32 @rman_release_resource(%struct.resource* %156)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %180

158:                                              ; preds = %138
  br label %159

159:                                              ; preds = %158, %129
  %160 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %161 = icmp ne %struct.resource_list_entry* %160, null
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load %struct.resource*, %struct.resource** %20, align 8
  %164 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %165 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %164, i32 0, i32 3
  store %struct.resource* %163, %struct.resource** %165, align 8
  %166 = load %struct.resource*, %struct.resource** %20, align 8
  %167 = call i64 @rman_get_start(%struct.resource* %166)
  %168 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %169 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load %struct.resource*, %struct.resource** %20, align 8
  %171 = call i64 @rman_get_end(%struct.resource* %170)
  %172 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %173 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  %174 = load %struct.resource*, %struct.resource** %20, align 8
  %175 = call i32 @rman_get_size(%struct.resource* %174)
  %176 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %177 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %162, %159
  %179 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %179, %struct.resource** %9, align 8
  br label %180

180:                                              ; preds = %178, %147, %128, %114, %83, %70, %41
  %181 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %181
}

declare dso_local %struct.bhndb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @RMAN_IS_DEFAULT_RANGE(i64, i64) #1

declare dso_local %struct.rman* @bhndb_get_rman(%struct.bhndb_softc*, i32, i32) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i64, i64, i64, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32, i32, i32) #1

declare dso_local i32 @BUS_GET_RESOURCE_LIST(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @ulmax(i64, i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i32 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

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
