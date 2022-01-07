; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_lbc_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_lbc_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.lbc_softc = type { %struct.rman }
%struct.rman = type { i32 }
%struct.lbc_devinfo = type { i32, i32 }
%struct.resource_list_entry = type { i64, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"no default resources for rid = %d, type = %d\0A\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to reserve resource %#jx - %#jx (%#jx)\0A\00", align 1
@bs_be_tag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"resource activation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i64, i64, i64, i32)* @lbc_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @lbc_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.lbc_softc*, align 8
  %19 = alloca %struct.lbc_devinfo*, align 8
  %20 = alloca %struct.resource_list_entry*, align 8
  %21 = alloca %struct.resource*, align 8
  %22 = alloca %struct.rman*, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @RMAN_IS_DEFAULT_RANGE(i64 %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %138

29:                                               ; preds = %8
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.lbc_softc* @device_get_softc(i32 %30)
  store %struct.lbc_softc* %31, %struct.lbc_softc** %18, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @SYS_RES_IRQ, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load i32, i32* %17, align 4
  %43 = call %struct.resource* @bus_alloc_resource(i32 %36, i32 %37, i32* %38, i64 %39, i64 %40, i64 %41, i32 %42)
  store %struct.resource* %43, %struct.resource** %9, align 8
  br label %138

44:                                               ; preds = %29
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.lbc_devinfo* @device_get_ivars(i32 %45)
  store %struct.lbc_devinfo* %46, %struct.lbc_devinfo** %19, align 8
  %47 = icmp eq %struct.lbc_devinfo* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %138

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @SYS_RES_IOPORT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %19, align 8
  %57 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %56, i32 0, i32 0
  store i32* %57, i32** %13, align 8
  %58 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %19, align 8
  %59 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %58, i32 0, i32 1
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.resource_list_entry* @resource_list_find(i32* %59, i32 %60, i32 %62)
  store %struct.resource_list_entry* %63, %struct.resource_list_entry** %20, align 8
  %64 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %65 = icmp eq %struct.resource_list_entry* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %55
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %138

72:                                               ; preds = %55
  %73 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %74 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %14, align 8
  %76 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %77 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %16, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %16, align 8
  %81 = add nsw i64 %79, %80
  %82 = sub nsw i64 %81, 1
  store i64 %82, i64* %15, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call %struct.lbc_softc* @device_get_softc(i32 %83)
  store %struct.lbc_softc* %84, %struct.lbc_softc** %18, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @RF_ACTIVE, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %23, align 4
  %88 = load i32, i32* @RF_ACTIVE, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %17, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %17, align 4
  %92 = load %struct.lbc_softc*, %struct.lbc_softc** %18, align 8
  %93 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %92, i32 0, i32 0
  store %struct.rman* %93, %struct.rman** %22, align 8
  %94 = load %struct.rman*, %struct.rman** %22, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call %struct.resource* @rman_reserve_resource(%struct.rman* %94, i64 %95, i64 %96, i64 %97, i32 %98, i32 %99)
  store %struct.resource* %100, %struct.resource** %21, align 8
  %101 = load %struct.resource*, %struct.resource** %21, align 8
  %102 = icmp eq %struct.resource* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %72
  %104 = load i32, i32* %10, align 4
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %16, align 8
  %108 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %105, i64 %106, i64 %107)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %138

109:                                              ; preds = %72
  %110 = load %struct.resource*, %struct.resource** %21, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @rman_set_rid(%struct.resource* %110, i32 %112)
  %114 = load %struct.resource*, %struct.resource** %21, align 8
  %115 = call i32 @rman_set_bustag(%struct.resource* %114, i32* @bs_be_tag)
  %116 = load %struct.resource*, %struct.resource** %21, align 8
  %117 = load %struct.resource*, %struct.resource** %21, align 8
  %118 = call i32 @rman_get_start(%struct.resource* %117)
  %119 = call i32 @rman_set_bushandle(%struct.resource* %116, i32 %118)
  %120 = load i32, i32* %23, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %109
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32*, i32** %13, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.resource*, %struct.resource** %21, align 8
  %128 = call i64 @bus_activate_resource(i32 %123, i32 %124, i32 %126, %struct.resource* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load i32, i32* %11, align 4
  %132 = call i32 (i32, i8*, ...) @device_printf(i32 %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %133 = load %struct.resource*, %struct.resource** %21, align 8
  %134 = call i32 @rman_release_resource(%struct.resource* %133)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %138

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %109
  %137 = load %struct.resource*, %struct.resource** %21, align 8
  store %struct.resource* %137, %struct.resource** %9, align 8
  br label %138

138:                                              ; preds = %136, %130, %103, %66, %48, %35, %28
  %139 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %139
}

declare dso_local i32 @RMAN_IS_DEFAULT_RANGE(i64, i64) #1

declare dso_local %struct.lbc_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource(i32, i32, i32*, i64, i64, i64, i32) #1

declare dso_local %struct.lbc_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
