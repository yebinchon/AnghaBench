; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.chipc_softc = type { i32 }
%struct.chipc_region = type { i32 }
%struct.rman = type { i32 }
%struct.resource_list_entry = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @chipc_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.chipc_softc*, align 8
  %13 = alloca %struct.chipc_region*, align 8
  %14 = alloca %struct.rman*, align 8
  %15 = alloca %struct.resource_list_entry*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.chipc_softc* @device_get_softc(i32 %17)
  store %struct.chipc_softc* %18, %struct.chipc_softc** %12, align 8
  %19 = load %struct.chipc_softc*, %struct.chipc_softc** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.rman* @chipc_get_rman(%struct.chipc_softc* %19, i32 %20)
  store %struct.rman* %21, %struct.rman** %14, align 8
  %22 = load %struct.rman*, %struct.rman** %14, align 8
  %23 = icmp eq %struct.rman* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %5
  %25 = load %struct.resource*, %struct.resource** %11, align 8
  %26 = load %struct.rman*, %struct.rman** %14, align 8
  %27 = call i32 @rman_is_region_manager(%struct.resource* %25, %struct.rman* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24, %5
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.resource*, %struct.resource** %11, align 8
  %35 = call i32 @bus_generic_rl_release_resource(i32 %30, i32 %31, i32 %32, i32 %33, %struct.resource* %34)
  store i32 %35, i32* %6, align 4
  br label %88

36:                                               ; preds = %24
  %37 = load %struct.chipc_softc*, %struct.chipc_softc** %12, align 8
  %38 = load %struct.resource*, %struct.resource** %11, align 8
  %39 = call i32 @rman_get_start(%struct.resource* %38)
  %40 = load %struct.resource*, %struct.resource** %11, align 8
  %41 = call i32 @rman_get_end(%struct.resource* %40)
  %42 = call %struct.chipc_region* @chipc_find_region(%struct.chipc_softc* %37, i32 %39, i32 %41)
  store %struct.chipc_region* %42, %struct.chipc_region** %13, align 8
  %43 = load %struct.chipc_region*, %struct.chipc_region** %13, align 8
  %44 = icmp eq %struct.chipc_region* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %6, align 4
  br label %88

47:                                               ; preds = %36
  %48 = load %struct.resource*, %struct.resource** %11, align 8
  %49 = call i32 @rman_get_flags(%struct.resource* %48)
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.resource*, %struct.resource** %11, align 8
  %59 = call i32 @BUS_DEACTIVATE_RESOURCE(i32 %54, i32 %55, i32 %56, i32 %57, %struct.resource* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %6, align 4
  br label %88

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %47
  %66 = load %struct.resource*, %struct.resource** %11, align 8
  %67 = call i32 @rman_release_resource(%struct.resource* %66)
  store i32 %67, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %6, align 4
  br label %88

71:                                               ; preds = %65
  %72 = load %struct.chipc_softc*, %struct.chipc_softc** %12, align 8
  %73 = load %struct.chipc_region*, %struct.chipc_region** %13, align 8
  %74 = load i32, i32* @RF_ALLOCATED, align 4
  %75 = call i32 @chipc_release_region(%struct.chipc_softc* %72, %struct.chipc_region* %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @BUS_GET_RESOURCE_LIST(i32 %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call %struct.resource_list_entry* @resource_list_find(i32 %78, i32 %79, i32 %80)
  store %struct.resource_list_entry* %81, %struct.resource_list_entry** %15, align 8
  %82 = load %struct.resource_list_entry*, %struct.resource_list_entry** %15, align 8
  %83 = icmp ne %struct.resource_list_entry* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load %struct.resource_list_entry*, %struct.resource_list_entry** %15, align 8
  %86 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %84, %71
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %69, %62, %45, %29
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.chipc_softc* @device_get_softc(i32) #1

declare dso_local %struct.rman* @chipc_get_rman(%struct.chipc_softc*, i32) #1

declare dso_local i32 @rman_is_region_manager(%struct.resource*, %struct.rman*) #1

declare dso_local i32 @bus_generic_rl_release_resource(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local %struct.chipc_region* @chipc_find_region(%struct.chipc_softc*, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @BUS_DEACTIVATE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

declare dso_local i32 @chipc_release_region(%struct.chipc_softc*, %struct.chipc_region*, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32, i32, i32) #1

declare dso_local i32 @BUS_GET_RESOURCE_LIST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
