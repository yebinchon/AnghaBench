; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3bus.c_ps3bus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3bus.c_ps3bus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ps3bus_devinfo = type { i32 }
%struct.ps3bus_softc = type { %struct.rman, %struct.rman }
%struct.rman = type { i32 }
%struct.resource_list_entry = type { i64, i64, i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no rle for %s memory %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unknown resource request from %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"failed to reserve resource %#lx - %#lx (%#lx) for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to activate resource for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i64, i64, i64, i32)* @ps3bus_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @ps3bus_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ps3bus_devinfo*, align 8
  %19 = alloca %struct.ps3bus_softc*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.resource*, align 8
  %22 = alloca %struct.rman*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.resource_list_entry*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.ps3bus_softc* @device_get_softc(i32 %27)
  store %struct.ps3bus_softc* %28, %struct.ps3bus_softc** %19, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.ps3bus_devinfo* @device_get_ivars(i32 %29)
  store %struct.ps3bus_devinfo* %30, %struct.ps3bus_devinfo** %18, align 8
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %17, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %133 [
    i32 128, label %39
    i32 129, label %106
  ]

39:                                               ; preds = %8
  %40 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %18, align 8
  %41 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %40, i32 0, i32 0
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.resource_list_entry* @resource_list_find(i32* %41, i32 128, i32 %43)
  store %struct.resource_list_entry* %44, %struct.resource_list_entry** %26, align 8
  %45 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %46 = icmp eq %struct.resource_list_entry* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @device_get_nameunit(i32 %49)
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %182

54:                                               ; preds = %39
  %55 = load i64, i64* %14, align 8
  %56 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %57 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %62 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %23, align 8
  br label %77

64:                                               ; preds = %54
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %67 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %72 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %23, align 8
  br label %76

74:                                               ; preds = %64
  %75 = load i64, i64* %14, align 8
  store i64 %75, i64* %23, align 8
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %60
  %78 = load i64, i64* %15, align 8
  %79 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %80 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %85 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %24, align 8
  br label %100

87:                                               ; preds = %77
  %88 = load i64, i64* %15, align 8
  %89 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %90 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %95 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %24, align 8
  br label %99

97:                                               ; preds = %87
  %98 = load i64, i64* %15, align 8
  store i64 %98, i64* %24, align 8
  br label %99

99:                                               ; preds = %97, %93
  br label %100

100:                                              ; preds = %99, %83
  %101 = load i64, i64* %24, align 8
  %102 = load i64, i64* %23, align 8
  %103 = sub nsw i64 %101, %102
  store i64 %103, i64* %25, align 8
  %104 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %19, align 8
  %105 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %104, i32 0, i32 1
  store %struct.rman* %105, %struct.rman** %22, align 8
  br label %138

106:                                              ; preds = %8
  %107 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %18, align 8
  %108 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %107, i32 0, i32 0
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.resource_list_entry* @resource_list_find(i32* %108, i32 129, i32 %110)
  store %struct.resource_list_entry* %111, %struct.resource_list_entry** %26, align 8
  %112 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %19, align 8
  %113 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %112, i32 0, i32 0
  store %struct.rman* %113, %struct.rman** %22, align 8
  %114 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %115 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %23, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %119 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @ulmax(i64 %117, i32 %120)
  store i64 %121, i64* %25, align 8
  %122 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %123 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %126 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %25, align 8
  %129 = add nsw i64 %127, %128
  %130 = sub nsw i64 %129, 1
  %131 = trunc i64 %130 to i32
  %132 = call i64 @ulmax(i64 %124, i32 %131)
  store i64 %132, i64* %24, align 8
  br label %138

133:                                              ; preds = %8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @device_get_nameunit(i32 %135)
  %137 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %182

138:                                              ; preds = %106, %100
  %139 = load %struct.rman*, %struct.rman** %22, align 8
  %140 = load i64, i64* %23, align 8
  %141 = load i64, i64* %24, align 8
  %142 = load i64, i64* %25, align 8
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call %struct.resource* @rman_reserve_resource(%struct.rman* %139, i64 %140, i64 %141, i64 %142, i32 %143, i32 %144)
  store %struct.resource* %145, %struct.resource** %21, align 8
  %146 = load %struct.resource*, %struct.resource** %21, align 8
  %147 = icmp eq %struct.resource* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %138
  %149 = load i32, i32* %10, align 4
  %150 = load i64, i64* %23, align 8
  %151 = trunc i64 %150 to i32
  %152 = load i64, i64* %24, align 8
  %153 = load i64, i64* %25, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @device_get_nameunit(i32 %154)
  %156 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %149, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %151, i64 %152, i64 %153, i32 %155)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %182

157:                                              ; preds = %138
  %158 = load %struct.resource*, %struct.resource** %21, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @rman_set_rid(%struct.resource* %158, i32 %160)
  %162 = load i32, i32* %20, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %157
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.resource*, %struct.resource** %21, align 8
  %170 = call i64 @bus_activate_resource(i32 %165, i32 %166, i32 %168, %struct.resource* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %164
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @device_get_nameunit(i32 %174)
  %176 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %173, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  %177 = load %struct.resource*, %struct.resource** %21, align 8
  %178 = call i32 @rman_release_resource(%struct.resource* %177)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %182

179:                                              ; preds = %164
  br label %180

180:                                              ; preds = %179, %157
  %181 = load %struct.resource*, %struct.resource** %21, align 8
  store %struct.resource* %181, %struct.resource** %9, align 8
  br label %182

182:                                              ; preds = %180, %172, %148, %133, %47
  %183 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %183
}

declare dso_local %struct.ps3bus_softc* @device_get_softc(i32) #1

declare dso_local %struct.ps3bus_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @ulmax(i64, i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
