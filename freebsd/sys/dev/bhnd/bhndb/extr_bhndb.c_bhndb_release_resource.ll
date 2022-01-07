; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.bhndb_softc = type { i32 }
%struct.resource_list_entry = type { i32* }

@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @bhndb_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.bhndb_softc*, align 8
  %13 = alloca %struct.resource_list_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.bhndb_softc* @device_get_softc(i32 %16)
  store %struct.bhndb_softc* %17, %struct.bhndb_softc** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load %struct.bhndb_softc*, %struct.bhndb_softc** %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32* @bhndb_get_rman(%struct.bhndb_softc* %23, i32 %24, i32 %25)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %5
  %29 = load %struct.bhndb_softc*, %struct.bhndb_softc** %12, align 8
  %30 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_get_parent(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.resource*, %struct.resource** %11, align 8
  %37 = call i32 @BUS_RELEASE_RESOURCE(i32 %32, i32 %33, i32 %34, i32 %35, %struct.resource* %36)
  store i32 %37, i32* %6, align 4
  br label %79

38:                                               ; preds = %5
  %39 = load %struct.resource*, %struct.resource** %11, align 8
  %40 = call i32 @rman_get_flags(%struct.resource* %39)
  %41 = load i32, i32* @RF_ACTIVE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.resource*, %struct.resource** %11, align 8
  %50 = call i32 @BUS_DEACTIVATE_RESOURCE(i32 %45, i32 %46, i32 %47, i32 %48, %struct.resource* %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %6, align 4
  br label %79

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.resource*, %struct.resource** %11, align 8
  %58 = call i32 @rman_release_resource(%struct.resource* %57)
  store i32 %58, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %6, align 4
  br label %79

62:                                               ; preds = %56
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @BUS_GET_RESOURCE_LIST(i32 %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call %struct.resource_list_entry* @resource_list_find(i32 %68, i32 %69, i32 %70)
  store %struct.resource_list_entry* %71, %struct.resource_list_entry** %13, align 8
  %72 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %73 = icmp ne %struct.resource_list_entry* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %76 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %65
  br label %78

78:                                               ; preds = %77, %62
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %60, %53, %28
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.bhndb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32* @bhndb_get_rman(%struct.bhndb_softc*, i32, i32) #1

declare dso_local i32 @BUS_RELEASE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @BUS_DEACTIVATE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32, i32, i32) #1

declare dso_local i32 @BUS_GET_RESOURCE_LIST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
