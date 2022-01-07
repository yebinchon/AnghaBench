; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_deactivate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_deactivate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.bhndb_dw_alloc = type { i32 }
%struct.bhndb_softc = type { i32, i32 }
%struct.rman = type { i32 }

@BHNDB_ADDRSPACE_BRIDGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported resource type %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @bhndb_deactivate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_deactivate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.bhndb_dw_alloc*, align 8
  %13 = alloca %struct.bhndb_softc*, align 8
  %14 = alloca %struct.rman*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.bhndb_softc* @device_get_softc(i32 %16)
  store %struct.bhndb_softc* %17, %struct.bhndb_softc** %13, align 8
  %18 = load %struct.bhndb_softc*, %struct.bhndb_softc** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.rman* @bhndb_get_rman(%struct.bhndb_softc* %18, i32 %19, i32 %20)
  store %struct.rman* %21, %struct.rman** %14, align 8
  %22 = load %struct.rman*, %struct.rman** %14, align 8
  %23 = icmp eq %struct.rman* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %5
  %25 = load %struct.bhndb_softc*, %struct.bhndb_softc** %13, align 8
  %26 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_get_parent(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.resource*, %struct.resource** %11, align 8
  %33 = call i32 @BUS_DEACTIVATE_RESOURCE(i32 %28, i32 %29, i32 %30, i32 %31, %struct.resource* %32)
  store i32 %33, i32* %6, align 4
  br label %75

34:                                               ; preds = %5
  %35 = load %struct.resource*, %struct.resource** %11, align 8
  %36 = call i32 @rman_deactivate_resource(%struct.resource* %35)
  store i32 %36, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  br label %75

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %70 [
    i32 129, label %42
    i32 128, label %43
  ]

42:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %75

43:                                               ; preds = %40
  %44 = load %struct.bhndb_softc*, %struct.bhndb_softc** %13, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @bhndb_get_addrspace(%struct.bhndb_softc* %44, i32 %45)
  %47 = load i32, i32* @BHNDB_ADDRSPACE_BRIDGED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %43
  %50 = load %struct.bhndb_softc*, %struct.bhndb_softc** %13, align 8
  %51 = call i32 @BHNDB_LOCK(%struct.bhndb_softc* %50)
  %52 = load %struct.bhndb_softc*, %struct.bhndb_softc** %13, align 8
  %53 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.resource*, %struct.resource** %11, align 8
  %56 = call %struct.bhndb_dw_alloc* @bhndb_dw_find_resource(i32 %54, %struct.resource* %55)
  store %struct.bhndb_dw_alloc* %56, %struct.bhndb_dw_alloc** %12, align 8
  %57 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %12, align 8
  %58 = icmp ne %struct.bhndb_dw_alloc* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.bhndb_softc*, %struct.bhndb_softc** %13, align 8
  %61 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %12, align 8
  %64 = load %struct.resource*, %struct.resource** %11, align 8
  %65 = call i32 @bhndb_dw_release(i32 %62, %struct.bhndb_dw_alloc* %63, %struct.resource* %64)
  br label %66

66:                                               ; preds = %59, %49
  %67 = load %struct.bhndb_softc*, %struct.bhndb_softc** %13, align 8
  %68 = call i32 @BHNDB_UNLOCK(%struct.bhndb_softc* %67)
  br label %69

69:                                               ; preds = %66, %43
  store i32 0, i32* %6, align 4
  br label %75

70:                                               ; preds = %40
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %70, %69, %42, %38, %24
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.bhndb_softc* @device_get_softc(i32) #1

declare dso_local %struct.rman* @bhndb_get_rman(%struct.bhndb_softc*, i32, i32) #1

declare dso_local i32 @BUS_DEACTIVATE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @rman_deactivate_resource(%struct.resource*) #1

declare dso_local i32 @bhndb_get_addrspace(%struct.bhndb_softc*, i32) #1

declare dso_local i32 @BHNDB_LOCK(%struct.bhndb_softc*) #1

declare dso_local %struct.bhndb_dw_alloc* @bhndb_dw_find_resource(i32, %struct.resource*) #1

declare dso_local i32 @bhndb_dw_release(i32, %struct.bhndb_dw_alloc*, %struct.resource*) #1

declare dso_local i32 @BHNDB_UNLOCK(%struct.bhndb_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
